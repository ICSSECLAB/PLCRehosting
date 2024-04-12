arm-none-eabi-as -o pre_bootloader.elf pre_bootloader.s
arm-none-eabi-objcopy -O binary -j .text --reverse-bytes=4 pre_bootloader.elf pre_bootloader.bin
