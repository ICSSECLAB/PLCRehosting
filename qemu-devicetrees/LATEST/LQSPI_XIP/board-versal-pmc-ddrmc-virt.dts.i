# 1 "board-versal-pmc-ddrmc-virt.dts"
# 1 "<built-in>" 1
# 1 "board-versal-pmc-ddrmc-virt.dts" 2
# 40 "board-versal-pmc-ddrmc-virt.dts"
# 1 "./board-versal-pmc-virt.dts" 1
# 30 "./board-versal-pmc-virt.dts"
/dts-v1/;


# 1 "./versal-npi-memmap.dtsh" 1
# 34 "./board-versal-pmc-virt.dts" 2
# 51 "./board-versal-pmc-virt.dts"
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
# 52 "./board-versal-pmc-virt.dts" 2


# 1 "./versal-pmc.dtsi" 1
# 30 "./versal-pmc.dtsi"
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
# 31 "./versal-pmc.dtsi" 2

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
# 33 "./versal-pmc.dtsi" 2
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

 ocm_mem_bank_0: ocm_mem_bank_0@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <1>; reg = <0x0 0x00000 0 (0x40000 / 4) 0x0 >; };
 ocm_mem_bank_1: ocm_mem_bank_1@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <1>; reg = <0x0 (0x40000 / 4) 0 (0x40000 / 4) 0x0 >; };

 ocm_mem_bank_2: ocm_mem_bank_2@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <1>; reg = <0x0 ((0x40000 / 4) * 2) 0 (0x40000 / 4) 0x0 >; };

 ocm_mem_bank_3: ocm_mem_bank_3@ { compatible = "qemu:memory-region"; container = <&ocm_mem>; qemu,ram = <1>; reg = <0x0 ((0x40000 / 4) * 3) 0 (0x40000 / 4) 0x0 >; };


 xram_mem: xram_mem@0xfe800000 {
  compatible = "qemu:memory-region";
 };
 xram_mem_bank_0: xram_mem_bank_0@0x0 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <1>; reg = <0x0 0x0 0 0x200000 0x0 >; };
 xram_mem_bank_1: xram_mem_bank_1@0x200000 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <1>; reg = <0x0 0x200000 0 0x200000 0x0 >; };
 xram_mem_bank_2: xram_mem_bank_2@0x400000 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <1>; reg = <0x0 0x400000 0 0x200000 0x0 >; };
 xram_mem_bank_3: xram_mem_bank_3@0x600000 { compatible = "qemu:memory-region"; container = <&xram_mem>; qemu,ram = <1>; reg = <0x0 0x600000 0 0x200000 0x0 >; };

 ipi_msgbuf: ipi_msgbuf@0 {
  compatible = "qemu:memory-region";
  device_type = "memory";
  container = <&amba_lpd>;
  qemu,ram = <1>;
  reg = <0x0 (0xff300000 + 0xF0000) 0x0 0x1000 0x0>;
 };

 pmc_ram: pmc_ram@0xf2000000 {
  compatible = "qemu:memory-region";
 };
 pmc_ram_bank_0: pmc_ram_bank_0@0x0 { compatible = "qemu:memory-region"; container = <&pmc_ram>; qemu,ram = <1>; reg = <0x0 0x0 0 0x20000 0x0 >; };

 pmc_ppu1_insn_ram: pmc_ppu1_ram@0xf0200000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <1>;
  reg = <0x0 0xf0200000 0x0 0x40000 0x0>;
 };

 pmc_ppu1_data_ram: pmc_ppu1_ram@0xf0240000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <1>;
  reg = <0x0 0xf0240000 0x0 0x20000 0x0>;
 };


 pmc_lqspi {
  device_type = "memory";
  compatible = "qemu:memory-region";
  container = <&amba_pmc>;
  qemu,ram = <1>;
  reg = <0x0 0xc0000000 0x0 0x20000000 0x0>;
 };


 lmb_pmc_ppu0: lmb_pmc_ppu0@0 {

  pmc_rom: pmc_rom@0xf0000000 {
   reg = <0x0 0xf0000000 0x0 0x20000 0x1>;
   compatible = "qemu:memory-region";
   container = <&lmb_pmc_ppu0>;
   qemu,ram = <1>;
   read-only;
  };


  pmc_ppu0_ram: ppu0_ram@0xf0060000 {
   reg = <0x0 0xf0060000 0x0 0x8000 0x1>;
   compatible = "qemu:memory-region";
   container = <&lmb_pmc_ppu0>;
   qemu,ram = <1>;
  };
 };
};
# 144 "./versal-rams.dtsi"
&lmb_ddrmc0 {
 ddrmc0_ram_data: ddrmc0_ram_data@0x1c000 { reg = <0x0 0x1c000 0x0 0x04000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <1>; };
 ddrmc0_ram_instr: ddrmc0_ram_instr@0x20000 { reg = <0x0 0x20000 0x0 0x20000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <1>; };
 ddrmc0_ram_exchange: ddrmc0_ram_exchange@0x08000 { reg = <0x0 0x08000 0x0 0x08000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <1>; };
};

&lmb_ddrmc1 {
 ddrmc1_ram_data: ddrmc1_ram_data@0x1c000 { reg = <0x0 0x1c000 0x0 0x04000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <1>; };
 ddrmc1_ram_instr: ddrmc1_ram_instr@0x20000 { reg = <0x0 0x20000 0x0 0x20000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <1>; };
 ddrmc1_ram_exchange: ddrmc1_ram_exchange@0x08000 { reg = <0x0 0x08000 0x0 0x08000 0x1>; compatible = "qemu:memory-region"; qemu,ram = <1>; };
};

&amba_psm {
 psm_ram_instr: psm_ram_instr@0xffc00000 {
  device_type = "memory";
  compatible = "qemu:memory-region";
  qemu,ram = <1>;
  reg = <0x0 0xffc00000 0x0 0x20000 0x1>;
 };

 psm_ram_data: psm_ram_data@0xffc20000 {
  device_type = "memory";
  compatible = "qemu:memory-region";
  qemu,ram = <1>;
  reg = <0x0 0xffc20000 0x0 0x20000 0x1>;
 };
};
# 34 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-ppu.dtsi" 1
# 30 "./versal-pmc-ppu.dtsi"
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
# 31 "./versal-pmc-ppu.dtsi" 2
# 208 "./versal-pmc-ppu.dtsi"
/ {




 ppu0_mdm_uart@0xf0110000 {
  doc-status = "complete";
  compatible = "xlnx,xps-uartlite";
  reg-extended = <&lmb_pmc_ppu0 0x0 0xf0110000 0x0 0x10 0x1>;
  chardev = "serial0";
 };

 ppu1_mdm_uart@0xf0310000 {
  doc-status = "complete";
  compatible = "xlnx,xps-uartlite";
  reg-extended = <&lmb_pmc_ppu1 0x0 0xf0310000 0x0 0x10 0x1>;
  chardev = "serial1";
 };
};

