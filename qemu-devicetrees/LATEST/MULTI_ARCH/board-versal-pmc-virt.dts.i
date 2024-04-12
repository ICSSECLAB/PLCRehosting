# 1 "board-versal-pmc-virt.dts"
# 1 "<built-in>" 1
# 1 "board-versal-pmc-virt.dts" 2
# 30 "board-versal-pmc-virt.dts"
/dts-v1/;


# 1 "./versal-npi-memmap.dtsh" 1
# 34 "board-versal-pmc-virt.dts" 2
# 51 "board-versal-pmc-virt.dts"
# 1 "./versal.dtsh" 1
# 30 "./versal.dtsh"
# 1 "include/utils.dtsh" 1
# 31 "./versal.dtsh" 2
# 1 "include/loader.dtsh" 1
# 32 "./versal.dtsh" 2
# 1 "./versal-irqs.dtsh" 1
# 35 "./versal-irqs.dtsh"
# 1 "./versal-ps-irqs.dtsh" 1
# 36 "./versal-irqs.dtsh" 2
# 33 "./versal.dtsh" 2
# 1 "./versal-memmap.dtsh" 1
# 154 "./versal-memmap.dtsh"
# 1 "./versal-top-memmap.dtsh" 1
# 155 "./versal-memmap.dtsh" 2
# 1 "./versal-fpd-memmap.dtsh" 1
# 156 "./versal-memmap.dtsh" 2
# 1 "./versal-lpd-memmap.dtsh" 1
# 107 "./versal-lpd-memmap.dtsh"
# 1 "./versal-xram-memmap.dtsh" 1
# 108 "./versal-lpd-memmap.dtsh" 2
# 157 "./versal-memmap.dtsh" 2
# 1 "./versal-pmc-memmap.dtsh" 1
# 158 "./versal-memmap.dtsh" 2
# 1 "./versal-iou-memmap.dtsh" 1
# 159 "./versal-memmap.dtsh" 2
# 1 "./versal-psm-memmap.dtsh" 1
# 160 "./versal-memmap.dtsh" 2
# 1 "./versal-gic-memmap.dtsh" 1
# 161 "./versal-memmap.dtsh" 2
# 174 "./versal-memmap.dtsh"
# 1 "./versal-cpm-memmap.dtsh" 1
# 175 "./versal-memmap.dtsh" 2
# 34 "./versal.dtsh" 2
# 1 "./versal-resetmap.dtsh" 1
# 35 "./versal.dtsh" 2
# 1 "./versal-powermap.dtsh" 1
# 36 "./versal.dtsh" 2
# 1 "./versal-wiremap.dtsh" 1
# 37 "./versal.dtsh" 2
# 1 "./versal-smid.dtsh" 1
# 38 "./versal.dtsh" 2
# 52 "board-versal-pmc-virt.dts" 2
# 108 "board-versal-pmc-virt.dts"
# 1 "./versal-icnt.dtsi" 1
# 30 "./versal-icnt.dtsi"
# 1 "include/smmuv2.dtsh" 1
# 31 "./versal-icnt.dtsi" 2
# 1 "include/interconnect.dtsh" 1
# 32 "./versal-icnt.dtsi" 2

/ {
 #address-cells = <2>;
 #size-cells = <2>;
 #priority-cells = <1>;

 pmc_ppu0_memattr: pmc_ppu0_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x246>; };
 pmc_ppu1_memattr: pmc_ppu1_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x247>; };
 psm_memattr: psm_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x238>; };

 ddrmc_ub0_memattr: ddrmc_ub0_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x0>; };
 ddrmc_ub1_memattr: ddrmc_ub1_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x0>; };
 pmc_dma0_memattr: pmc_dma0_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x248>; };
 pmc_dma1_memattr: pmc_dma1_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x24b>; };
 pmc_qspi_dma_memattr_smid: pmc_qspi_dma_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x244>; };
 pmc_qspi_dma_w_memattr_smid: pmc_qspi_dma_w_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x244>; };


 apu0_s_memattr: apu0_s_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x260>; };
 apu0_ns_memattr: apu0_ns_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x260>; };
 apu1_s_memattr: apu1_s_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x261>; };
 apu1_ns_memattr: apu1_ns_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x261>; };


 rpu0_s_memattr: rpu0_s_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x200>; };
 rpu1_s_memattr: rpu1_s_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x204>; };

 gem0_memattr_smid: gem0_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x234>; };
 gem0_w_memattr_smid: gem0_w_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x234>; };
 gem1_memattr_smid: gem1_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x235>; };
 gem1_w_memattr_smid: gem1_w_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x235>; };
 ospi_dma_memattr_smid: ospi_dma_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x245>; };
 ospi_dma_w_memattr_smid: ospi_dma_w_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x245>; };
 sd0_memattr_smid: sd0_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x242>; };
 sd0_w_memattr_smid: sd0_w_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x242>; };
 sd1_memattr_smid: sd1_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x243>; };
 sd1_w_memattr_smid: sd1_w_ma_smid { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; requester-id = <0x243>; };
 usb0_memattr: usb0_ma { doc-ignore = <1>; compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x230>; };

 amba_root: amba_root@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;

  #interrupt-cells = <1>;
  interrupt-map-mask = <0x0 0x0 0xffff>;
# 86 "./versal-icnt.dtsi"
  interrupt-map =
