arm-linux-gnueabihf-as -EB -o tmp.elf recv.s && arm-linux-gnueabihf-objcopy -j .text -Obinary tmp.elf recv.bin && rm tmp.elf