&lmb_pmc_ppu0 {
 doc-name = "LMB PPU0";
 doc-status = "complete";
 pmc_ppu0_io_module: io-module@00 { doc-status = "complete"; #address-cells = <2>; #size-cells = <1>; #priority-cells = <0>; compatible = "xlnx,iomodule-1.02.a", "syscon", "simple-bus"; container = <&lmb_pmc_ppu0>; priority = <0xffffffff>; xlnx,freq = <0x47868c0>; xlnx,instance = "iomodule_1"; xlnx,io-mask = <0xfffe0000>; xlnx,lmb-awidth = <0x20>; xlnx,lmb-dwidth = <0x20>; xlnx,mask = <0xffffff80>; xlnx,use-io-bus = <0x1>; pmc_ppu0_io_intc: pmc_ppu0_intc@0C { #interrupt-cells = <1>; compatible = "xlnx,io-intc-1.02.a", "xlnx,io_intc"; interrupt-controller ; interrupts-extended = <&pmc_ppu0 0>; reg = <0x0 (0xf0080000 | 0x0C) 0x4 0x0 (0xf0080000 | 0x30) 0x10 0x0 (0xf0080000 | 0x80) 0x7C>; xlnx,intc-addr-width = <0x20>; xlnx,intc-base-vectors = <0x0>; xlnx,intc-has-fast = <0x0>; xlnx,intc-intr-size = <0x10>; xlnx,intc-level-edge = <0x0>; xlnx,intc-positive = <0xffff>; xlnx,intc-use-ext-intr = <0x1>; }; pmc_ppu0_io_gpi1: pmc_ppu0_gpi@20 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <11>; reg = <0x0 (0xf0080000 | 0x20) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu0_io_gpi2: pmc_ppu0_gpi@24 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <12>; reg = <0x0 (0xf0080000 | 0x24) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu0_io_gpi3: pmc_ppu0_gpi@28 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <13>; reg = <0x0 (0xf0080000 | 0x28) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu0_io_gpi4: pmc_ppu0_gpi@2c { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <14>; reg = <0x0 (0xf0080000 | 0x2c) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu0_io_gpo1: pmc_ppu0_gpo@10 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0080000 | 0x10) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x9>; xlnx,use-gpo = <0x1>; }; pmc_ppu0_io_gpo2: pmc_ppu0_gpo@14 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0080000 | 0x14) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x20>; xlnx,use-gpo = <0x1>; }; pmc_ppu0_io_gpo3: pmc_ppu0_gpo@18 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0080000 | 0x18) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x20>; xlnx,use-gpo = <0x1>; }; pmc_ppu0_io_gpo4: pmc_ppu0_gpo@1c { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0080000 | 0x1c) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x20>; xlnx,use-gpo = <0x1>; }; pmc_ppu0_io_pit1: pmc_ppu0_pit@40 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <3>; reg = <0x0 (0xf0080000 | 0x40) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&pmc_ppu0_io_gpo1 1 &pmc_ppu0_io_pit2 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; pmc_ppu0_io_pit2: pmc_ppu0_pit@50 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <4>; reg = <0x0 (0xf0080000 | 0x50) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; pmc_ppu0_io_pit3: pmc_ppu0_pit@60 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <5>; reg = <0x0 (0xf0080000 | 0x60) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&pmc_ppu0_io_gpo1 6 &pmc_ppu0_io_pit4 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; pmc_ppu0_io_pit4: pmc_ppu0_pit@70 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu0_io_intc>; interrupts = <6>; reg = <0x0 (0xf0080000 | 0x70) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; };
};

&lmb_pmc_ppu1 {
 doc-name = "LMB PPU1";
 doc-status = "complete";
 pmc_ppu1_io_module: io-module@00 { doc-status = "complete"; #address-cells = <2>; #size-cells = <1>; #priority-cells = <0>; compatible = "xlnx,iomodule-1.02.a", "syscon", "simple-bus"; container = <&lmb_pmc_ppu1>; priority = <0xffffffff>; xlnx,freq = <0x47868c0>; xlnx,instance = "iomodule_1"; xlnx,io-mask = <0xfffe0000>; xlnx,lmb-awidth = <0x20>; xlnx,lmb-dwidth = <0x20>; xlnx,mask = <0xffffff80>; xlnx,use-io-bus = <0x1>; pmc_ppu1_io_intc: pmc_ppu1_intc@0C { #interrupt-cells = <1>; compatible = "xlnx,io-intc-1.02.a", "xlnx,io_intc"; interrupt-controller ; interrupts-extended = <&pmc_ppu1 0>; reg = <0x0 (0xf0280000 | 0x0C) 0x4 0x0 (0xf0280000 | 0x30) 0x10 0x0 (0xf0280000 | 0x80) 0x7C>; xlnx,intc-addr-width = <0x20>; xlnx,intc-base-vectors = <0x0>; xlnx,intc-has-fast = <0x0>; xlnx,intc-intr-size = <0x10>; xlnx,intc-level-edge = <0x0>; xlnx,intc-positive = <0xffff>; xlnx,intc-use-ext-intr = <0x1>; }; pmc_ppu1_io_gpi1: pmc_ppu1_gpi@20 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <11>; reg = <0x0 (0xf0280000 | 0x20) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu1_io_gpi2: pmc_ppu1_gpi@24 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <12>; reg = <0x0 (0xf0280000 | 0x24) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu1_io_gpi3: pmc_ppu1_gpi@28 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <13>; reg = <0x0 (0xf0280000 | 0x28) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu1_io_gpi4: pmc_ppu1_gpi@2c { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <14>; reg = <0x0 (0xf0280000 | 0x2c) 0x4>; xlnx,gpi-interrupt = <0x1>; xlnx,gpi-size = <0x20>; xlnx,use-gpi = <0x1>; }; pmc_ppu1_io_gpo1: pmc_ppu1_gpo@10 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0280000 | 0x10) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x9>; xlnx,use-gpo = <0x1>; }; pmc_ppu1_io_gpo2: pmc_ppu1_gpo@14 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0280000 | 0x14) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x20>; xlnx,use-gpo = <0x1>; }; pmc_ppu1_io_gpo3: pmc_ppu1_gpo@18 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0280000 | 0x18) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x20>; xlnx,use-gpo = <0x1>; }; pmc_ppu1_io_gpo4: pmc_ppu1_gpo@1c { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xf0280000 | 0x1c) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x20>; xlnx,use-gpo = <0x1>; }; pmc_ppu1_io_pit1: pmc_ppu1_pit@40 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <3>; reg = <0x0 (0xf0280000 | 0x40) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&pmc_ppu1_io_gpo1 1 &pmc_ppu1_io_pit2 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; pmc_ppu1_io_pit2: pmc_ppu1_pit@50 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <4>; reg = <0x0 (0xf0280000 | 0x50) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; pmc_ppu1_io_pit3: pmc_ppu1_pit@60 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <5>; reg = <0x0 (0xf0280000 | 0x60) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&pmc_ppu1_io_gpo1 6 &pmc_ppu1_io_pit4 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; pmc_ppu1_io_pit4: pmc_ppu1_pit@70 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&pmc_ppu1_io_intc>; interrupts = <6>; reg = <0x0 (0xf0280000 | 0x70) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; };
};

&amba_pmc_ppu {
 pmc_gic_proxy: pmc_gic_proxy@0 {
  doc-status = "complete";
  #interrupt-cells = <3>;
  interrupt-controller;

  compatible = "xlnx,zynqmp-gicp";
  reg = <0x0 (0xf1110000 + 0x30000) 0x0 0x100 0x0>;
  interrupt-parent = <&pmc_ppu1_io_intc>;
  interrupts = <16>;
 };
};
# 35 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-iou.dtsi" 1
# 31 "./versal-pmc-iou.dtsi"
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
# 32 "./versal-pmc-iou.dtsi" 2
# 55 "./versal-pmc-iou.dtsi"
/ {
 lqspi_mr: lqspi_mr@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;
 };

 lospi_mr: lospi_mr@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;
 };
};

&amba_pmc_iou {
 doc-name = "PMC IOU";
 doc-status = "partial";

 pmc_iou_slcr: pmc_iou_slcr@0xf1060000 {
  doc-status = "partial";
  compatible = "xlnx,versal-pmc-iou-slcr";
  reg = <0x0 0xf1060000 0x0 0x1000 0x0>;
  interrupts = <121>;
  gpio-controller;
  #gpio-cells = <2>;
 };

 pmc_iou_slcr_secure: pmc_iou_slcr_secure@0xf1070000 {
  compatible = "xlnx,versal-pmc-iou-slcr-secure";
  reg = <0x0 0xf1070000 0x0 0x10000 0x0>;
  interrupts = <121>;
  memattr-sd0 = <&sd0_memattr_smid>;
  memattr-write-sd0 = <&sd0_w_memattr_smid>;
  memattr-sd1 = <&sd1_memattr_smid>;
  memattr-write-sd1 = <&sd1_w_memattr_smid>;
  memattr-write-qspi = <&pmc_qspi_dma_w_memattr_smid>;
  memattr-write-ospi = <&ospi_dma_w_memattr_smid>;
 };

 pmc_qspi_dma_0: pmc_qspi_dma@QSPI_DMA {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  interrupts = <125>;
  #stream-id-cells = <0x1>;
  reg = <0x0 (0xf1030000 + 0x800) 0x0 0x800 0x0>;
  dma = <&amba_pmc>;
  memattr = <&pmc_qspi_dma_memattr_smid>;
  memattr-write = <&pmc_qspi_dma_w_memattr_smid>;
  is-dst = <1>;
  reset-gpios = <&pmc_clk_rst 0>;
 };
 pmc_qspi_0: pmc_qspi@0xf1030000 {
  doc-status = "complete";
  #address-cells = <1>;
  #size-cells = <0>;
  #bus-cells = <1>;
  compatible = "xlnx,usmp-gqspi", "cdns,spi-r1p6";
  stream-connected-dma = <&pmc_qspi_dma_0>;
  dma = <&amba_pmc>;
  interrupts = <125>;
  num-ss-bits = <2>;

  reg = <0x0 0xf1030000 0x0 0x1000 0x0
      0x0 0xA0000000 0x0 0x20000000 0x0>;




  speed-hz = <10000000>;
  xlnx,fb-clk = <0x1>;
  xlnx,qspi-clk-freq-hz = <0xbebc200>;
  xlnx,qspi-mode = <0x2>;

  qemu,lqspi-size = <0x20000000>;
  qemu,lqspi-src = <0xA0000000>;
  qemu,lqspi-dst = <0xc0000000>;

  reset-gpios = <&pmc_clk_rst 0>;
 };

 ospi_dma_dst: ospi_dst_dma@0 {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  interrupts = <124>;
  reg = <0x0 (0xf1010000 + 0x1800) 0x0 0x800 0x0>;
  dma = <&amba_pmc>;
  memattr = <&ospi_dma_memattr_smid>;
  memattr-write = <&ospi_dma_w_memattr_smid>;
  is-dst = <1>;
  reset-gpios = <&pmc_clk_rst 1>;
 };
 ospi_dma_src: ospi_src_dma@0 {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  interrupts = <124>;
  reg = <0x0 (0xf1010000 + 0x1000) 0x0 0x800 0x0>;
  dma = <&lospi_mr>;
  memattr = <&ospi_dma_memattr_smid>;
  memattr-write = <&ospi_dma_w_memattr_smid>;
  stream-connected-dma = <&ospi_dma_dst>;
  reset-gpios = <&pmc_clk_rst 1>;
 };
 ospi: spi@0xf1010000 {
  doc-status = "complete";
  #address-cells = <1>;
  #size-cells = <0>;
  #bus-cells = <1>;
  compatible = "xlnx,versal-ospi";
  reg-extended = <&amba_pmc_iou 0x0 0xf1010000 0x0 0x1000 0x0
                  &lospi_mr 0x0 0x0 0x0 0x20000000 0x0>;
  dma-src = <&ospi_dma_src>;
  interrupts = <124>;
  reset-gpios = <&pmc_clk_rst 1>;
  gpios = <&pmc_iou_slcr 3 0>;
 };

 gpio_mr_mux: gpio_mr_mux@0xc0000000 {
  doc-status = "complete";
  compatible = "gpio-mr-mux";
  reg = <0x0 0xc0000000 0x0 0x20000000 0x0>;
  gpios = <&pmc_iou_slcr 2 0
           &pmc_iou_slcr 3 0>;
  mr-size = <0x20000000>;
  mr0 = <&lqspi_mr>;
  mr1 = <&lospi_mr>;
  mr2 = <&lqspi_mr>;
  mr3 = <&lospi_mr>;
 };

 pmc_gpio: pmc_gpio@0xf1020000 {
  #gpio-cells = <1>;
  compatible = "xlnx,zynqmp-gpio";
  gpio-controller;
  interrupts = <122>;
  reg = <0x0 0xf1020000 0x0 0x10000 0x0>;
  reset-gpios = < &pmc_clk_rst 5 >;
 };

 sdhci0: mmc@0xf1040000 {
  doc-status = "complete";
  compatible = "xilinx,zynqmp-sdhci", "generic-sdhci";
  drive-index = <0>;
  reg = <0x0 0xf1040000 0x0 0x10000 0x0>;
  interrupts = <126>;
  dma = <&smmu_tbu0>;
  memattr = <&sd0_memattr_smid>;
  memattr-write = <&sd0_w_memattr_smid>;
  gpios = <&pmc_iou_slcr 0 0>;
  gpio-names = "SLOTTYPE";
  reset-gpios = < &pmc_clk_rst 8 >;
  is-mmc = <0x0>;
  xlnx,has-cd = <0x1>;
  xlnx,has-power = <0x0>;
  xlnx,has-wp = <0x1>;
  xlnx,sdio-clk-freq-hz = <50000000>;
 };

 sdhci1: mmc@0xf1050000 {
  doc-status = "complete";
  compatible = "xilinx,zynqmp-sdhci", "generic-sdhci";
  drive-index = <1>;
  reg = <0x0 0xf1050000 0x0 0x10000 0x0>;
  interrupts = <128>;
  dma = <&smmu_tbu0>;
  memattr = <&sd1_memattr_smid>;
  memattr-write = <&sd1_w_memattr_smid>;
  gpios = <&pmc_iou_slcr 1 0>;
  gpio-names = "SLOTTYPE";
  reset-gpios = < &pmc_clk_rst 3 >;
  is-mmc = <0x0>;
  xlnx,has-cd = <0x1>;
  xlnx,has-power = <0x0>;
  xlnx,has-wp = <0x1>;
  xlnx,sdio-clk-freq-hz = <50000000>;
 };

 pmc_tap: pmc_tap@0xf11a0000 {
  doc-status = "complete";
  doc-comments = "Just a stub.";
  compatible = "xlnx,pmc-tap";
  interrupts-extended = <&pmc_ppu0_io_intc 30>;
  interrupt-names = "sec-dbg-int";
  reg = <0x0 0xf11a0000 0x0 0x80000 0x0>;
 };

 pmc_i2c_wrapper {

  pmc_i2c: pmc_i2c@0xf1000000 {
   compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10";
   interrupts = <123>;
   reg-extended = <&amba_pmc_iou 0x0 0xf1000000 0x0 0x10000 0x0>;
   #address-cells = <1>;
   #size-cells = <0>;
   reset-gpios = <&pmc_clk_rst 4>;
  };

 };
};
# 36 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-sys.dtsi" 1
# 30 "./versal-pmc-sys.dtsi"
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
# 31 "./versal-pmc-sys.dtsi" 2

