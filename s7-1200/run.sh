#!/bin/bash

python3 fw2nand.py

# echo "[+] build pre-bootloader"
cd ./pre_bootloader
./build.sh
cd ..

# echo "[+] build pre-firmware"
cd ./pre_firmware
./build.sh
cd ..

# echo "[+] build Agent"
cd ../SiemensS7-Bootloader/payloads/agent_server/
make

cd ../stager
./build.sh

cd ../lib
./build_recv.sh

# echo "[+] build ISR Agent"
cd ../interrupt_handler
make

# echo "[+] build ISR prologue"
cd ../ISR_prologue
./build.sh
cd ../../

# echo "[+] initiate Agent"
sh client.sh hello_loop
cd ../s7-1200

echo "[+] build qemu"
cd ../qemu/build
./build.sh
cd ../../s7-1200

echo "[+] lunch qemu"
../qemu/build/aarch64_be-softmmu/qemu-system-aarch64_be \
-M arm-generic-fdt \
--accel tcg,thread=multi \
-device loader,file=./pre_bootloader/pre_bootloader.bin,addr=0x20000,cpu-num=4 \
-device loader,file=./pre_firmware/pre_firmware.bin,addr=0x21000 \
-device loader,file=./bin/bootloader_4.2.3.bin,addr=0x0 \
-device loader,addr=0xff5e023c,data=0x80088fde,data-len=4 \
-device loader,addr=0xff9a0000,data=0x80000218,data-len=4 \
-hw-dtb ../qemu-devicetrees/LATEST/SINGLE_ARCH/board-zynqmp-zcu1285.dtb \
-m 4G -d guest_errors,in_asm,int,nochain \
-nographic -singlestep \
-monitor telnet:localhost:8080,server,nowait \
-s -S > log.txt 2>&1

# -m 4G -d guest_errors,in_asm,int,nochain \


PID=$(ps aux | grep "qemu-system" | grep -v grep | awk '{print $2}')

if [ -z "$PID" ]; then
  exit 1
fi

kill -9 "$PID"