# 99 "./versal-icnt.dtsi"
# 1 "./versal-ps-irq-map.dtsh" 1
# 27 "./versal-ps-irq-map.dtsh"
<0 0 0 &pmc_gic_proxy 0 0 4>,
<0 0 1 &pmc_gic_proxy 0 1 4>,
<0 0 2 &pmc_gic_proxy 0 2 4>,
<0 0 3 &pmc_gic_proxy 0 3 4>,
<0 0 4 &pmc_gic_proxy 0 4 4>,
<0 0 5 &pmc_gic_proxy 0 5 4>,
<0 0 6 &pmc_gic_proxy 0 6 4>,
<0 0 7 &pmc_gic_proxy 0 7 4>,
<0 0 8 &pmc_gic_proxy 0 8 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 9 &pmc_gic_proxy 0 9 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 10 &pmc_gic_proxy 0 10 4>,
<0 0 11 &pmc_gic_proxy 0 11 4>,
<0 0 12 &pmc_gic_proxy 0 12 4>,
<0 0 13 &pmc_gic_proxy 0 13 4>,
<0 0 14 &pmc_gic_proxy 0 14 4>,
<0 0 15 &pmc_gic_proxy 0 15 4>,
<0 0 16 &pmc_gic_proxy 0 16 4>,
<0 0 17 &pmc_gic_proxy 0 17 4>,
<0 0 18 &pmc_gic_proxy 0 18 4>,
<0 0 19 &pmc_gic_proxy 0 19 4>,
<0 0 20 &pmc_gic_proxy 0 20 4>,
<0 0 21 &pmc_gic_proxy 0 21 4>,
<0 0 22 &pmc_gic_proxy 0 22 4>,
<0 0 23 &pmc_gic_proxy 0 23 4>,
<0 0 24 &pmc_gic_proxy 0 24 4>,
<0 0 25 &pmc_gic_proxy 0 25 4>,
<0 0 26 &pmc_gic_proxy 0 26 4>,
<0 0 27 &pmc_gic_proxy 0 27 4>,
<0 0 28 &pmc_gic_proxy 0 28 4>,
<0 0 29 &pmc_gic_proxy 0 29 4>,
<0 0 30 &pmc_gic_proxy 0 30 4>,
<0 0 31 &pmc_gic_proxy 0 31 4>,
<0 0 32 &pmc_gic_proxy 0 32 4>,
<0 0 33 &pmc_gic_proxy 0 33 4>,
<0 0 34 &pmc_gic_proxy 0 34 4>,
<0 0 35 &pmc_gic_proxy 0 35 4>,
<0 0 36 &pmc_gic_proxy 0 36 4>,
<0 0 37 &pmc_gic_proxy 0 37 4>,
<0 0 38 &pmc_gic_proxy 0 38 4>,
<0 0 39 &pmc_gic_proxy 0 39 4>,
<0 0 40 &pmc_gic_proxy 0 40 4>,
<0 0 41 &pmc_gic_proxy 0 41 4>,
<0 0 42 &pmc_gic_proxy 0 42 4>,
<0 0 43 &pmc_gic_proxy 0 43 4>,
<0 0 44 &pmc_gic_proxy 0 44 4>,
<0 0 45 &pmc_gic_proxy 0 45 4>,
<0 0 46 &pmc_gic_proxy 0 46 4>,
<0 0 47 &pmc_gic_proxy 0 47 4>,
<0 0 48 &pmc_gic_proxy 0 48 4>,
<0 0 49 &pmc_gic_proxy 0 49 4>,
<0 0 50 &pmc_gic_proxy 0 50 4>,
<0 0 51 &pmc_gic_proxy 0 51 4>,
<0 0 52 &pmc_gic_proxy 0 52 4>,
<0 0 53 &pmc_gic_proxy 0 53 4>,
<0 0 54 &pmc_gic_proxy 0 54 4>,
<0 0 55 &pmc_gic_proxy 0 55 4>,
<0 0 56 &pmc_gic_proxy 0 56 4>,
<0 0 57 &pmc_gic_proxy 0 57 4>,
<0 0 58 &pmc_gic_proxy 0 58 4>,
<0 0 59 &pmc_gic_proxy 0 59 4>,
<0 0 60 &pmc_gic_proxy 0 60 4>,
<0 0 61 &pmc_gic_proxy 0 61 4>,
<0 0 62 &pmc_gic_proxy 0 62 4>,
<0 0 63 &pmc_gic_proxy 0 63 4>,
<0 0 64 &pmc_gic_proxy 0 64 4>,
<0 0 65 &pmc_gic_proxy 0 65 4>,
<0 0 66 &pmc_gic_proxy 0 66 4>,
<0 0 67 &pmc_gic_proxy 0 67 4>,
<0 0 68 &pmc_gic_proxy 0 68 4>,
<0 0 69 &pmc_gic_proxy 0 69 4>,
<0 0 70 &pmc_gic_proxy 0 70 4>,
<0 0 71 &pmc_gic_proxy 0 71 4>,
<0 0 72 &pmc_gic_proxy 0 72 4>,
<0 0 73 &pmc_gic_proxy 0 73 4>,
<0 0 74 &pmc_gic_proxy 0 74 4>,
<0 0 75 &pmc_gic_proxy 0 75 4>,
<0 0 76 &pmc_gic_proxy 0 76 4>,
<0 0 77 &pmc_gic_proxy 0 77 4>,
<0 0 78 &pmc_gic_proxy 0 78 4>,
<0 0 79 &pmc_gic_proxy 0 79 4>,
<0 0 80 &pmc_gic_proxy 0 80 4>,
<0 0 81 &pmc_gic_proxy 0 81 4>,
<0 0 82 &pmc_gic_proxy 0 82 4>,
<0 0 83 &pmc_gic_proxy 0 83 4>,
<0 0 84 &pmc_gic_proxy 0 84 4>,
<0 0 85 &pmc_gic_proxy 0 85 4>,
<0 0 86 &pmc_gic_proxy 0 86 4>,
<0 0 87 &pmc_gic_proxy 0 87 4>,
<0 0 88 &pmc_gic_proxy 0 88 4>,
<0 0 89 &pmc_gic_proxy 0 89 4>,
<0 0 90 &pmc_gic_proxy 0 90 4>,
<0 0 91 &pmc_gic_proxy 0 91 4>,
<0 0 92 &pmc_gic_proxy 0 92 4>,
<0 0 93 &pmc_gic_proxy 0 93 4>,
<0 0 94 &pmc_gic_proxy 0 94 4>,
<0 0 95 &pmc_gic_proxy 0 95 4>,
<0 0 96 &pmc_gic_proxy 0 96 4>,
<0 0 97 &pmc_gic_proxy 0 97 4>,
<0 0 98 &pmc_gic_proxy 0 98 4>,
<0 0 99 &pmc_gic_proxy 0 99 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 100 &pmc_gic_proxy 0 100 4>,
<0 0 101 &pmc_gic_proxy 0 101 4>,
<0 0 102 &pmc_gic_proxy 0 102 4>,
<0 0 103 &pmc_gic_proxy 0 103 4>,
<0 0 104 &pmc_gic_proxy 0 104 4>,
<0 0 105 &pmc_gic_proxy 0 105 4>,
<0 0 106 &pmc_gic_proxy 0 106 4>,
<0 0 107 &pmc_gic_proxy 0 107 4>,
<0 0 108 &pmc_gic_proxy 0 108 4>,
<0 0 109 &pmc_gic_proxy 0 109 4>,
<0 0 110 &pmc_gic_proxy 0 110 4>,
<0 0 111 &pmc_gic_proxy 0 111 4>,
<0 0 112 &pmc_gic_proxy 0 112 4>,
<0 0 113 &pmc_gic_proxy 0 113 4>,
<0 0 114 &pmc_gic_proxy 0 114 4>,
<0 0 115 &pmc_gic_proxy 0 115 4>,
<0 0 116 &pmc_gic_proxy 0 116 4>,
<0 0 117 &pmc_gic_proxy 0 117 4>,
<0 0 118 &pmc_gic_proxy 0 118 4>,
<0 0 119 &pmc_gic_proxy 0 119 4>,
<0 0 119 &pmc_gic_proxy 0 119 4>,
<0 0 120 &pmc_gic_proxy 0 120 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 121 &pmc_gic_proxy 0 121 4>,
<0 0 122 &pmc_gic_proxy 0 122 4>,
<0 0 123 &pmc_gic_proxy 0 123 4>,
<0 0 124 &pmc_gic_proxy 0 124 4>,
<0 0 125 &pmc_gic_proxy 0 125 4>,
<0 0 126 &pmc_gic_proxy 0 126 4>,
<0 0 127 &pmc_gic_proxy 0 127 4>,
<0 0 128 &pmc_gic_proxy 0 128 4>,
<0 0 129 &pmc_gic_proxy 0 129 4>,
<0 0 130 &pmc_gic_proxy 0 130 4>,
<0 0 131 &pmc_gic_proxy 0 131 4>,
<0 0 132 &pmc_gic_proxy 0 132 4>,
<0 0 132 &pmc_gic_proxy 0 132 4>,
<0 0 133 &pmc_gic_proxy 0 133 4>,
<0 0 134 &pmc_gic_proxy 0 134 4>,
<0 0 135 &pmc_gic_proxy 0 135 4>,
<0 0 136 &pmc_gic_proxy 0 136 4>,
<0 0 137 &pmc_gic_proxy 0 137 4>,
<0 0 138 &pmc_gic_proxy 0 138 4>,
<0 0 139 &pmc_gic_proxy 0 139 4>,
<0 0 140 &pmc_gic_proxy 0 140 4>,
<0 0 141 &pmc_gic_proxy 0 141 4>,
<0 0 142 &pmc_gic_proxy 0 142 4>,
<0 0 143 &pmc_gic_proxy 0 143 4>,
<0 0 144 &pmc_gic_proxy 0 144 4>,
<0 0 145 &pmc_gic_proxy 0 145 4>,
<0 0 146 &pmc_gic_proxy 0 146 4>,
<0 0 147 &pmc_gic_proxy 0 147 4>,
<0 0 148 &pmc_gic_proxy 0 148 4>,
<0 0 149 &pmc_gic_proxy 0 149 4>,
<0 0 150 &pmc_gic_proxy 0 150 4>,
<0 0 151 &pmc_gic_proxy 0 151 4>,
<0 0 152 &pmc_gic_proxy 0 152 4>,
<0 0 153 &pmc_gic_proxy 0 153 4>,
<0 0 154 &pmc_gic_proxy 0 154 4>,
<0 0 155 &pmc_gic_proxy 0 155 4>,
<0 0 156 &pmc_gic_proxy 0 156 4>,
<0 0 157 &pmc_gic_proxy 0 157 4>,
<0 0 158 &pmc_gic_proxy 0 158 4>,
<0 0 160 &pmc_gic_proxy 0 160 4>
# 100 "./versal-icnt.dtsi" 2

   ,