&amba_pmc_sys {
 doc-name = "PMC System";
 doc-status = "partial";
 pmc_clk_rst: pmc_clk_rst@0xf1260000 {
  doc-status = "partial";
  compatible = "xlnx,pmc-clk-rst";
  reg = <0x0 0xf1260000 0x0 0x80000 0x0>;
  interrupts = <121>;
  gpio-controller;
  #gpio-cells = <1>;
 };

 pmc_int: pmc_int@0xf1330000 {
  doc-status = "partial";
  compatible = "xlnx,versal-pmc-int";
  reg = <0x0 0xf1330000
                       0x0 0x280000 0x0>;
  interrupts = <133>;
 };

 pmc_reset_domain@0 {
  compatible = "qemu,reset-device";
  gpios = < &pmc_clk_rst 2 >;
 };

 pmc_global: pmc_global@0xf1110000 {
  doc-status = "partial";
  #gpio-cells = <1>;
  gpio-controller;


  interrupts-extended = <&pmc_ppu1_io_intc 31
           &pmc_ppu1_io_intc 30
           &pmc_ppu1_io_intc 29
           &pmc_ppu1_io_intc 28
           &pmc_ppu1_io_intc 27
           &pmc_ppu1_io_intc 23
           &pmc_ppu1_io_intc 22
           &dummy1 0
           &pmc_ppu0_io_intc 16
           &pmc_ppu0_io_intc 17
           &pmc_ppu0_io_intc 18
           &pmc_ppu0_io_intc 19
           &pmc_ppu0_io_intc 20
           &pmc_ppu0_io_intc 21
           &pmc_ppu0_io_intc 22
           &pmc_ppu0_io_intc 23
           &pmc_ppu0_io_intc 24
           &pmc_ppu0_io_intc 25
           &pmc_ppu0_io_intc 26
           &pmc_ppu0_io_intc 27
           &dummy1 0
           &pmc_ppu0_io_intc 29>;
  reg = <0x0 0xf1110000 0x0 0x50000 0x0>;
  gpios = <&pmc_puf_ctrl 0>;

  bbram = <&pmc_bbram_ctrl>;
  efuse = <&xlnx_pmc_efuse_cache>;

  compatible = "xlnx,pmc_global";
 };
 pmc_err_mng: pmc_err_mng@0xF1130000 {
  compatible = "xlnx,PmcErrMngmnt";
  reg = <0x0 0xF1130000 0x0 0x10000 0x0>;
  interrupts = <121>;
 };
 pmc_stream_zero: pmc_stream_zero@ {
  compatible = "xlnx,pmc-stream-zero";
  reg = <0x0 (0xf1110000 + 0x518) 0x0 4 0x1>;
  stream-connected-pzm = <&pmc_stream_switch>;
 };
 pmc_analog@0xf1160000 {
  compatible = "xlnx,pmc-analog";
  reg = <0x0 0xf1160000 0x0 0x40000 0x0>;

  interrupts-extended = <&pmc_gic_proxy
     0 159 0>;
  tamper-sink = <&pmc_global>;
 };
 pmc_sysmon@0xf1270000 {
  compatible = "xlnx,pmc-sysmon";
  reg = <0x0 0xf1270000 0x0 0x30000 0x0>;
  interrupts = <144
         145>;
  reset-gpios = <&pmc_clk_rst 21>;

  efuse = <&xlnx_pmc_efuse_cache>;
  ams-sat0 = <&pmc_ams_sat0>;
  ams-sat1 = <&pmc_ams_sat1>;
  tamper-sink = <&pmc_global>;
 };
 pmc_ams_sat0: pmc_ams_sat@0 {
  compatible = "xlnx,ams-sat";
  reg = <0x0 (0xf1270000 + 0x10000) 0x0 0x00010000 0x1>;
 };
 pmc_ams_sat1: pmc_ams_sat@1 {
  compatible = "xlnx,ams-sat";
  reg = <0x0 (0xf1270000 + 0x20000) 0x0 0x00010000 0x1>;
 };
 pmc_global_tamper: versal_pmc_tamper@ {
  compatible = "xlnx,pmc_tamper";
  reg-extended = <&amba_pmc_sys 0x0 0xF1110530 0x0 0x38 0x1
    &lmb_pmc_ppu0 0x0 0xF0041100 0x0 0x38 0x2>;
 };
};
# 37 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-sec.dtsi" 1
# 30 "./versal-pmc-sec.dtsi"
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
# 31 "./versal-pmc-sec.dtsi" 2

