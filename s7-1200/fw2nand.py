def modify_nand(bin_file_path, nand_file_path, output_file_path, start_page):
    read_size = 0x800
    skip_size = 0x80

    with open(bin_file_path, 'rb') as bin_file, open(nand_file_path, 'rb+') as nand_file:
        nand_file.seek(start_page*(read_size+skip_size), 1)
        while True:
            bin_data = bin_file.read(read_size)
            if not bin_data:
                break
            
            nand_file.write(bin_data)
            nand_file.seek(skip_size, 1)

    
    with open(nand_file_path, 'rb') as nand_file, open(output_file_path, 'wb') as output_file:
        output_file.write(nand_file.read())


bin_file_path = '../MMIOFinder/firmware_1200/6ES7214-1HG40-0XB0/output/6ES7 214-1HG40-0XB0 V04.05.02.bin'
nand_file_path = './bin/nandflashtmp.bin'
output_file_path = './bin/nandflash.bin'

print(f"[*] building nand flash image using firmware {bin_file_path}")


# s7-200 firmware start at page 0x500
# s7-1200 firmware start at page 0x0
modify_nand(bin_file_path, nand_file_path, output_file_path, 0x0)