# 1 "./versal-ps-irq-map.dtsh" 1
# 27 "./versal-ps-irq-map.dtsh"
<0 0 0 &psm_gic_proxy 0 0 4>,
<0 0 1 &psm_gic_proxy 0 1 4>,
<0 0 2 &psm_gic_proxy 0 2 4>,
<0 0 3 &psm_gic_proxy 0 3 4>,
<0 0 4 &psm_gic_proxy 0 4 4>,
<0 0 5 &psm_gic_proxy 0 5 4>,
<0 0 6 &psm_gic_proxy 0 6 4>,
<0 0 7 &psm_gic_proxy 0 7 4>,
<0 0 8 &psm_gic_proxy 0 8 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 9 &psm_gic_proxy 0 9 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 10 &psm_gic_proxy 0 10 4>,
<0 0 11 &psm_gic_proxy 0 11 4>,
<0 0 12 &psm_gic_proxy 0 12 4>,
<0 0 13 &psm_gic_proxy 0 13 4>,
<0 0 14 &psm_gic_proxy 0 14 4>,
<0 0 15 &psm_gic_proxy 0 15 4>,
<0 0 16 &psm_gic_proxy 0 16 4>,
<0 0 17 &psm_gic_proxy 0 17 4>,
<0 0 18 &psm_gic_proxy 0 18 4>,
<0 0 19 &psm_gic_proxy 0 19 4>,
<0 0 20 &psm_gic_proxy 0 20 4>,
<0 0 21 &psm_gic_proxy 0 21 4>,
<0 0 22 &psm_gic_proxy 0 22 4>,
<0 0 23 &psm_gic_proxy 0 23 4>,
<0 0 24 &psm_gic_proxy 0 24 4>,
<0 0 25 &psm_gic_proxy 0 25 4>,
<0 0 26 &psm_gic_proxy 0 26 4>,
<0 0 27 &psm_gic_proxy 0 27 4>,
<0 0 28 &psm_gic_proxy 0 28 4>,
<0 0 29 &psm_gic_proxy 0 29 4>,
<0 0 30 &psm_gic_proxy 0 30 4>,
<0 0 31 &psm_gic_proxy 0 31 4>,
<0 0 32 &psm_gic_proxy 0 32 4>,
<0 0 33 &psm_gic_proxy 0 33 4>,
<0 0 34 &psm_gic_proxy 0 34 4>,
<0 0 35 &psm_gic_proxy 0 35 4>,
<0 0 36 &psm_gic_proxy 0 36 4>,
<0 0 37 &psm_gic_proxy 0 37 4>,
<0 0 38 &psm_gic_proxy 0 38 4>,
<0 0 39 &psm_gic_proxy 0 39 4>,
<0 0 40 &psm_gic_proxy 0 40 4>,
<0 0 41 &psm_gic_proxy 0 41 4>,
<0 0 42 &psm_gic_proxy 0 42 4>,
<0 0 43 &psm_gic_proxy 0 43 4>,
<0 0 44 &psm_gic_proxy 0 44 4>,
<0 0 45 &psm_gic_proxy 0 45 4>,
<0 0 46 &psm_gic_proxy 0 46 4>,
<0 0 47 &psm_gic_proxy 0 47 4>,
<0 0 48 &psm_gic_proxy 0 48 4>,
<0 0 49 &psm_gic_proxy 0 49 4>,
<0 0 50 &psm_gic_proxy 0 50 4>,
<0 0 51 &psm_gic_proxy 0 51 4>,
<0 0 52 &psm_gic_proxy 0 52 4>,
<0 0 53 &psm_gic_proxy 0 53 4>,
<0 0 54 &psm_gic_proxy 0 54 4>,
<0 0 55 &psm_gic_proxy 0 55 4>,
<0 0 56 &psm_gic_proxy 0 56 4>,
<0 0 57 &psm_gic_proxy 0 57 4>,
<0 0 58 &psm_gic_proxy 0 58 4>,
<0 0 59 &psm_gic_proxy 0 59 4>,
<0 0 60 &psm_gic_proxy 0 60 4>,
<0 0 61 &psm_gic_proxy 0 61 4>,
<0 0 62 &psm_gic_proxy 0 62 4>,
<0 0 63 &psm_gic_proxy 0 63 4>,
<0 0 64 &psm_gic_proxy 0 64 4>,
<0 0 65 &psm_gic_proxy 0 65 4>,
<0 0 66 &psm_gic_proxy 0 66 4>,
<0 0 67 &psm_gic_proxy 0 67 4>,
<0 0 68 &psm_gic_proxy 0 68 4>,
<0 0 69 &psm_gic_proxy 0 69 4>,
<0 0 70 &psm_gic_proxy 0 70 4>,
<0 0 71 &psm_gic_proxy 0 71 4>,
<0 0 72 &psm_gic_proxy 0 72 4>,
<0 0 73 &psm_gic_proxy 0 73 4>,
<0 0 74 &psm_gic_proxy 0 74 4>,
<0 0 75 &psm_gic_proxy 0 75 4>,
<0 0 76 &psm_gic_proxy 0 76 4>,
<0 0 77 &psm_gic_proxy 0 77 4>,
<0 0 78 &psm_gic_proxy 0 78 4>,
<0 0 79 &psm_gic_proxy 0 79 4>,
<0 0 80 &psm_gic_proxy 0 80 4>,
<0 0 81 &psm_gic_proxy 0 81 4>,
<0 0 82 &psm_gic_proxy 0 82 4>,
<0 0 83 &psm_gic_proxy 0 83 4>,
<0 0 84 &psm_gic_proxy 0 84 4>,
<0 0 85 &psm_gic_proxy 0 85 4>,
<0 0 86 &psm_gic_proxy 0 86 4>,
<0 0 87 &psm_gic_proxy 0 87 4>,
<0 0 88 &psm_gic_proxy 0 88 4>,
<0 0 89 &psm_gic_proxy 0 89 4>,
<0 0 90 &psm_gic_proxy 0 90 4>,
<0 0 91 &psm_gic_proxy 0 91 4>,
<0 0 92 &psm_gic_proxy 0 92 4>,
<0 0 93 &psm_gic_proxy 0 93 4>,
<0 0 94 &psm_gic_proxy 0 94 4>,
<0 0 95 &psm_gic_proxy 0 95 4>,
<0 0 96 &psm_gic_proxy 0 96 4>,
<0 0 97 &psm_gic_proxy 0 97 4>,
<0 0 98 &psm_gic_proxy 0 98 4>,
<0 0 99 &psm_gic_proxy 0 99 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 100 &psm_gic_proxy 0 100 4>,
<0 0 101 &psm_gic_proxy 0 101 4>,
<0 0 102 &psm_gic_proxy 0 102 4>,
<0 0 103 &psm_gic_proxy 0 103 4>,
<0 0 104 &psm_gic_proxy 0 104 4>,
<0 0 105 &psm_gic_proxy 0 105 4>,
<0 0 106 &psm_gic_proxy 0 106 4>,
<0 0 107 &psm_gic_proxy 0 107 4>,
<0 0 108 &psm_gic_proxy 0 108 4>,
<0 0 109 &psm_gic_proxy 0 109 4>,
<0 0 110 &psm_gic_proxy 0 110 4>,
<0 0 111 &psm_gic_proxy 0 111 4>,
<0 0 112 &psm_gic_proxy 0 112 4>,
<0 0 113 &psm_gic_proxy 0 113 4>,
<0 0 114 &psm_gic_proxy 0 114 4>,
<0 0 115 &psm_gic_proxy 0 115 4>,
<0 0 116 &psm_gic_proxy 0 116 4>,
<0 0 117 &psm_gic_proxy 0 117 4>,
<0 0 118 &psm_gic_proxy 0 118 4>,
<0 0 119 &psm_gic_proxy 0 119 4>,
<0 0 119 &psm_gic_proxy 0 119 4>,
<0 0 120 &psm_gic_proxy 0 120 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 121 &psm_gic_proxy 0 121 4>,
<0 0 122 &psm_gic_proxy 0 122 4>,
<0 0 123 &psm_gic_proxy 0 123 4>,
<0 0 124 &psm_gic_proxy 0 124 4>,
<0 0 125 &psm_gic_proxy 0 125 4>,
<0 0 126 &psm_gic_proxy 0 126 4>,
<0 0 127 &psm_gic_proxy 0 127 4>,
<0 0 128 &psm_gic_proxy 0 128 4>,
<0 0 129 &psm_gic_proxy 0 129 4>,
<0 0 130 &psm_gic_proxy 0 130 4>,
<0 0 131 &psm_gic_proxy 0 131 4>,
<0 0 132 &psm_gic_proxy 0 132 4>,
<0 0 132 &psm_gic_proxy 0 132 4>,
<0 0 133 &psm_gic_proxy 0 133 4>,
<0 0 134 &psm_gic_proxy 0 134 4>,
<0 0 135 &psm_gic_proxy 0 135 4>,
<0 0 136 &psm_gic_proxy 0 136 4>,
<0 0 137 &psm_gic_proxy 0 137 4>,
<0 0 138 &psm_gic_proxy 0 138 4>,
<0 0 139 &psm_gic_proxy 0 139 4>,
<0 0 140 &psm_gic_proxy 0 140 4>,
<0 0 141 &psm_gic_proxy 0 141 4>,
<0 0 142 &psm_gic_proxy 0 142 4>,
<0 0 143 &psm_gic_proxy 0 143 4>,
<0 0 144 &psm_gic_proxy 0 144 4>,
<0 0 145 &psm_gic_proxy 0 145 4>,
<0 0 146 &psm_gic_proxy 0 146 4>,
<0 0 147 &psm_gic_proxy 0 147 4>,
<0 0 148 &psm_gic_proxy 0 148 4>,
<0 0 149 &psm_gic_proxy 0 149 4>,
<0 0 150 &psm_gic_proxy 0 150 4>,
<0 0 151 &psm_gic_proxy 0 151 4>,
<0 0 152 &psm_gic_proxy 0 152 4>,
<0 0 153 &psm_gic_proxy 0 153 4>,
<0 0 154 &psm_gic_proxy 0 154 4>,
<0 0 155 &psm_gic_proxy 0 155 4>,
<0 0 156 &psm_gic_proxy 0 156 4>,
<0 0 157 &psm_gic_proxy 0 157 4>,
<0 0 158 &psm_gic_proxy 0 158 4>,
<0 0 160 &psm_gic_proxy 0 160 4>
# 104 "./versal-icnt.dtsi" 2

   ,

   <0 0 29 &psm0_io_intc 18>
   ;


  amba: amba@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;

   downstream_amba_lpd { compatible = "qemu:memory-region"; alias = < &amba_lpd >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_fpd { compatible = "qemu:memory-region"; alias = < &amba_fpd >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_internal { compatible = "qemu:memory-region"; alias = < &amba_pmc_internal >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
  };

  amba_lpd: amba_lpd@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
   downstream_amba_psm { compatible = "qemu:memory-region"; alias = < &amba_psm >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_xram { compatible = "qemu:memory-region"; alias = < &amba_xram >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
  };

  amba_fpd: amba_fpd@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_pmc_internal: amba_pmc_internal@0 {
   doc-ignore = <1>;
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;

   downstream_amba_pmc_ppu { compatible = "qemu:memory-region"; alias = < &amba_pmc_ppu >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_iou { compatible = "qemu:memory-region"; alias = < &amba_pmc_iou >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_sec { compatible = "qemu:memory-region"; alias = < &amba_pmc_sec >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_sys { compatible = "qemu:memory-region"; alias = < &amba_pmc_sys >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_pl { compatible = "qemu:memory-region"; alias = < &amba_pmc_pl >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_bat { compatible = "qemu:memory-region"; alias = < &amba_pmc_bat >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
  };


  amba_pmc: amba_pmc@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;

   downstream_amba { compatible = "qemu:memory-region"; alias = < &amba >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
   downstream_amba_pmc_internal { compatible = "qemu:memory-region"; alias = < &amba_pmc_internal >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
  };

  amba_pmc_iou: amba_pmc_iou@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_pmc_sec: amba_pmc_sec@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_pmc_ppu: amba_pmc_ppu@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_pmc_sys: amba_pmc_sys@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_pmc_pl: amba_pmc_pl@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_pmc_bat: amba_pmc_bat@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_psm: amba_psm@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  amba_xram: amba_xram@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };
 };

 lmb_pmc_ppu0: lmb_pmc_ppu0@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;

  main_bus_for_pmc {
   compatible = "qemu:memory-region";
   alias = <&amba_pmc>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0>;
  };
 };

 lmb_pmc_ppu1: lmb_pmc_ppu1@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;

  main_bus_for_pmc {
   compatible = "qemu:memory-region";
   alias = <&amba_pmc>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0>;
  };
 };

 lmb_psm: lmb_psm@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;
  downstream_amba { compatible = "qemu:memory-region"; alias = < &amba >; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };

  main_bus_for_pmc {
   compatible = "qemu:memory-region";
   alias = <&amba_psm>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0>;
  };
 };

 lmb_ddrmc0: lmb_ddrmc@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;
 };

 lmb_ddrmc1: lmb_ddrmc@1 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;
 };

 amba_rpu: amba_rpu@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;

  downstream_amba {
   compatible = "qemu:memory-region";
   alias = <&amba>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0>;
  };
 };

 amba_r5_0: amba_r5@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;

  downstream_amba {
   compatible = "qemu:memory-region";
   alias = <&amba_rpu>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0>;
  };
 };

 amba_r5_1: amba_r5@1 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;

  downstream_amba {
   compatible = "qemu:memory-region";
   alias = <&amba_rpu>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0>;
  };
 };


 dummy1: dummy1@0 {
  doc-ignore = <1>;
  interrupt-controller;
  #interrupt-cells = <1>;
  gpio-controller;
  #gpio-cells = <1>;
 };
};