&amba_pmc_sec {
 doc-name = "PMC Secure";
 doc-status = "in-progress";
 qemu-fdt-abort-on-error = "Unable to create PMC security models. Cannot continue.\nTry installing libgcrypt.";

 trng@0xf1230000 {
  doc-status = "complete";
  compatible = "xlnx,versal-trng";
  reg = <0x0 0xf1230000 0x0 0x1000 0x0>;
  interrupts = <141>;
 };

 pmc_dma0_src: pmc_dma0_src@0 {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  stream-connected-dma0 = <&pmc_stream_switch> ;
  reg = <0x0 0xf11c0000 0x0 0x800 0x0>;
  dma = <&amba_pmc>;
  memattr = <&pmc_dma0_memattr>;
  dma-width = <16>;
  interrupts = <131>;
  reset-gpios = <&pmc_clk_rst 19>;
 };
 pmc_dma0_dst: pmc_dma0_dst@0 {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  reg = <0x0 (0xf11c0000 + 0x800) 0x0 0x800 0x0>;
  dma = <&amba_pmc>;
  memattr = <&pmc_dma0_memattr>;
  is-dst = <1>;
  dma-width = <16>;
  interrupts = <131>;
  reset-gpios = <&pmc_clk_rst 19>;
 };
 pmc_dma1_src: pmc_dma1_src@0 {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  stream-connected-dma1 = <&pmc_stream_switch> ;
  reg = <0x0 0xf11d0000 0x0 0x800 0x0>;
  dma = <&amba_pmc>;
  memattr = <&pmc_dma1_memattr>;
  dma-width = <16>;
  interrupts = <132>;
  reset-gpios = <&pmc_clk_rst 20>;
 };
 pmc_dma1_dst: pmc_dma1_dst@0 {
  doc-status = "complete";
  compatible = "zynqmp,csu-dma";
  reg = <0x0 (0xf11d0000 + 0x800) 0x0 0x800 0x0>;
  dma = <&amba_pmc>;
  memattr = <&pmc_dma1_memattr>;
  is-dst = <1>;
  dma-width = <16>;
  interrupts = <132>;
  reset-gpios = <&pmc_clk_rst 20>;
 };
 pmc_stream_switch: pmc_stream_switch@0 {
  doc-status = "complete";
  compatible = "versal,pmc-sss";
  reg-extended = <&amba_pmc_sys 0x0 (0xf1110000 + 0x500) 0x0 0x4 0x1>;
  stream-connected-dma0 = <&pmc_dma0_dst>;
  stream-connected-dma1 = <&pmc_dma1_dst>;
  stream-connected-aes = <&pmc_aes>;
  stream-connected-sha = <&pmc_sha3>;
  stream-connected-sbi = <&pmc_sbi>;
 };

 pmc_sha3: pmc_sha@0xf1210000 {
  doc-status = "complete";
  compatible = "zynqmp,csu-sha3";
  reg = <0x0 0xf1210000 0x0 0x100 0x0>;
  interrupts = <140>;
 };

 pmc_aes: pmc_aes@0xf11e0000 {
  doc-status = "in-progress";
  #gpio-cells = <1>;
  gpio-controller;
  compatible = "xlnx,versal-aes";
  stream-connected-aes = <&pmc_stream_switch> ;
  reg = <0x0 0xf11e0000 0x0 0x100 0x0>;
  interrupts = <137>;

  gpios = <&xlnx_aes 0
    &xlnx_aes 1>;
  gpio-names = "busy", "done";
  aes-core = <&xlnx_aes>;
  xlnx_aes: xlnx_aes@0 {
   #gpio-cells = <1>;
   compatible = "xlnx-aes";
   gpios = <&pmc_aes 0>;
   gpio-names = "reset";
  };
 };

 pmc_rsa: pmc_rsa@0xf1200000 {
  doc-status = "complete";
  compatible = "xlnx,versal-ecdsa-rsa";
  reg = < 0x0 0xf1200000 0x0 0x6c 0x0>;
  interrupts = <138>;
 };

 xlnx_pmc_efuse_cache: xlnx_pmc_efuse_cache@0xf1250000 {
  doc-status = "complete";



  compatible = "xlnx,pmc-efuse-cache";

  reg = <0x0 0xf1250000 0x0 0x00C00 0x0>;
  efuse = <&xlnx_efuse>;
 };

 pmc_puf_ctrl: pmc_puf_ctrl@0 {
  compatible = "xlnx,versal-puf-ctrl";
  zynqmp-aes-key-sink-puf = <&pmc_aes>;
  efuse = <&xlnx_efuse>;
  reg = <0x0 (0xf1110000 + 0x40000) 0x0 0x10000 0x0>;
  #gpio-cells = <1>;
  gpio-controller;
 };

 pmc_efuse: pmc_efuse@0xf1240000 {
  doc-status = "complete";



  compatible = "xlnx,versal-efuse";

  #gpio-cells = <2>;
  zynqmp-aes-key-sink-efuses = <&pmc_aes>;
  zynqmp-aes-key-sink-efuses-user0 = <&pmc_aes>;
  zynqmp-aes-key-sink-efuses-user1 = <&pmc_aes>;
  reg = <0x0 0xf1240000 0x0 0x00064 0x0>;
  interrupts = <139>;
  efuse = <&xlnx_efuse>;

  xlnx_efuse: xlnx_efuse@0 {
   doc-ignore = <1>;
   compatible = "xlnx,efuse";
   efuse-nr = <3>;
   efuse-size = <8192>;
  };
 };

 pmc_bbram_ctrl: pmc_bbram@0xf11f0000 {
  doc-status = "partial";
  doc-limitations = "Missing AES key connections.";
  compatible = "xlnx,bbram-ctrl";
  reg = <0x0 0xf11f0000 0x0 0x00050 0x0>;
  interrupts = <121>;
  zynqmp-aes-key-sink-bbram = <&pmc_aes>;
  crc-zpads = <0>;
 };
 pmc_sbi: pmc_sbi@0xf1220000 {
  doc-status = "complete";
  compatible = "pmc,slave-boot";
  reg = <0x0 0xf1220000 0x0 0x10000 0x0
         0x0 0xf2100000 0x0 0x10000 0x0>;
  interrupts = <136>;
  stream-connected-sbi = <&pmc_stream_switch>;
  reset-gpios = <&pmc_clk_rst 18>;
 };

};
# 38 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-npi.dtsi" 1
# 30 "./versal-pmc-npi.dtsi"
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
# 31 "./versal-pmc-npi.dtsi" 2
# 168 "./versal-pmc-npi.dtsi"
&amba_pmc_pl {
 noc_npi_nir: noc_npi_nir@0xf6000000 {
  compatible="xlnx.npi-nir";
  reg = <0x0 0xf6000000 0x0 0x10000 0x1>;
 };
# 184 "./versal-pmc-npi.dtsi"
 npi_ddrmc_ub0: npi_ddrmc_ub0@0xf6110000 { doc-limitations = "Only the uB rst is supported"; compatible = "xlnx,versal-ddrmc-ub"; reg = <0x0 0xf6110000 0x0 0x40000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; #gpio-cells = <1>; gpio-controller; };
 npi_ddrmc_main0: npi_ddrmc_main0@0xf6150000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-main"; reg = <0x0 0xf6150000 0x0 0x10000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; };
 npi_ddrmc_noc0: npi_ddrmc_noc0@0xf6070000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-noc"; reg = <0x0 0xf6070000 0x0 0x20000 0xffffffff>; reset-gpios = <&pmc_clk_rst 15 >; };


 npi_ddrmc_ub1: npi_ddrmc_ub1@0xf6280000 { doc-limitations = "Only the uB rst is supported"; compatible = "xlnx,versal-ddrmc-ub"; reg = <0x0 0xf6280000 0x0 0x40000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; #gpio-cells = <1>; gpio-controller; };
 npi_ddrmc_main1: npi_ddrmc_main1@0xf62c0000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-main"; reg = <0x0 0xf62c0000 0x0 0x10000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; };
 npi_ddrmc_noc1: npi_ddrmc_noc1@0xf6210000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-noc"; reg = <0x0 0xf6210000 0x0 0x20000 0xffffffff>; reset-gpios = <&pmc_clk_rst 15 >; };


 npi_ddrmc_ub2: npi_ddrmc_ub2@0xf63f0000 { doc-limitations = "Only the uB rst is supported"; compatible = "xlnx,versal-ddrmc-ub"; reg = <0x0 0xf63f0000 0x0 0x40000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; #gpio-cells = <1>; gpio-controller; };
 npi_ddrmc_main2: npi_ddrmc_main2@0xf6430000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-main"; reg = <0x0 0xf6430000 0x0 0x10000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; };
 npi_ddrmc_noc2: npi_ddrmc_noc2@0xf6380000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-noc"; reg = <0x0 0xf6380000 0x0 0x20000 0xffffffff>; reset-gpios = <&pmc_clk_rst 15 >; };


 npi_ddrmc_ub3: npi_ddrmc_ub3@0xf6560000 { doc-limitations = "Only the uB rst is supported"; compatible = "xlnx,versal-ddrmc-ub"; reg = <0x0 0xf6560000 0x0 0x40000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; #gpio-cells = <1>; gpio-controller; };
 npi_ddrmc_main3: npi_ddrmc_main3@0xf65a0000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-main"; reg = <0x0 0xf65a0000 0x0 0x10000 0x1>; reset-gpios = <&pmc_clk_rst 15 >; };
 npi_ddrmc_noc3: npi_ddrmc_noc3@0xf64f0000 { doc-limitations = "Just a stub"; compatible = "xlnx,versal-ddrmc-noc"; reg = <0x0 0xf64f0000 0x0 0x20000 0xffffffff>; reset-gpios = <&pmc_clk_rst 15 >; };




 npi_ddrmc_xmpu0: npi_ddrmc_xmpu0@0xf6070000 { compatible = "xlnx,versal-ddrmc-xmpu"; reg-extended = < &amba_pmc_pl 0x0 (0xf6070000 + 0x10000) 0x0 0x10000 0x1 &amba 0x0 0x0 0x0 0x80000000 0x0 >; protected-mr = <&ddr>; mr-0 = <&amba>; protected-base = <0x0>; };



 npi_me: npi_me@0xf70a0000 {
  compatible = "xlnx,me-npi";
  reg = <0x0 0xf70a0000 0x0 0x10000 0x1>;
  reset-gpios = <&pmc_clk_rst 15 >;
 };
# 226 "./versal-pmc-npi.dtsi"
 noc_npi_devs: noc_npi_devs@0 {
  compatible="xlnx,noc-npi-dev";
  reg = <0x0 0xF6000000 0x0 0x2000000 0x0>;
 };

};
# 39 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-pl.dtsi" 1
# 30 "./versal-pmc-pl.dtsi"
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
# 31 "./versal-pmc-pl.dtsi" 2

&amba_pmc_pl {
 doc-name = "PMC PL";
 doc-status = "partial";

 cfu: cfu@0xf12b0000 {
  doc-status = "partial";
  doc-comments = "Stub";
  doc-limitations = "No way to extract CFRAME data.";

  compatible = "xlnx,versal-cfu";
  reg = <0x0 0xf12b0000 0x0 0x1000 0x0
         0x0 0xf12c0000 0x0 0x1000 0x0
         0x0 0xf1f80000 0x0 0x40000 0x0>;
  interrupts = <120>;
  chardev = "pmc-cfu";
  dma = <&amba_pmc>;
  cframe0 = <&cframe0_reg>;
  cframe1 = <&cframe1_reg>;
  cframe2 = <&cframe2_reg>;
  cframe3 = <&cframe3_reg>;
  cframe4 = <&cframe4_reg>;
  cframe5 = <&cframe5_reg>;
  cframe6 = <&cframe6_reg>;
  cframe7 = <&cframe7_reg>;
  cframe8 = <&cframe8_reg>;
  cframe9 = <&cframe9_reg>;
  cframe10 = <&cframe10_reg>;
  cframe11 = <&cframe11_reg>;
  cframe12 = <&cframe12_reg>;
  cframe13 = <&cframe13_reg>;
  cframe14 = <&cframe14_reg>;
 };
 cfu_fdro: cfu_fdro@0xf12c2000 {
  compatible = "xlnx,versal-cfu-fdro";
  reg = <0x0 0xf12c2000 0x0 0x1000 0x0>;
 };
 cfu_sfr: cfu_sfr@0xf12c1000 {
  compatible = "xlnx,versal-cfu-sfr";
  reg = <0x0 0xf12c1000 0x0 0x1000 0x0>;
  cfu = <&cfu>;
 };
 cframe0_reg: cframe0_reg@0xf12d0000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12d0000 0x0 0x1000 0x0
         0x0 0xf12d1000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
  blktype0-frames = <34111>;
  blktype1-frames = <3528>;
  blktype2-frames = <12800>;
  blktype3-frames = <11>;
  blktype4-frames = <5>;
  blktype5-frames = <1>;
  blktype6-frames = <1>;
 };
 cframe1_reg: cframe1_reg@0xf12d2000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12d2000 0x0 0x1000 0x0
         0x0 0xf12d3000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
  blktype0-frames = <38498>;
  blktype1-frames = <3841>;
  blktype2-frames = <15361>;
  blktype3-frames = <13>;
  blktype4-frames = <7>;
  blktype5-frames = <3>;
  blktype6-frames = <1>;
 };
 cframe2_reg: cframe2_reg@0xf12d4000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12d4000 0x0 0x1000 0x0
         0x0 0xf12d5000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
  blktype0-frames = <38498>;
  blktype1-frames = <3841>;
  blktype2-frames = <15361>;
  blktype3-frames = <13>;
  blktype4-frames = <7>;
  blktype5-frames = <3>;
  blktype6-frames = <1>;
 };
 cframe3_reg: cframe3_reg@0xf12d6000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12d6000 0x0 0x1000 0x0
         0x0 0xf12d7000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
  blktype0-frames = <38498>;
  blktype1-frames = <3841>;
  blktype2-frames = <15361>;
  blktype3-frames = <13>;
  blktype4-frames = <7>;
  blktype5-frames = <3>;
  blktype6-frames = <1>;
 };
 cframe4_reg: cframe4_reg@0xf12d8000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12d8000 0x0 0x1000 0x0
         0x0 0xf12d9000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe5_reg: cframe5_reg@0xf12da000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12da000 0x0 0x1000 0x0
         0x0 0xf12db000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe6_reg: cframe6_reg@0xf12dc000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12dc000 0x0 0x1000 0x0
         0x0 0xf12dd000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe7_reg: cframe7_reg@0xf12de000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12de000 0x0 0x1000 0x0
         0x0 0xf12df000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe8_reg: cframe8_reg@0xf12e0000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12e0000 0x0 0x1000 0x0
         0x0 0xf12e1000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe9_reg: cframe9_reg@0xf12e2000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12e2000 0x0 0x1000 0x0
         0x0 0xf12e3000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe10_reg: cframe10_reg@0xf12e4000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12e4000 0x0 0x1000 0x0
         0x0 0xf12e5000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe11_reg: cframe11_reg@0xf12e6000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12e6000 0x0 0x1000 0x0
         0x0 0xf12e7000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe12_reg: cframe12_reg@0xf12e8000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12e8000 0x0 0x1000 0x0
         0x0 0xf12e9000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe13_reg: cframe13_reg@0xf12ea000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12ea000 0x0 0x1000 0x0
         0x0 0xf12eb000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe14_reg: cframe14_reg@0xf12ec000 {
  compatible = "xlnx.cframe_reg";
  reg = <0x0 0xf12ec000 0x0 0x1000 0x0
         0x0 0xf12ed000 0x0 0x1000 0x0>;
  interrupts = <121>;
  cfu-fdro = <&cfu_fdro>;
 };
 cframe_bcast_reg: cframe_bcast_reg@0xf12ee000 {
  compatible = "xlnx.cframe-bcast-reg";
  reg = <0x0 0xf12ee000 0x0 0x1000 0x0
         0x0 0xf12ef000 0x0 0x1000 0x0>;
  cframe0 = <&cframe0_reg>;
  cframe1 = <&cframe1_reg>;
  cframe2 = <&cframe2_reg>;
  cframe3 = <&cframe3_reg>;
  cframe4 = <&cframe4_reg>;
  cframe5 = <&cframe5_reg>;
  cframe6 = <&cframe6_reg>;
  cframe7 = <&cframe7_reg>;
  cframe8 = <&cframe8_reg>;
  cframe9 = <&cframe9_reg>;
  cframe10 = <&cframe10_reg>;
  cframe11 = <&cframe11_reg>;
  cframe12 = <&cframe12_reg>;
  cframe13 = <&cframe13_reg>;
  cframe14 = <&cframe14_reg>;
 };
};
# 40 "./versal-pmc.dtsi" 2
# 1 "./versal-pmc-bat.dtsi" 1
# 30 "./versal-pmc-bat.dtsi"
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
# 31 "./versal-pmc-bat.dtsi" 2

