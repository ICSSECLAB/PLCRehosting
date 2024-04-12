arm-none-eabi-as -o pre_firmware.elf pre_firmware.s
arm-none-eabi-objcopy -O binary -j .text --reverse-bytes=4 pre_firmware.elf pre_firmware.bin