/ {
 smmu_tbu0: tbu0_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
 smmu_tbu1: tbu1_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
 smmu_tbu2: tbu2_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
 smmu_tbu3: tbu3_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
 smmu_tbu4: tbu4_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
 smmu_tbu5: tbu5_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
 smmu_tbu6: tbu6_slave@0 { compatible = "qemu:memory-region"; alias = <&amba_pmc>; reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff >; };
};

&amba_lpd {

 smmu: smmu@0xfd800000 {
  compatible = "arm,mmu-500";
  reg-extended = <&amba_lpd 0x0 0xfd800000 0x0 0x800000 0x0
    &smmu_tbu0 0x0 0x0 0xffffffff 0xffffffff 0x0
    &smmu_tbu1 0x0 0x0 0xffffffff 0xffffffff 0x0
    &smmu_tbu2 0x0 0x0 0xffffffff 0xffffffff 0x0
    &smmu_tbu3 0x0 0x0 0xffffffff 0xffffffff 0x0
    &smmu_tbu4 0x0 0x0 0xffffffff 0xffffffff 0x0
    &smmu_tbu5 0x0 0x0 0xffffffff 0xffffffff 0x0
    &smmu_tbu6 0x0 0x0 0xffffffff 0xffffffff 0x0
    >;
  interrupt-parent = <&smmu_reg>;
  interrupts = < 0 1 2 3 4 5 6 7
          8 9 10 11 12 13 14 15 16
          17 18 19 20 21 22 23 24
          25 26 27 28 29 30 31 32 33 >;

  dma = <&amba>;
  mr-0 = <&amba>;
  mr-1 = <&amba>;
  mr-2 = <&amba>;
  mr-3 = <&amba>;
  mr-4 = <&amba>;
  mr-5 = <&amba>;
  mr-6 = <&amba>;

  num-smr = <64>;
  num-cb = <32>;
  num-pages = <32>;
  version = <0x24>;
 };

 smmu_reg: smmu0@0xfd5f0000 {
  compatible = "xlnx,smmu-reg";
  reg = <0x0 0xfd5f0000 0x0 0x10000 0x0>;
  interrupt-controller;
  interrupts = <107>;
 };

};