&amba_pmc_bat {
 doc-name = "PMC BAT";
 doc-status = "partial";

 rtc: rtc@0xf12a0000 {
  doc-status = "complete";
  doc-comments = "Versal PMC RTC";
  compatible = "xlnx,zynqmp-rtc";
  interrupts = <121 142 143>;
  reg = <0x0 0xf12a0000 0x0 0x10000 0x0>;
                xlnx,version="2.0.0";
 };
};
# 41 "./versal-pmc.dtsi" 2
# 55 "./board-versal-pmc-virt.dts" 2
# 1 "./versal-psm.dtsi" 1
# 30 "./versal-psm.dtsi"
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
# 31 "./versal-psm.dtsi" 2
# 127 "./versal-psm.dtsi"
/ {
 lmb_psm: lmb_psm@0 {
  doc-name = "LMB PPU0";
  doc-status = "in-progress";
  psm_0_io_module: io-module@00 { doc-status = "complete"; #address-cells = <2>; #size-cells = <1>; #priority-cells = <0>; compatible = "simple-bus"; container = <&lmb_psm>; priority = <0xffffffff>; psm0_io_intc: psm0_intc@0C { #interrupt-cells = <1>; compatible = "xlnx,io-intc-1.02.a", "xlnx,io_intc"; interrupt-controller ; interrupts-extended = <&psm0 0>; reg = <0x0 (0xffc80000 | 0x0C) 0x4 0x0 (0xffc80000 | 0x30) 0x10 0x0 (0xffc80000 | 0x80) 0x7C>; xlnx,intc-addr-width = <0x20>; xlnx,intc-base-vectors = <0x0>; xlnx,intc-has-fast = <0x0>; xlnx,intc-intr-size = <0x10>; xlnx,intc-level-edge = <0x0>; xlnx,intc-positive = <0xffff>; xlnx,intc-use-ext-intr = <0x1>; }; psm0_io_gpo1: psm0_gpo@10 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 (0xffc80000 | 0x10) 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x3>; xlnx,use-gpo = <0x1>; }; psm0_io_pit1: psm0_pit@40 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&psm0_io_intc>; interrupts = <3>; reg = <0x0 (0xffc80000 | 0x40) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&psm0_io_gpo1 1 &psm0_io_pit2 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; psm0_io_pit2: psm0_pit@50 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&psm0_io_intc>; interrupts = <4>; reg = <0x0 (0xffc80000 | 0x50) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; psm0_io_pit3: psm0_pit@60 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&psm0_io_intc>; interrupts = <5>; reg = <0x0 (0xffc80000 | 0x60) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&psm0_io_gpo1 6 &psm0_io_pit4 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; psm0_io_pit4: psm0_pit@70 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&psm0_io_intc>; interrupts = <6>; reg = <0x0 (0xffc80000 | 0x70) 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; };

  psm_local: psm_local_reg@0xffc88000 {
   gpio-controller;
   #gpio-cells = <1>;
   compatible = "xlnx,psm-local-reg";
   reg = <0x0 0xffc88000 0x0 0x8000 0x0>;


   gpios = <
    &apu_ctrl 0
    &apu_ctrl 1
    &apu_ctrl 2
    &apu_ctrl 3
   >;

  };
 };
};

&amba_psm {
 psm_gic_proxy: psm_gic_proxy@0 {
  doc-status = "complete";
  #interrupt-cells = <3>;
  interrupt-controller;

  compatible = "xlnx,zynqmp-gicp";
  reg = <0x0 (0xffc90000 + 0x2000) 0x0 0x100 0x0>;
  interrupt-parent = <&psm0_io_intc>;
  interrupts = <22>;
 };

 psm_global: psm_global_reg@0xffc90000 {
  compatible = "xlnx,psm-global-reg";
  reg = <0x0 0xffc90000 0x0 0xf000 0x0>;
  interrupt-parent = <&psm0_io_intc>;
  interrupts = <28 30
    26 27
    31 24>;
  #gpio-cells = <1>;
  gpios = < &psm_local 32 &psm_local 33
     &psm_local 34 &psm_local 35
     &psm_local 36 &psm_local 37
     &psm_local 38 &psm_local 39
     &psm_local 40 &psm_local 41
     &psm_local 42 &psm_local 43
     &psm_local 44 &psm_local 45
     &psm_local 46 &psm_local 47
     &psm_local 48 &psm_local 49
     &psm_local 50 &psm_local 51
     &psm_local 52 &psm_local 53
     &psm_local 54 &psm_local 55
     &psm_local 56 &psm_local 57
     &psm_local 58 &psm_local 59
     &psm_local 60 &psm_local 61
     &psm_local 62 &psm_local 63

     &psm_local 64 &psm_local 65
     &psm_local 66 &psm_local 67
     &psm_local 68 &psm_local 69
     &psm_local 70 &psm_local 71
     &psm_local 72 &psm_local 73
     &psm_local 74 &psm_local 75
     &psm_local 76 &psm_local 77
     &psm_local 78 &psm_local 79
     &psm_local 80 &psm_local 81
     &psm_local 82 &psm_local 83
     &psm_local 84 &psm_local 85
     &psm_local 86 &psm_local 87
     &psm_local 88 &psm_local 89
     &psm_local 90 &psm_local 91
     &psm_local 92 &psm_local 93
     &psm_local 94 &psm_local 95
     &psm_local 96 &psm_local 97
     &psm_local 98 &psm_local 99
     &rpu_ctrl 8 &rpu_ctrl 9
   >;
 };

 psm_err_mng: psm_err_mng@0xffc90000 {
  compatible = "xlnx,psm-err-mng";
  reg = <0x0 (0xffc90000 + 0x1000) 0x0 0x100 0>;
 };
};
# 56 "./board-versal-pmc-virt.dts" 2
# 1 "./versal-ddrmc.dtsi" 1
# 30 "./versal-ddrmc.dtsi"
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
# 31 "./versal-ddrmc.dtsi" 2
# 127 "./versal-ddrmc.dtsi"
&lmb_ddrmc0 {
 doc-name = "LMB DDRMC0";
 doc-status = "partial";

 ddrmc_0_io_module: io-module@00 { doc-status = "complete"; #address-cells = <2>; #size-cells = <1>; #priority-cells = <0>; compatible = "simple-bus"; container = <&lmb_ddrmc0>; priority = <0xffffffff>; ddrmc0_io_intc: ddrmc0_intc@0C { #interrupt-cells = <1>; compatible = "xlnx,io-intc-1.02.a", "xlnx,io_intc"; interrupt-controller ; interrupts-extended = <&ddrmc_ub0 0>; reg = <0x0 0x0001b00C 0x4 0x0 0x0001b030 0x10 0x0 0x0001b080 0x7C>; xlnx,intc-addr-width = <0x20>; xlnx,intc-base-vectors = <0x0>; xlnx,intc-has-fast = <0x0>; xlnx,intc-intr-size = <0x10>; xlnx,intc-level-edge = <0x0>; xlnx,intc-positive = <0xffff>; xlnx,intc-use-ext-intr = <0x1>; }; ddrmc0_io_gpo1: ddrmc0_gpo@10 { #gpio-cells = <1>; gpio-controller; compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo"; reg = <0x0 0x0001b010 0x4>; xlnx,gpo-init = <0x0>; xlnx,gpo-size = <0x3>; xlnx,use-gpo = <0x1>; }; ddrmc0_io_pit1: ddrmc0_pit@40 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&ddrmc0_io_intc>; interrupts = <3>; reg = <0x0 0x0001b040 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&ddrmc0_io_gpo1 1 &ddrmc0_io_pit2 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; ddrmc0_io_pit2: ddrmc0_pit@50 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&ddrmc0_io_intc>; interrupts = <4>; reg = <0x0 0x0001b050 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; ddrmc0_io_pit3: ddrmc0_pit@60 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&ddrmc0_io_intc>; interrupts = <5>; reg = <0x0 0x0001b060 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpios = <&ddrmc0_io_gpo1 6 &ddrmc0_io_pit4 0>; gpio-names = "ps_config","ps_hit_in"; gpio-controller; #gpio-cells = <1>; }; ddrmc0_io_pit4: ddrmc0_pit@70 { compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit"; interrupt-parent = <&ddrmc0_io_intc>; interrupts = <6>; reg = <0x0 0x0001b070 0xc>; xlnx,pit-interrupt = <0x1>; xlnx,pit-prescaler = <0x9>; xlnx,pit-readable = <0x1>; xlnx,pit-size = <0x20>; xlnx,use-pit = <0x1>; frequency = <460000000>; gpio-controller; #gpio-cells = <1>; }; };

 ddrmc_uart0: ddrmc_uart0@0 {
  compatible = "xlnx,io_uart";
  reg = <0x0 0x0001b000 0xC 0x0001b04c 0x4>;
  xlnx,use-uart-rx = <0x1>;
  xlnx,use-uart-tx = <0x1>;
  chardev = "ddrmc-uart0", "serial1";
 };

 alias_npi_ddrmc_main {
  compatible = "qemu:memory-region";
  alias = <&npi_ddrmc_main0>;
  reg = <0x0 0x0 0x0 0x08000 0x0>;
 };
};
# 57 "./board-versal-pmc-virt.dts" 2
# 1 "./versal-ps-iou.dtsi" 1
# 31 "./versal-ps-iou.dtsi"
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
# 32 "./versal-ps-iou.dtsi" 2
# 85 "./versal-ps-iou.dtsi"
&amba_fpd {

 apu_ctrl: apu_ctrl@0xfd5c0000 {
  compatible = "xlnx,versal-apu-ctrl";
  reg = <0x0 0xfd5c0000 0x0 0x10000 0x0>;
  cpu0 = <&cpu0>;
  cpu1 = <&cpu1>;
  #gpio-cells = <1>;
 };


 afi_fm@0xfd360000 {
  compatible = "xlnx,versal-afi-fm";
  reg = <0x0 0xfd360000 0x0 0x10000 0x0>;
 };

 afi_fm@0xfd380000 {
  compatible = "xlnx,versal-afi-fm";
  reg = <0x0 0xfd380000 0x0 0x10000 0x0>;
 };


 cci_reg@0xfd5e0000 {
  compatible = "xlnx,cci_reg";
  reg = <0x0 0xfd5e0000 0x0 0x100000 0x0>;
 };



 cci500@0xfd000000 {
  compatible = "xlnx,cci500";
  reg = <0x0 0xfd000000 0x0 0x100000 0x0>;
 };


 cpm_crcpm@0xfca00000 {
  compatible = "xlnx,versal_cpm_crcpm";
  reg = <0x0 0xfca00000 0x0 0x10000 0x0>;
 };

 cpm_pcsr@0xfcff0000 {
  compatible = "xlnx,versal_cpm_pcsr";
  reg = <0x0 0xfcff0000 0x0 0x10000 0x0>;
 };

 cpm_slcr_secure@0xfca20000 {
  compatible = "xlnx.cpm_slcr_secure";
  reg = <0x0 0xfca20000 0x0 0x10000 0x0>;
 };

 fpd_slcr@0xfd610000 {
  compatible = "xlnx,versal-fpd-slcr";
  interrupts = <100>;
  reg = <0x0 0xfd610000 0x0 0x10000 0x0>;
 };

 fpd_slcr_secure@0xfd610000 {
  compatible = "xlnx,versal-fpd-slcr-secure";
  interrupts = <100>;
  reg = <0x0 0xfd690000 0x0 0x10000 0x0>;
 };


 wwdt0: watchdog@0xfd4d0000 {
  compatible = "xlnx,versal-wwdt";
  reg = <0x0 0xfd4d0000 0x0 0x10000 0x0>;

  interrupts = <100
     109
     108
     110>;
  pclk = <100000000>;
  reset-gpios = <&crf 27>;
 };

};

&amba_lpd {
 gem0: ethernet@0xff0c0000 { #address-cells = <1>; #size-cells = <0>; #priority-cells = <0>; compatible = "cdns,gem"; interrupts = <56 56>; dma = <&smmu_tbu0>; memattr = <&gem0_memattr_smid>; memattr-write = <&gem0_w_memattr_smid>; reg = <0x0 0xff0c0000 0x0 0x10000 0x0>; num-priority-queues = <2>; reset-gpios = <&crl 1>; power-gpios = <&psm_local 21>; };
 gem1: ethernet@0xff0d0000 { #address-cells = <1>; #size-cells = <0>; #priority-cells = <0>; compatible = "cdns,gem"; interrupts = <58 58>; dma = <&smmu_tbu0>; memattr = <&gem1_memattr_smid>; memattr-write = <&gem1_w_memattr_smid>; reg = <0x0 0xff0d0000 0x0 0x10000 0x0>; num-priority-queues = <2>; reset-gpios = <&crl 2>; power-gpios = <&psm_local 22>; };

 serial0: serial@0xff000000 {
  compatible = "pl011";
  interrupts = <18>;
  reg = <0x0 0xff000000 0x0 0x10000 0x0 >;
  reset-gpios = < &crl 5 >;
  chardev = "serial2";
 };
 serial1: serial@0xff010000 {
  compatible = "pl011";
  interrupts = <19>;
  reg = <0x0 0xff010000 0x0 0x10000 0x0 >;
  reset-gpios = < &crl 6 >;
  chardev = "serial3";
 };

 canfdbus0: canfdbus@0 {
  compatible = "can-bus";
 };

 can0: can@0xff060000 {
  compatible = "xlnx,versal-canfd";
  rx-fifo0 = <0x40>;
  rx-fifo1 = <0x40>;
  enable-rx-fifo1 = <0x1>;
  canfdbus = <&canfdbus0>;
  interrupts = <20>;
  reg = <0x0 0xff060000 0x0 0x10000 0x0>;
  reset-gpios = <&crl 9>;
 };
 can1: can@0xff070000 {
  compatible = "xlnx,versal-canfd";
  rx-fifo0 = <0x40>;
  rx-fifo1 = <0x40>;
  enable-rx-fifo1 = <0x1>;
  canfdbus = <&canfdbus0>;
  interrupts = <21>;
  reg = <0x0 0xff070000 0x0 0x10000 0x0>;
  reset-gpios = <&crl 10>;
 };

 crl: crl@0xff5e0000 {
  compatible = "xlnx,versal-crl";
  reg = <0x0 0xff5e0000 0x0 0x300000 0x0>;
  gpio-controller;
  #gpio-cells = <1>;
 };

 lpd_iou_slcr: slcr@0xff080000 {
  compatible = "xlnx,versal-lpd-iou-slcr";
  reg = <0x0 0xff080000 0x0 0x20000 0x0>;
 };


 rpu_ctrl: rpu_ctrl@0xff9a0000 {
  compatible = "xlnx,versal-rpu";
  reg-extended = <&amba_lpd 0x0 0xff9a0000 0x0 0x10000 0x0
                                &amba_r5_0 0x0 0x0 0x0 0x80000 0x0
                                &amba 0x0 0xffe00000 0x0 0x60000 0x0
                                &amba_r5_1 0x0 0x0 0x0 0x80000 0x0
                                &amba 0x0 0xFFE90000 0x0 0x50000 0x0>;
  rpu0 = <&rpu_cpu0>;
  rpu1 = <&rpu_cpu1>;

  gpio-controller;
  #gpio-cells = <1>;

  gpios = < &crl 32 &crl 33
     &psm_local 42 &psm_local 43
   >;
 };


 ipi: ipi@0xff300000 {
  compatible = "xlnx,versal-ipi";
  reg = <0x0 0xff300000 0x0 0x100000 0x0>;



  interrupts = <29
         27
         30 31
         32 33
         34 35
         36
         28
         10>;
  reset-gpios = <&crl 25>;
 };

 spi0: spi@0xff040000 {
  compatible = "cdns,spi-r1p6";
  interrupts = <16>;
  num-ss-bits = <4>;
  reg = <0x0 0xff040000 0x0 0x10000 0x0 >;

  #address-cells = <1>; 
  #size-cells = <0>;
  #bus-cells = <1>;
  reset-gpios = <&crl 7>;
 };
 spi1: spi@0xff050000 {
  compatible = "cdns,spi-r1p6";
  interrupts = <17>;
  num-ss-bits = <4>;
  reg = <0x0 0xff050000 0x0 0x10000 0x0 >;

  #address-cells = <1>; 
  #size-cells = <0>;
  #bus-cells = <1>;
  reset-gpios = <&crl 8>;
 };

 dwc3_0: usb2@USB2_0_XHCI {
  compatible = "usb_dwc3";
  reg = <0x0 (0xfe200000 + 0xC100) 0x0 0x600 0x0 0x0 0xfe200000 0x0 0x100000 0x0>;
  interrupts = <22 23 24 25>;
  dma = <&smmu_tbu0>;
  memattr = <&usb0_memattr>;
  reset-gpios = <&crl 4>;
  intrs = <4>;
  slots = <2>;
 };

 ttc0: timer@0xff0e0000 {
  compatible = "xlnx,ps7-ttc-1.00.a";
  interrupts = <37 38 39>;
  reg = <0x0 0xff0e0000 0x0 0x10000 0x0>;
  width = <32>;
  reset-gpios = < &crl 18 >;
 };
 ttc1: timer@0xff0f0000 {
  compatible = "xlnx,ps7-ttc-1.00.a";
  interrupts = <40 41 42>;
  reg = <0x0 0xff0f0000 0x0 0x10000 0x0>;
  width = <32>;
  reset-gpios = < &crl 19 >;
 };
 ttc2: timer@0xff100000 {
  compatible = "xlnx,ps7-ttc-1.00.a";
  interrupts = <43 44 45>;
  reg = <0x0 0xff100000 0x0 0x10000 0x0>;
  width = <32>;
  reset-gpios = < &crl 20 >;
 };
 ttc3: timer@0xff110000 {
  compatible = "xlnx,ps7-ttc-1.00.a";
  interrupts = <46 47 48>;
  reg = <0x0 0xff110000 0x0 0x10000 0x0>;
  width = <32>;
  reset-gpios = < &crl 21 >;
 };

 adma0_mattr: adma0mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x210>; }; adma0: dma-controller@0xffa80000 { compatible = "xlnx,zdma"; reg = <0x0 0xffa80000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <60>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma0_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x0>; };
 adma1_mattr: adma1mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x212>; }; adma1: dma-controller@0xffa90000 { compatible = "xlnx,zdma"; reg = <0x0 0xffa90000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <61>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma1_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x1>; };
 adma2_mattr: adma2mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x214>; }; adma2: dma-controller@0xffaa0000 { compatible = "xlnx,zdma"; reg = <0x0 0xffaa0000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <62>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma2_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x2>; };
 adma3_mattr: adma3mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x216>; }; adma3: dma-controller@0xffab0000 { compatible = "xlnx,zdma"; reg = <0x0 0xffab0000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <63>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma3_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x3>; };
 adma4_mattr: adma4mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x218>; }; adma4: dma-controller@0xffac0000 { compatible = "xlnx,zdma"; reg = <0x0 0xffac0000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <64>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma4_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x4>; };
 adma5_mattr: adma5mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x21a>; }; adma5: dma-controller@0xffad0000 { compatible = "xlnx,zdma"; reg = <0x0 0xffad0000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <65>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma5_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x5>; };
 adma6_mattr: adma6mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x21c>; }; adma6: dma-controller@0xffae0000 { compatible = "xlnx,zdma"; reg = <0x0 0xffae0000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <66>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma6_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x6>; };
 adma7_mattr: adma7mattr { compatible = "qemu:memory-transaction-attr"; requester-id = <0x21e>; }; adma7: dma-controller@0xffaf0000 { compatible = "xlnx,zdma"; reg = <0x0 0xffaf0000 0x0 0x10000 0x0>; bus-width = <128>; has-parity = <1>; interrupts = <67>; #stream-id-cells = <0x1>; dma = <&smmu_tbu0>; memattr = <&adma7_mattr>; reset-gpios = < &crl 0 >; #gpio-cells = <1>; gpio-names = "memattr-secure"; gpios = <&lpd_slcr_secure 0x7>; };

 afi_fm@0xff9b0000 {
  compatible = "xlnx,versal-afi-fm";
  reg = <0x0 0xff9b0000 0x0 0x10000 0x0>;
 };

 lpd_i2c_wrapper {

  ps_i2c0: ps_i2c0@0xff020000 {
   #address-cells = <1>;
   #size-cells = <0>;
   compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10";
   interrupts = <14>;
   reg-extended = <&amba_lpd 0x0 0xff020000 0x0 0x10000 0x0>;
   reset-gpios = <&crl 11>;
  };
  ps_i2c1: ps_i2c0@0xff030000 {
   #address-cells = <1>;
   #size-cells = <0>;
   compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10";
   interrupts = <15>;
   reg-extended = <&amba_lpd 0x0 0xff030000 0x0 0x10000 0x0>;
   reset-gpios = <&crl 12>;
  };

 };

 ocm_ctrl0: ocm_ctrl@OCM {
  compatible = "xlnx,zynqmp-ocmc";
  interrupts = <10>;
  memsize = <0x40000>;
  reg = <0x0 0xff960000 0x0 0x10000 0x0>;
  reset-gpios = <&crl 24>;
 };


 xram_slcr@0xff950000 {
  compatible = "xlnx,xram_slcr";
  reg = <0x0 0xff950000 0x0 0x10000 0x0>;
 };


 lpd_slcr@0xff410000 {
  compatible = "xlnx,versal-lpd-slcr";
  reg = <0x0 0xff410000 0x0 0x100000 0x0>;
 };

 lpd_slcr_secure: lpd_slcr_secure@0xff510000 {
  compatible = "xlnx,versal-lpd-slcr-secure";
  reg = <0x0 0xff510000 0x0 0x40000 0x0>;
  gpio-controller;
  #gpio-cells = <1>;
 };

 lpd_iou_slcr_secure: lpd_iou_slcr_secure@0xff0a0000 {
  compatible = "xlnx,versal-lpd-iou-slcr-secure";
  reg = <0x0 0xff0a0000 0x0 0x10000 0x0>;
  memattr-gem0 = <&gem0_memattr_smid>;
  memattr-write-gem0 = <&gem0_w_memattr_smid>;
  memattr-gem1 = <&gem1_memattr_smid>;
  memattr-write-gem1 = <&gem1_w_memattr_smid>;
 };


 lpd_wwdt: wwdt@0xff120000 {
  compatible = "xlnx,versal-wwdt";
  reg = <0x0 0xff120000 0x0 0x10000 0x0>;

  interrupts = <49
     69
     70
     71>;
  pclk = <100000000>;
  reset-gpios = <&crl 23>;
 };


 lpd_gpio: lpd_gpio@0xff0b0000 {
  #gpio-cells = <1>;
  compatible = "xlnx,zynqmp-gpio";
  gpio-controller;
  interrupts = <13>;
  reg = <0x0 0xff0b0000 0x0 0x10000 0x0>;
  reset-gpios = < &crl 17 >;
 };
};

&amba_xram {
 xram_ctrl_0 { compatible = "xlnx,versal-xramc"; reg = <0x0 (0xff8e0000 + 0x00000) 0 0x10000 0x0 >; interrupts = <79>; alloc-ram = <0>; };
 xram_ctrl_1 { compatible = "xlnx,versal-xramc"; reg = <0x0 (0xff8e0000 + 0x10000) 0 0x10000 0x0 >; interrupts = <79>; alloc-ram = <0>; };
 xram_ctrl_2 { compatible = "xlnx,versal-xramc"; reg = <0x0 (0xff8e0000 + 0x20000) 0 0x10000 0x0 >; interrupts = <79>; alloc-ram = <0>; };
 xram_ctrl_3 { compatible = "xlnx,versal-xramc"; reg = <0x0 (0xff8e0000 + 0x30000) 0 0x10000 0x0 >; interrupts = <79>; alloc-ram = <0>; };
};

&amba_root {

 crf: crf@0xfd1a0000 {
  compatible = "xlnx,versal-crf";
  reg-extended = <&amba_fpd 0x0 0xfd1a0000 0x0 0x140000 0x0>;
  gpio-controller;
  #gpio-cells = <1>;
 };
};

/ {

 lpd_reset_domain@0 {
  compatible = "qemu,reset-domain";
  mr0 = <&amba_lpd>;
  reset-gpios = < &pmc_clk_rst 7
    &pmc_clk_rst 10 >;
 };

 fpd_reset_domain@0 {
  compatible = "qemu,reset-domain";
  mr0 = <&amba_fpd>;
  reset-gpios = < &pmc_clk_rst 7
    &pmc_clk_rst 10
    &crl 28
    &crl 29 >;
 };
};
# 58 "./board-versal-pmc-virt.dts" 2
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
# 59 "./board-versal-pmc-virt.dts" 2
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
# 60 "./board-versal-pmc-virt.dts" 2