&amba {
 xmpu_ocm: xmpu_ocm@0 {
  compatible = "xlnx,versal-xmpu";
  interrupts = <68>;
  reg-extended = <
   &amba 0x0 0xff980000 0x0 0x10000 0x0
   &amba 0x0 0xfffc0000 0x0 0x40000 0x2
  >;
  protected-mr = <&ocm_mem>;
  mr-0 = <&amba>;
  protected-base = <0xfffc0000>;
 };
 xmpu_ocm2: xmpu_ocm2@0 {
  compatible = "xlnx,versal-xmpu";
  interrupts = <68>;
  reg-extended = <
   &amba 0x0 0xff970000 0x0 0x10000 0x0
   &amba_xram 0x0 0xfe800000 0x0 0x800000 0x2
  >;
  protected-mr = <&xram_mem>;
  mr-0 = <&amba_lpd>;
  protected-base = <0xfe800000>;
 };
};

&amba_lpd {
 xppu_lpd: xppu_lpd@0xff990000 {
  compatible = "xlnx,versal-xppu";
  reg-extended = <
   &amba_lpd 0x0 0xff990000 0x0 0x10000 0x0

   &amba_pmc_iou 0x0 0xff000000 0x0 0xE00000 0x2

   &amba_pmc_iou 0x0 0xfe000000 0x0 0x1000000 0x2


   &amba 0x0 0xe0000000 0x0 0x10000000 0x2
  >;
  mr = <&amba_lpd>;
  interrupts = <51>;
  region = <0>;
 };
};

&amba_pmc_internal {
 xmpu_pmc: xmpu_pmc@0 {
  compatible = "xlnx,versal-xmpu";
  interrupts = <135>;
  reg-extended = <
   &amba_pmc_internal 0x0 0xf12f0000 0x0 0x10000 0x0
   &amba_pmc_internal 0x0 0xf2000000 0x0 0x20000 0x2
  >;
  protected-mr = <&pmc_ram>;
  mr-0 = <&amba_pmc_internal>;
  protected-base = <0xf2000000>;
 };
 xppu_pmc_npi: xppu_pmc_npi@0xf1300000 {
  compatible = "xlnx,versal-xppu";
  reg-extended = <
   &amba_pmc_internal 0x0 0xf1300000 0x0 0x10000 0x0

   &amba_pmc_internal 0x0 0xf6000000 0x0 0x1000000 0x2

   &amba_pmc_internal 0x0 0xf7000000 0x0 0x1000000 0x2
  >;
  mr = <&amba_pmc_pl>;
  interrupts = <134>;
  region = <2>;
 };
 xppu_pmc: xppu_pmc@0xf1310000 {
  compatible = "xlnx,versal-xppu";
  reg-extended = <
   &amba_pmc_internal 0x0 0xf1310000 0x0 0x10000 0x0

   &amba 0x0 0xf1000000 0x0 0x1000000 0x2

   &amba 0x0 0xf0000000 0x0 0x1000000 0x2

   &amba 0x0 0xc0000000 0x0 0x20000000 0x2
  >;
  mr = <&amba_pmc_internal>;
  interrupts = <134>;
  region = <1>;
 };
};
# 109 "board-versal-pmc-virt.dts" 2
# 1 "./versal-rams.dtsi" 1
# 30 "./versal-rams.dtsi"
# 1 "./versal.dtsh" 1
# 31 "./versal.dtsh"
# 1 "include/loader.dtsh" 1
# 32 "./versal.dtsh" 2
# 1 "./versal-irqs.dtsh" 1
# 35 "./versal-irqs.dtsh"
# 1 "./versal-ps-irqs.dtsh" 1
# 36 "./versal-irqs.dtsh" 2
# 33 "./versal.dtsh" 2
# 1 "./versal-memmap.dtsh" 1
# 154 "./versal-memmap.dtsh"
# 1 "./versal-top-memmap.dtsh" 1
# 155 "./versal-memmap.dtsh" 2
# 1 "./versal-fpd-memmap.dtsh" 1
# 156 "./versal-memmap.dtsh" 2
# 1 "./versal-lpd-memmap.dtsh" 1
# 107 "./versal-lpd-memmap.dtsh"
# 1 "./versal-xram-memmap.dtsh" 1
# 108 "./versal-lpd-memmap.dtsh" 2
# 157 "./versal-memmap.dtsh" 2
# 1 "./versal-pmc-memmap.dtsh" 1
# 158 "./versal-memmap.dtsh" 2
# 1 "./versal-iou-memmap.dtsh" 1
# 159 "./versal-memmap.dtsh" 2
# 1 "./versal-psm-memmap.dtsh" 1
# 160 "./versal-memmap.dtsh" 2
# 1 "./versal-gic-memmap.dtsh" 1
# 161 "./versal-memmap.dtsh" 2
# 174 "./versal-memmap.dtsh"
# 1 "./versal-cpm-memmap.dtsh" 1
# 175 "./versal-memmap.dtsh" 2
# 34 "./versal.dtsh" 2
# 1 "./versal-resetmap.dtsh" 1
# 35 "./versal.dtsh" 2
# 1 "./versal-powermap.dtsh" 1
# 36 "./versal.dtsh" 2
# 1 "./versal-wiremap.dtsh" 1
# 37 "./versal.dtsh" 2
# 1 "./versal-smid.dtsh" 1
# 38 "./versal.dtsh" 2
# 31 "./versal-rams.dtsi" 2
# 40 "./versal-rams.dtsi"
/ {
 ddr_mem: memory@00000000 {
  compatible = "qemu:memory-region";
  device_type = "memory";
  container = <&amba>;
 };

 ddr_2_mem: memory@8_0000_0000 {
  compatible = "qemu:memory-region";
  device_type = "memory";
  container = <&amba>;
 };

 ddr_3_mem: memory@0x50000000000ULL {
  compatible = "qemu:memory-region";
  device_type = "memory";
  container = <&amba>;
 };

 ocm_mem: ocm_mem@0xfffc0000 {
  compatible = "qemu:memory-region";
 };

 ocm_mem_bank_0: ocm_mem_bank_0@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <2>; reg = <0x0 0x00000 0 (0x40000 / 4) 0x0 >; };
 ocm_mem_bank_1: ocm_mem_bank_1@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <2>; reg = <0x0 (0x40000 / 4) 0 (0x40000 / 4) 0x0 >; };

 ocm_mem_bank_2: ocm_mem_bank_2@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <2>; reg = <0x0 ((0x40000 / 4) * 2) 0 (0x40000 / 4) 0x0 >; };

 ocm_mem_bank_3: ocm_mem_bank_3@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <2>; reg = <0x0 ((0x40000 / 4) * 3) 0 (0x40000 / 4) 0x0 >; };


 xram_mem: xram_mem@0xfe800000 {
  compatible = "qemu:memory-region";
 };
 xram_mem_bank_0: xram_mem_bank_0@0x0 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <2>; reg = <0x0 0x0 0 0x200000 0x0 >; };
 xram_mem_bank_1: xram_mem_bank_1@0x200000 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <2>; reg = <0x0 0x200000 0 0x200000 0x0 >; };
 xram_mem_bank_2: xram_mem_bank_2@0x400000 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <2>; reg = <0x0 0x400000 0 0x200000 0x0 >; };
 xram_mem_bank_3: xram_mem_bank_3@0x600000 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <2>; reg = <0x0 0x600000 0 0x200000 0x0 >; };

 ipi_msgbuf: ipi_msgbuf@0 {
  compatible = "qemu:memory-region";
  device_type = "memory";
  container = <&amba_lpd>;
  qemu,ram = <2>;
  reg = <0x0 (0xff300000 + 0xF0000) 0x0 0x1000 0x0>;
 };

 pmc_ram: pmc_ram@0xf2000000 {
  compatible = "qemu:memory-region";
 };
 pmc_ram_bank_0: pmc_ram_bank_0@0x0 { compatible = "qemu:memory-region"; container = <&pmc_ram>; qemu,ram = <2>; reg = <0x0 0x0 0 0x20000 0x0 >; };

 pmc_ppu1_insn_ram: pmc_ppu1_ram@0xf0200000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <2>;
  reg = <0x0 0xf0200000 0x0 0x40000 0x0>;
 };

 pmc_ppu1_data_ram: pmc_ppu1_ram@0xf0240000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <2>;
  reg = <0x0 0xf0240000 0x0 0x20000 0x0>;
 };