/ {

 ddr: ddr@0x00000000 { compatible = "qemu:memory-region"; container = <&ddr_mem>; qemu,ram = <1>; reg = <0x0 0x0 0 0x80000000 0x0 >; };
 ddr_2: ddr_2@0x800000000ULL { compatible = "qemu:memory-region-spec"; container = <&ddr_2_mem>; qemu,ram = <1>; reg = <0x8 0x0 0x8 0x0 0x0>; };



 cpu0: apu@0 {
 };
 cpu1: apu@1 {
 };
 rpu_cpu0: rpu_cpu0 {
 };
 rpu_cpu1: rpu_cpu1 {
 };
# 87 "./board-versal-pmc-virt.dts"
 gic: apu_gic@0 {
  #interrupt-cells = <3>;
  interrupt-controller;
 };
};

&pmc_qspi_0 {
 qspi_flash_lcs_lb: qspi_flash_lcs_lb@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "m25qu02gcbb", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x0>; qspi_flash_lcs_lb@0x00000000 { label = "qspi_flash_lcs_lb"; reg = <0x00000000 0x02000000>; }; };
 qspi_flash_lcs_ub: qspi_flash_lcs_ub@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "m25qu02gcbb", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x2 0x1>; qspi_flash_lcs_ub@0x00000000 { label = "qspi_flash_lcs_ub"; reg = <0x00000000 0x02000000>; }; };
 qspi_flash_ucs_lb: qspi_flash_ucs_lb@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "m25qu02gcbb", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x1 0x0>; qspi_flash_ucs_lb@0x00000000 { label = "qspi_flash_ucs_lb"; reg = <0x00000000 0x02000000>; }; };
 qspi_flash_ucs_ub: qspi_flash_ucs_ub@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "m25qu02gcbb", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x3 0x1>; qspi_flash_ucs_ub@0x00000000 { label = "qspi_flash_ucs_ub"; reg = <0x00000000 0x02000000>; }; };
};

&ospi {
 ospi_flash_lcs_lb: ospi_flash_lcs_lb@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "mt35xu01gbba", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x0>; ospi_flash_lcs_lb@0x00000000 { label = "ospi_flash_lcs_lb"; reg = <0x00000000 0x02000000>; }; };
 ospi_flash_lcs_ub: ospi_flash_lcs_ub@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "mt35xu01gbba", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x1 0x0>; ospi_flash_lcs_ub@0x00000000 { label = "ospi_flash_lcs_ub"; reg = <0x00000000 0x02000000>; }; };
 ospi_flash_ucs_lb: ospi_flash_ucs_lb@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "mt35xu01gbba", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x2 0x0>; ospi_flash_ucs_lb@0x00000000 { label = "ospi_flash_ucs_lb"; reg = <0x00000000 0x02000000>; }; };
 ospi_flash_ucs_ub: ospi_flash_ucs_ub@0 { #address-cells = <1>; #size-cells = <1>; #priority-cells = <0>; #bus-cells = <1>; compatible = "mt35xu01gbba", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x3 0x0>; ospi_flash_ucs_ub@0x00000000 { label = "ospi_flash_ucs_ub"; reg = <0x00000000 0x02000000>; }; };
};
# 231 "./board-versal-pmc-virt.dts"
/ {







 pmc_reset: pmc_reset@ {
  compatible = "qemu,reset-device";
  gpios = <&pmc_clk_rst 2>;
 };
};
# 41 "board-versal-pmc-ddrmc-virt.dts" 2
# 1 "./versal-ddrmc-cpus.dtsi" 1
# 30 "./versal-ddrmc-cpus.dtsi"
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
# 31 "./versal-ddrmc-cpus.dtsi" 2
# 76 "./versal-ddrmc-cpus.dtsi"
/ {
 cpus {

  ddrmc_ub0: ddr_cpu@0 { gdb-id = "DDRMC-UB0"; doc-status = "partial"; #interrupt-cells = <1>; compatible = "xlnx,microblaze-cpu"; device_type = "cpu"; version = "10.0"; xlnx,base-vectors = <0x20000>; xlnx,div-zero-exception = <0x1>; xlnx,family = "virtex7"; xlnx,fault-tolerant = <0x1>; xlnx,fpu-exception = <0x0>; xlnx,ill-opcode-exception = <0x1>; xlnx,mmu-privileged-instr = <0x0>; xlnx,mmu-tlb-access = <0x3>; xlnx,mmu-zones = <0x2>; xlnx,opcode-0x0-illegal = <0x1>; xlnx,pc-width = <0x20>; xlnx,pvr = <0x2>; xlnx,pvr-user1 = <0x0>; xlnx,pvr-user2 = <0x0>; xlnx,reset-msr = <0x0>; xlnx,unaligned-exceptions = <0x1>; xlnx,use-barrel = <0x1>; xlnx,use-div = <0x1>; xlnx,use-ext-brk = <0x1>; xlnx,use-ext-nm-brk = <0x1>; xlnx,use-extended-fsl-instr = <0x0>; xlnx,use-fpu = <0x0>; xlnx,use-hw-mul = <0x2>; xlnx,use-mmu = <0x0>; xlnx,use-msr-instr = <0x1>; xlnx,use-pcmp-instr = <0x1>; xlnx,use-stack-protection = <0x1>; xlnx,addr-size= <52>; mr = <&lmb_ddrmc0>; memory = <&lmb_ddrmc0>; memattr = <&ddrmc_ub0_memattr>; gpios = <&npi_ddrmc_ub0 0 &npi_ddrmc_ub0 1>; gpio-names = "reset", "wakeup"; qemu,halt = <0x1>; };


  ddrmc_ub1: ddr_cpu@1 { gdb-id = "DDRMC-UB1"; doc-status = "partial"; #interrupt-cells = <1>; compatible = "xlnx,microblaze-cpu"; device_type = "cpu"; version = "10.0"; xlnx,base-vectors = <0x20000>; xlnx,div-zero-exception = <0x1>; xlnx,family = "virtex7"; xlnx,fault-tolerant = <0x1>; xlnx,fpu-exception = <0x0>; xlnx,ill-opcode-exception = <0x1>; xlnx,mmu-privileged-instr = <0x0>; xlnx,mmu-tlb-access = <0x3>; xlnx,mmu-zones = <0x2>; xlnx,opcode-0x0-illegal = <0x1>; xlnx,pc-width = <0x20>; xlnx,pvr = <0x2>; xlnx,pvr-user1 = <0x0>; xlnx,pvr-user2 = <0x0>; xlnx,reset-msr = <0x0>; xlnx,unaligned-exceptions = <0x1>; xlnx,use-barrel = <0x1>; xlnx,use-div = <0x1>; xlnx,use-ext-brk = <0x1>; xlnx,use-ext-nm-brk = <0x1>; xlnx,use-extended-fsl-instr = <0x0>; xlnx,use-fpu = <0x0>; xlnx,use-hw-mul = <0x2>; xlnx,use-mmu = <0x0>; xlnx,use-msr-instr = <0x1>; xlnx,use-pcmp-instr = <0x1>; xlnx,use-stack-protection = <0x1>; xlnx,addr-size= <52>; mr = <&lmb_ddrmc1>; memory = <&lmb_ddrmc1>; memattr = <&ddrmc_ub1_memattr>; gpios = <&npi_ddrmc_ub1 0 &npi_ddrmc_ub1 1>; gpio-names = "reset", "wakeup"; qemu,halt = <0x1>; };

 };
};
# 42 "board-versal-pmc-ddrmc-virt.dts" 2