# 116 "./versal-rams.dtsi"
 lmb_pmc_ppu0: lmb_pmc_ppu0@0 {

  pmc_rom: pmc_rom@0xf0000000 {
   reg = <0x0 0xf0000000 0x0 0x20000 0x1>;
   compatible = "qemu:memory-region";
   container = <&lmb_pmc_ppu0>;
   qemu,ram = <2>;
   read-only;
  };


  pmc_ppu0_ram: ppu0_ram@0xf0060000 {
   reg = <0x0 0xf0060000 0x0 0x8000 0x1>;
   compatible = "qemu:memory-region";
   container = <&lmb_pmc_ppu0>;
   qemu,ram = <2>;
  };
 };
};
# 144 "./versal-rams.dtsi"
&lmb_ddrmc0 {
 ddrmc0_ram_data: ddrmc0_ram_data@0x1c000 { reg = <0x0 0x1c000 0x0 0x04000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <2>; };
 ddrmc0_ram_instr: ddrmc0_ram_instr@0x20000 { reg = <0x0 0x20000 0x0 0x20000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <2>; };
 ddrmc0_ram_exchange: ddrmc0_ram_exchange@0x08000 { reg = <0x0 0x08000 0x0 0x08000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <2>; };
};

&lmb_ddrmc1 {
 ddrmc1_ram_data: ddrmc1_ram_data@0x1c000 { reg = <0x0 0x1c000 0x0 0x04000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <2>; };
 ddrmc1_ram_instr: ddrmc1_ram_instr@0x20000 { reg = <0x0 0x20000 0x0 0x20000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <2>; };
 ddrmc1_ram_exchange: ddrmc1_ram_exchange@0x08000 { reg = <0x0 0x08000 0x0 0x08000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <2>; };
};

&amba_psm {
 psm_ram_instr: psm_ram_instr@0xffc00000 {
  device_type = "memory";
  compatible = "qemu:memory-region";
  qemu,ram = <2>;
  reg = <0x0 0xffc00000 0x0 0x20000 0x1>;
 };

 psm_ram_data: psm_ram_data@0xffc20000 {
  device_type = "memory";
  compatible = "qemu:memory-region";
  qemu,ram = <2>;
  reg = <0x0 0xffc20000 0x0 0x20000 0x1>;
 };
};
# 110 "board-versal-pmc-virt.dts" 2
# 1 "./versal-pmc-ppu-cpus.dtsi" 1
# 30 "./versal-pmc-ppu-cpus.dtsi"
# 1 "./versal.dtsh" 1
# 31 "./versal.dtsh"
# 1 "include/loader.dtsh" 1
# 32 "./versal.dtsh" 2
# 1 "./versal-irqs.dtsh" 1
# 35 "./versal-irqs.dtsh"
# 1 "./versal-ps-irqs.dtsh" 1
# 36 "./versal-irqs.dtsh" 2
# 33 "./versal.dtsh" 2
# 1 "./versal-memmap.dtsh" 1
# 154 "./versal-memmap.dtsh"
# 1 "./versal-top-memmap.dtsh" 1
# 155 "./versal-memmap.dtsh" 2
# 1 "./versal-fpd-memmap.dtsh" 1
# 156 "./versal-memmap.dtsh" 2
# 1 "./versal-lpd-memmap.dtsh" 1
# 107 "./versal-lpd-memmap.dtsh"
# 1 "./versal-xram-memmap.dtsh" 1
# 108 "./versal-lpd-memmap.dtsh" 2
# 157 "./versal-memmap.dtsh" 2
# 1 "./versal-pmc-memmap.dtsh" 1
# 158 "./versal-memmap.dtsh" 2
# 1 "./versal-iou-memmap.dtsh" 1
# 159 "./versal-memmap.dtsh" 2
# 1 "./versal-psm-memmap.dtsh" 1
# 160 "./versal-memmap.dtsh" 2
# 1 "./versal-gic-memmap.dtsh" 1
# 161 "./versal-memmap.dtsh" 2
# 174 "./versal-memmap.dtsh"
# 1 "./versal-cpm-memmap.dtsh" 1
# 175 "./versal-memmap.dtsh" 2
# 34 "./versal.dtsh" 2
# 1 "./versal-resetmap.dtsh" 1
# 35 "./versal.dtsh" 2
# 1 "./versal-powermap.dtsh" 1
# 36 "./versal.dtsh" 2
# 1 "./versal-wiremap.dtsh" 1
# 37 "./versal.dtsh" 2
# 1 "./versal-smid.dtsh" 1
# 38 "./versal.dtsh" 2
# 31 "./versal-pmc-ppu-cpus.dtsi" 2
# 1 "include/versal/ppu.dtsh" 1
# 32 "./versal-pmc-ppu-cpus.dtsi" 2

/ {
 cpus {
  #address-cells = <1>;
  #cpus = <0x1>;
  #size-cells = <0>;
  doc-status = "partial";

  pmc_ppu0: cpu@0 { gdb-id = "PPU0"; doc-status = "partial"; #interrupt-cells = <1>; clock-frequency = <400000000>; compatible = "xlnx,microblaze-cpu"; d-cache-size = <0x0>; device_type = "cpu"; i-cache-size = <0x0>; model = "microblaze,10.0"; version = "10.0"; reg = <0>; timebase-frequency = <400000000>; xlnx,addr-tag-bits = <0x10>; xlnx,area-optimized = <0x0>; xlnx,avoid-primitives = <0x3>; xlnx,base-vectors = <0xf0000000>; xlnx,branch-target-cache-size = <0x0>; xlnx,d-axi = <0x1>; xlnx,d-lmb = <0x1>; xlnx,d-plb = <0x0>; xlnx,data-size = <0x20>; xlnx,debug-enabled = <0x1>; xlnx,div-zero-exception = <0x1>; xlnx,dynamic-bus-sizing = <0x1>; xlnx,ecc-use-ce-exception = <0x0>; xlnx,edge-is-positive = <0x1>; xlnx,endianness = <0x1>; xlnx,family = "virtex7"; xlnx,fault-tolerant = <0x1>; xlnx,fpu-exception = <0x0>; xlnx,freq = <0x17d78400>; xlnx,fsl-data-size = <0x20>; xlnx,fsl-exception = <0x0>; xlnx,fsl-links = <0x0>; xlnx,i-axi = <0x1>; xlnx,i-lmb = <0x1>; xlnx,i-plb = <0x0>; xlnx,ill-opcode-exception = <0x1>; xlnx,instance = "microblaze_1"; xlnx,interconnect = <0x2>; xlnx,interrupt-is-edge = <0x0>; xlnx,lockstep-slave = <0x0>; xlnx,mmu-dtlb-size = <0x2>; xlnx,mmu-itlb-size = <0x4>; xlnx,mmu-privileged-instr = <0x0>; xlnx,mmu-tlb-access = <0x3>; xlnx,mmu-zones = <0x2>; xlnx,number-of-pc-brk = <0x1>; xlnx,number-of-rd-addr-brk = <0x1>; xlnx,number-of-wr-addr-brk = <0x1>; xlnx,opcode-0x0-illegal = <0x1>; xlnx,optimization = <0x0>; xlnx,pc-width = <0x20>; xlnx,pvr = <0x2>; xlnx,pvr-user1 = <0x5>; xlnx,pvr-user2 = <0x0>; xlnx,reset-msr = <0x0>; xlnx,sco = <0x0>; xlnx,stream-interconnect = <0x0>; xlnx,unaligned-exceptions = <0x1>; xlnx,use-barrel = <0x1>; xlnx,use-branch-target-cache = <0x0>; xlnx,use-dcache = <0x0>; xlnx,use-div = <0x1>; xlnx,use-ext-brk = <0x1>; xlnx,use-ext-nm-brk = <0x1>; xlnx,use-extended-fsl-instr = <0x0>; xlnx,use-fpu = <0x0>; xlnx,use-hw-mul = <0x2>; xlnx,use-icache = <0x0>; xlnx,use-interrupt = <0x1>; xlnx,use-mmu = <0x0>; xlnx,use-msr-instr = <0x1>; xlnx,use-pcmp-instr = <0x1>; xlnx,use-reorder-instr = <0x1>; xlnx,use-stack-protection = <0x1>; xlnx,addr-size= <52>; mr = <&lmb_pmc_ppu0>; memory = <&lmb_pmc_ppu0>; memattr = <&pmc_ppu0_memattr>; };
  pmc_ppu1: cpu@1 { gdb-id = "PPU1"; doc-status = "partial"; #interrupt-cells = <1>; clock-frequency = <400000000>; compatible = "xlnx,microblaze-cpu"; d-cache-size = <0x0>; device_type = "cpu"; i-cache-size = <0x0>; model = "microblaze,10.0"; version = "10.0"; reg = <0>; timebase-frequency = <400000000>; xlnx,addr-tag-bits = <0x10>; xlnx,area-optimized = <0x0>; xlnx,avoid-primitives = <0x3>; xlnx,base-vectors = <0xf0200000>; xlnx,branch-target-cache-size = <0x0>; xlnx,d-axi = <0x1>; xlnx,d-lmb = <0x1>; xlnx,d-plb = <0x0>; xlnx,data-size = <0x20>; xlnx,debug-enabled = <0x1>; xlnx,div-zero-exception = <0x1>; xlnx,dynamic-bus-sizing = <0x1>; xlnx,ecc-use-ce-exception = <0x0>; xlnx,edge-is-positive = <0x1>; xlnx,endianness = <0x1>; xlnx,family = "virtex7"; xlnx,fault-tolerant = <0x1>; xlnx,fpu-exception = <0x0>; xlnx,freq = <0x17d78400>; xlnx,fsl-data-size = <0x20>; xlnx,fsl-exception = <0x0>; xlnx,fsl-links = <0x0>; xlnx,i-axi = <0x1>; xlnx,i-lmb = <0x1>; xlnx,i-plb = <0x0>; xlnx,ill-opcode-exception = <0x1>; xlnx,instance = "microblaze_1"; xlnx,interconnect = <0x2>; xlnx,interrupt-is-edge = <0x0>; xlnx,lockstep-slave = <0x0>; xlnx,mmu-dtlb-size = <0x2>; xlnx,mmu-itlb-size = <0x4>; xlnx,mmu-privileged-instr = <0x0>; xlnx,mmu-tlb-access = <0x3>; xlnx,mmu-zones = <0x2>; xlnx,number-of-pc-brk = <0x1>; xlnx,number-of-rd-addr-brk = <0x1>; xlnx,number-of-wr-addr-brk = <0x1>; xlnx,opcode-0x0-illegal = <0x1>; xlnx,optimization = <0x0>; xlnx,pc-width = <0x20>; xlnx,pvr = <0x2>; xlnx,pvr-user1 = <0x6>; xlnx,pvr-user2 = <0x0>; xlnx,reset-msr = <0x0>; xlnx,sco = <0x0>; xlnx,stream-interconnect = <0x0>; xlnx,unaligned-exceptions = <0x1>; xlnx,use-barrel = <0x1>; xlnx,use-branch-target-cache = <0x0>; xlnx,use-dcache = <0x0>; xlnx,use-div = <0x1>; xlnx,use-ext-brk = <0x1>; xlnx,use-ext-nm-brk = <0x1>; xlnx,use-extended-fsl-instr = <0x0>; xlnx,use-fpu = <0x0>; xlnx,use-hw-mul = <0x2>; xlnx,use-icache = <0x0>; xlnx,use-interrupt = <0x1>; xlnx,use-mmu = <0x0>; xlnx,use-msr-instr = <0x1>; xlnx,use-pcmp-instr = <0x1>; xlnx,use-reorder-instr = <0x1>; xlnx,use-stack-protection = <0x1>; xlnx,addr-size= <52>; mr = <&lmb_pmc_ppu1>; memory = <&lmb_pmc_ppu1>; memattr = <&pmc_ppu1_memattr>; };
 };
};

&pmc_ppu1 {
 gpios = <&pmc_global 1
   &pmc_global 2 >;
 gpio-names = "reset", "halt";
 qemu,halt = <0x1>;
};
# 111 "board-versal-pmc-virt.dts" 2
# 1 "./versal-psm-cpu.dtsi" 1
/ {
 cpus {
  psm0: psm@0 {
   #interrupt-cells = <1>;
   gdb-id = "PSM";
   clock-frequency = <100000000>;
   compatible = "xlnx,microblaze-cpu";
   d-cache-size = <0x0>;
   device_type = "cpu";
   i-cache-size = <0x0>;
   model = "microblaze,10.0";
   version = "10.0";
   reg = <0>;
   timebase-frequency = <400000000>;
   xlnx,addr-tag-bits = <0x10>;
   xlnx,area-optimized = <0x0>;
   xlnx,avoid-primitives = <0x3>;
   xlnx,base-vectors = < 0xffc00000 >;
   xlnx,branch-target-cache-size = <0x0>;
   xlnx,d-axi = <0x1>;
   xlnx,d-lmb = <0x1>;
   xlnx,d-plb = <0x0>;
   xlnx,data-size = <0x20>;
   xlnx,debug-enabled = <0x1>;
   xlnx,div-zero-exception = <0x1>;
   xlnx,dynamic-bus-sizing = <0x1>;
   xlnx,ecc-use-ce-exception = <0x0>;
   xlnx,edge-is-positive = <0x1>;
   xlnx,endianness = <0x1>;
   xlnx,family = "virtex7";
   xlnx,fault-tolerant = <0x1>;
   xlnx,fpu-exception = <0x0>;
   xlnx,freq = <0x5f5e100>;
   xlnx,fsl-data-size = <0x20>;
   xlnx,fsl-exception = <0x0>;
   xlnx,fsl-links = <0x0>;
   xlnx,i-axi = <0x1>;
   xlnx,i-lmb = <0x1>;
   xlnx,i-plb = <0x0>;
   xlnx,ill-opcode-exception = <0x1>;
   xlnx,instance = "microblaze_0";
   xlnx,interconnect = <0x2>;
   xlnx,interrupt-is-edge = <0x0>;
   xlnx,lockstep-slave = <0x0>;
   xlnx,mmu-dtlb-size = <0x2>;
   xlnx,mmu-itlb-size = <0x4>;
   xlnx,mmu-privileged-instr = <0x0>;
   xlnx,mmu-tlb-access = <0x3>;
   xlnx,mmu-zones = <0x2>;
   xlnx,number-of-pc-brk = <0x1>;
   xlnx,number-of-rd-addr-brk = <0x1>;
   xlnx,number-of-wr-addr-brk = <0x1>;
   xlnx,opcode-0x0-illegal = <0x1>;
   xlnx,optimization = <0x0>;
   xlnx,pc-width = <0x20>;
   xlnx,pvr = <0x2>;
   xlnx,pvr-user1 = <0x7>;
   xlnx,pvr-user2 = <0x0>;
   xlnx,reset-msr = <0x0>;
   xlnx,sco = <0x0>;
   xlnx,stream-interconnect = <0x0>;
   xlnx,unaligned-exceptions = <0x1>;
   xlnx,use-barrel = <0x1>;
   xlnx,use-branch-target-cache = <0x0>;
   xlnx,use-dcache = <0x0>;
   xlnx,use-div = <0x1>;
   xlnx,use-ext-brk = <0x1>;
   xlnx,use-ext-nm-brk = <0x1>;
   xlnx,use-extended-fsl-instr = <0x0>;
   xlnx,use-fpu = <0x0>;
   xlnx,use-hw-mul = <0x2>;
   xlnx,use-icache = <0x0>;
   xlnx,use-interrupt = <0x1>;
   xlnx,use-mmu = <0x0>;
   xlnx,use-msr-instr = <0x1>;
   xlnx,use-pcmp-instr = <0x1>;
   xlnx,use-reorder-instr = <0x1>;
   xlnx,use-stack-protection = <0x1>;
   xlnx,addr-size= <52>;

   gpios = < &crl 30 &crl 31 &crl 34>;
   gpio-names = "halt", "wakeup", "reset";
   qemu,halt = <0x1>;

   mr = <&lmb_psm>;
   memory = <&lmb_psm>;
   memattr = <&psm_memattr>;
  };
 };

};
# 112 "board-versal-pmc-virt.dts" 2

/ {

 ddr: ddr@0x00000000 { compatible = "qemu:memory-region"; container = <&ddr_mem>; qemu,ram = <2>; reg = <0x0 0x00000000 0 0x80000000 0x0 >; };

 ps_pmc_rp: ps_pmc_rp@0 {
  doc-name = "Remote-port PMC-PS";
  compatible = "remote-port";
  chrdev-id = "ps-pmc-rp";
 };
 rp_pmc_ppu0: rp_pmc_ppu0@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 1>;
  interrupts-extended = < &pmc_ppu0 0 >;
 };
 rp_pmc_ppu1: rp_pmc_ppu1@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 2>;
  interrupts-extended = < &pmc_ppu1 0 >;
 };
 pmc_global: rp_pmc_global@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 3>;
  #gpio-cells = <1>;
  num-gpios = <16>;
 };
 lmb_pmc_ppu0: lmb_pmc_ppu0@0 {
  rp_lmb_pmc_ppu0@0 {
   compatible = "remote-port-memory-master";
   remote-ports = <&ps_pmc_rp 4>;
   reg = < 0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF >;
  };
 };
 lmb_pmc_ppu1: lmb_pmc_ppu1@0 {
  rp_lmb_pmc_ppu1@0 {
   compatible = "remote-port-memory-master";
   remote-ports = <&ps_pmc_rp 5>;
   reg = < 0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF >;
  };
 };
 crl: crl@0xff5e0000 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 6>;
  #gpio-cells = <1>;
  num-gpios = <35>;
 };
 pmc_clk_rst: pmc_clk_rst@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 7>;
  #gpio-cells = <1>;
  num-gpios = <30>;
 };
 rp_psm0: rp_psm0@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 8>;
  interrupts-extended = < &psm0 0 >;
 };

 rp_ddrmc_ub0: rp_ddrmc_ub@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 9>;



 };

 npi_ddrmc_ub0: rp_npi_ddrmc_ub@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 11>;
  #gpio-cells = <1>;
 };


 rp_ddrmc_ub1: rp_ddrmc_ub@1 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 10>;



 };

 npi_ddrmc_ub1: rp_npi_ddrmc_ub@1 {
  compatible = "remote-port-gpio";
  remote-ports = <&ps_pmc_rp 12>;
  #gpio-cells = <1>;
 };

 lmb_psm: lmb_psm@0 {
  rp_lmb_psm@0 {
   compatible = "remote-port-memory-master";
   remote-ports = <&ps_pmc_rp 13>;
   reg = < 0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF >;
  };
 };


 pmc_gic_proxy: pmc_gic_proxy {
  doc-ignore = <1>;
  #interrupt-cells = <3>;
  interrupt-controller;
 };
 psm_gic_proxy: psm_gic_proxy {
  doc-ignore = <1>;
  #interrupt-cells = <3>;
  interrupt-controller;
 };
 psm0_io_intc: psm0_io_intc {
  doc-ignore = <1>;
  #interrupt-cells = <1>;
  interrupt-controller;
 };
 pmc_ppu1_io_intc: pmc_ppu1_io_intc {
  doc-ignore = <1>;
  #interrupt-cells = <1>;
  interrupt-controller;
 };
};


/ {







 pmc_reset: pmc_reset@ {
  compatible = "qemu,reset-device";
  gpios = <&pmc_clk_rst 2>;
 };
};
