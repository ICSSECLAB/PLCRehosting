# 1 "board-zynqmp-zcu1285.dts"
# 1 "<built-in>" 1
# 1 "board-zynqmp-zcu1285.dts" 2
# 30 "board-zynqmp-zcu1285.dts"
# 1 "./board-zynqmp-zcu1275.dts" 1
# 30 "./board-zynqmp-zcu1275.dts"
# 1 "./board-zynqmp-zcu102.dts" 1
# 31 "./board-zynqmp-zcu102.dts"
# 1 "./zynqmp.dtsh" 1
# 30 "./zynqmp.dtsh"
# 1 "include/utils.dtsh" 1
# 31 "./zynqmp.dtsh" 2
# 1 "include/loader.dtsh" 1
# 32 "./zynqmp.dtsh" 2
# 1 "./zynqmp-irqs.dtsh" 1
# 33 "./zynqmp.dtsh" 2
# 1 "./zynqmp-memmap.dtsh" 1
# 34 "./zynqmp.dtsh" 2
# 32 "./board-zynqmp-zcu102.dts" 2

/dts-v1/;

# 1 "./zynqmp-arm.dtsi" 1
# 30 "./zynqmp-arm.dtsi"
# 1 "./zynqmp.dtsh" 1
# 31 "./zynqmp.dtsh"
# 1 "include/loader.dtsh" 1
# 32 "./zynqmp.dtsh" 2
# 1 "./zynqmp-irqs.dtsh" 1
# 33 "./zynqmp.dtsh" 2
# 1 "./zynqmp-memmap.dtsh" 1
# 34 "./zynqmp.dtsh" 2
# 31 "./zynqmp-arm.dtsi" 2
# 114 "./zynqmp-arm.dtsi"
/ {
 #address-cells = <2>;
 #size-cells = <1>;

 ddr_bank1_1: ddr_bank1_1@0x0 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x0 0x30000>; };
 ddr_bank1_2: ddr_bank1_2@0x40000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x40000 0x7fb0000>; };


 ddr_bank1_3: ddr_bank1_3@0x10000000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x10000000 0x50000>; };
 ddr_bank3: ddr_bank3@0x800000000 { compatible = "qemu:memory-region-spec"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x8 0x00000000 0x8 0x00000000>; };


 pmu_rp_0: pmu@0 {
  compatible = "remote-port";
  #interrupt-cells = <2>;
  chrdev-id = "pmu-apu-rp";
 };
 rp_memory_slave_pmu: rp_memory_slave_pmu@0 {
  compatible = "remote-port-memory-slave";
  remote-ports = <&pmu_rp_0 0>;
  mr = <&lmb_pmu>;
 };
 pmu_cpu0: rp_gpio_pmu_intr@0 {
  #interrupt-cells = <1>;
  compatible = "remote-port-gpio";
  remote-ports = <&pmu_rp_0 1>;
  interrupt-controller;
  num-gpios = <1>;
 };
 rp_gpio_pmu: rp_gpio_pmu@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&pmu_rp_0 2>;
  gpio-controller;
  #gpio-cells = <1>;
  num-gpios = <4>;

  gpios = < &pmu_global 0
    &crl 2
    &pmu_global 3
    >;
 };


 amba: amba@0 {
  #interrupt-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges;

  interrupt-map-mask = <0x0 0x0 0xffff>;
  interrupt-map =

# 1 "./zynqmp-irq-map.dtsh" 1
# 32 "./zynqmp-irq-map.dtsh"
<0 0 8 &gic 0 8 4>,
<0 0 9 &gic 0 9 4>,
<0 0 10 &gic 0 10 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 11 &gic 0 11 4>,
<0 0 12 &gic 0 12 4>,
<0 0 13 &gic 0 13 4>,
<0 0 14 &gic 0 14 4>,
<0 0 15 &gic 0 15 4>,
<0 0 16 &gic 0 16 4>,
<0 0 17 &gic 0 17 4>,
<0 0 18 &gic 0 18 4>,
<0 0 19 &gic 0 19 4>,
<0 0 20 &gic 0 20 4>,
<0 0 21 &gic 0 21 4>,
<0 0 22 &gic 0 22 4>,
<0 0 23 &gic 0 23 4>,
<0 0 24 &gic 0 24 4>,
<0 0 25 &gic 0 25 4>,
<0 0 25 &gic 0 25 4>,
<0 0 26 &gic 0 26 4>,
<0 0 27 &gic 0 27 4>,
<0 0 28 &gic 0 28 4>,
<0 0 29 &gic 0 29 4>,
<0 0 30 &gic 0 30 4>,
<0 0 31 &gic 0 31 4>,
<0 0 32 &gic 0 32 4>,
<0 0 33 &gic 0 33 4>,
<0 0 34 &gic 0 34 4>,
<0 0 35 &gic 0 35 4>,
<0 0 36 &gic 0 36 4>,
<0 0 37 &gic 0 37 4>,
<0 0 38 &gic 0 38 4>,
<0 0 39 &gic 0 39 4>,
<0 0 40 &gic 0 40 4>,
<0 0 41 &gic 0 41 4>,
<0 0 42 &gic 0 42 4>,
<0 0 43 &gic 0 43 4>,
<0 0 44 &gic 0 44 4>,
<0 0 45 &gic 0 45 4>,
<0 0 46 &gic 0 46 4>,
<0 0 47 &gic 0 47 4>,
<0 0 48 &gic 0 48 4>,
<0 0 49 &gic 0 49 4>,
<0 0 50 &gic 0 50 4>,
<0 0 51 &gic 0 51 4>,
<0 0 52 &gic 0 52 4>,
<0 0 53 &gic 0 53 4>,
<0 0 54 &gic 0 54 4>,
<0 0 55 &gic 0 55 4>,
<0 0 56 &gic 0 56 4>,
<0 0 57 &gic 0 57 4>,
<0 0 58 &gic 0 58 4>,
<0 0 59 &gic 0 59 4>,
<0 0 60 &gic 0 60 4>,
<0 0 61 &gic 0 61 4>,
<0 0 62 &gic 0 62 4>,
<0 0 63 &gic 0 63 4>,
<0 0 64 &gic 0 64 4>,
<0 0 65 &gic 0 65 4>,
<0 0 66 &gic 0 66 4>,
<0 0 67 &gic 0 67 4>,
<0 0 68 &gic 0 68 4>,
<0 0 69 &gic 0 69 4>,
<0 0 70 &gic 0 70 4>,
<0 0 71 &gic 0 71 4>,
<0 0 72 &gic 0 72 4>,
<0 0 73 &gic 0 73 4>,
<0 0 74 &gic 0 74 4>,
<0 0 75 &gic 0 75 4>,
<0 0 76 &gic 0 76 4>,
<0 0 77 &gic 0 77 4>,
<0 0 78 &gic 0 78 4>,
<0 0 79 &gic 0 79 4>,
<0 0 80 &gic 0 80 4>,
<0 0 81 &gic 0 81 4>,
<0 0 82 &gic 0 82 4>,
<0 0 83 &gic 0 83 4>,
<0 0 84 &gic 0 84 4>,
<0 0 85 &gic 0 85 4>,
<0 0 86 &gic 0 86 4>,
<0 0 87 &gic 0 87 4>,
<0 0 88 &gic 0 88 4>,
<0 0 88 &gic 0 88 4>,
<0 0 89 &gic 0 89 4>,
<0 0 90 &gic 0 90 4>,
<0 0 91 &gic 0 91 4>,
<0 0 92 &gic 0 92 4>,
<0 0 93 &gic 0 93 4>,
<0 0 94 &gic 0 94 4>,
<0 0 95 &gic 0 95 4>,
<0 0 96 &gic 0 96 4>,
<0 0 104 &gic 0 104 4>,
<0 0 105 &gic 0 105 4>,
<0 0 106 &gic 0 106 4>,
<0 0 107 &gic 0 107 4>,
<0 0 108 &gic 0 108 4>,
<0 0 109 &gic 0 109 4>,
<0 0 110 &gic 0 110 4>,
<0 0 111 &gic 0 111 4>,
<0 0 112 &gic 0 112 4>,
<0 0 113 &gic 0 113 4>,
<0 0 114 &gic 0 114 4>,
<0 0 115 &gic 0 115 4>,
<0 0 116 &gic 0 116 4>,
<0 0 117 &gic 0 117 4>,
<0 0 118 &gic 0 118 4>,
<0 0 119 &gic 0 119 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 120 &gic 0 120 4>,
<0 0 121 &gic 0 121 4>,
<0 0 122 &gic 0 122 4>,
<0 0 123 &gic 0 123 4>,
<0 0 123 &gic 0 123 4>,
<0 0 124 &gic 0 124 4>,
<0 0 125 &gic 0 125 4>,
<0 0 126 &gic 0 126 4>,
<0 0 127 &gic 0 127 4>,
<0 0 128 &gic 0 128 4>,
<0 0 129 &gic 0 129 4>,
<0 0 130 &gic 0 130 4>,
<0 0 131 &gic 0 131 4>,
<0 0 132 &gic 0 132 4>,
<0 0 133 &gic 0 133 4>,
<0 0 134 &gic 0 134 4>,
<0 0 134 &gic 0 134 4>,
<0 0 134 &gic 0 134 4>,
<0 0 134 &gic 0 134 4>,
<0 0 134 &gic 0 134 4>,
<0 0 134 &gic 0 134 4>,
<0 0 134 &gic 0 134 4>,
<0 0 135 &gic 0 135 4>,
<0 0 136 &gic 0 136 4>,
<0 0 137 &gic 0 137 4>,
<0 0 138 &gic 0 138 4>,
<0 0 139 &gic 0 139 4>,
<0 0 140 &gic 0 140 4>,
<0 0 141 &gic 0 141 4>,
<0 0 142 &gic 0 142 4>,
<0 0 143 &gic 0 143 4>,
<0 0 144 &gic 0 144 4>,
<0 0 145 &gic 0 145 4>,
<0 0 146 &gic 0 146 4>,
<0 0 147 &gic 0 147 4>,
<0 0 148 &gic 0 148 4>,
<0 0 149 &gic 0 149 4>,
<0 0 150 &gic 0 150 4>,
<0 0 151 &gic 0 151 4>,
<0 0 152 &gic 0 152 4>,
<0 0 153 &gic 0 153 4>,
<0 0 154 &gic 0 154 4>,
<0 0 155 &gic 0 155 4>
# 166 "./zynqmp-arm.dtsi" 2

   ,

# 1 "./zynqmp-irq-map.dtsh" 1
# 32 "./zynqmp-irq-map.dtsh"
<0 0 8 &rpu_gic 0 8 4>,
<0 0 9 &rpu_gic 0 9 4>,
<0 0 10 &rpu_gic 0 10 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 11 &rpu_gic 0 11 4>,
<0 0 12 &rpu_gic 0 12 4>,
<0 0 13 &rpu_gic 0 13 4>,
<0 0 14 &rpu_gic 0 14 4>,
<0 0 15 &rpu_gic 0 15 4>,
<0 0 16 &rpu_gic 0 16 4>,
<0 0 17 &rpu_gic 0 17 4>,
<0 0 18 &rpu_gic 0 18 4>,
<0 0 19 &rpu_gic 0 19 4>,
<0 0 20 &rpu_gic 0 20 4>,
<0 0 21 &rpu_gic 0 21 4>,
<0 0 22 &rpu_gic 0 22 4>,
<0 0 23 &rpu_gic 0 23 4>,
<0 0 24 &rpu_gic 0 24 4>,
<0 0 25 &rpu_gic 0 25 4>,
<0 0 25 &rpu_gic 0 25 4>,
<0 0 26 &rpu_gic 0 26 4>,
<0 0 27 &rpu_gic 0 27 4>,
<0 0 28 &rpu_gic 0 28 4>,
<0 0 29 &rpu_gic 0 29 4>,
<0 0 30 &rpu_gic 0 30 4>,
<0 0 31 &rpu_gic 0 31 4>,
<0 0 32 &rpu_gic 0 32 4>,
<0 0 33 &rpu_gic 0 33 4>,
<0 0 34 &rpu_gic 0 34 4>,
<0 0 35 &rpu_gic 0 35 4>,
<0 0 36 &rpu_gic 0 36 4>,
<0 0 37 &rpu_gic 0 37 4>,
<0 0 38 &rpu_gic 0 38 4>,
<0 0 39 &rpu_gic 0 39 4>,
<0 0 40 &rpu_gic 0 40 4>,
<0 0 41 &rpu_gic 0 41 4>,
<0 0 42 &rpu_gic 0 42 4>,
<0 0 43 &rpu_gic 0 43 4>,
<0 0 44 &rpu_gic 0 44 4>,
<0 0 45 &rpu_gic 0 45 4>,
<0 0 46 &rpu_gic 0 46 4>,
<0 0 47 &rpu_gic 0 47 4>,
<0 0 48 &rpu_gic 0 48 4>,
<0 0 49 &rpu_gic 0 49 4>,
<0 0 50 &rpu_gic 0 50 4>,
<0 0 51 &rpu_gic 0 51 4>,
<0 0 52 &rpu_gic 0 52 4>,
<0 0 53 &rpu_gic 0 53 4>,
<0 0 54 &rpu_gic 0 54 4>,
<0 0 55 &rpu_gic 0 55 4>,
<0 0 56 &rpu_gic 0 56 4>,
<0 0 57 &rpu_gic 0 57 4>,
<0 0 58 &rpu_gic 0 58 4>,
<0 0 59 &rpu_gic 0 59 4>,
<0 0 60 &rpu_gic 0 60 4>,
<0 0 61 &rpu_gic 0 61 4>,
<0 0 62 &rpu_gic 0 62 4>,
<0 0 63 &rpu_gic 0 63 4>,
<0 0 64 &rpu_gic 0 64 4>,
<0 0 65 &rpu_gic 0 65 4>,
<0 0 66 &rpu_gic 0 66 4>,
<0 0 67 &rpu_gic 0 67 4>,
<0 0 68 &rpu_gic 0 68 4>,
<0 0 69 &rpu_gic 0 69 4>,
<0 0 70 &rpu_gic 0 70 4>,
<0 0 71 &rpu_gic 0 71 4>,
<0 0 72 &rpu_gic 0 72 4>,
<0 0 73 &rpu_gic 0 73 4>,
<0 0 74 &rpu_gic 0 74 4>,
<0 0 75 &rpu_gic 0 75 4>,
<0 0 76 &rpu_gic 0 76 4>,
<0 0 77 &rpu_gic 0 77 4>,
<0 0 78 &rpu_gic 0 78 4>,
<0 0 79 &rpu_gic 0 79 4>,
<0 0 80 &rpu_gic 0 80 4>,
<0 0 81 &rpu_gic 0 81 4>,
<0 0 82 &rpu_gic 0 82 4>,
<0 0 83 &rpu_gic 0 83 4>,
<0 0 84 &rpu_gic 0 84 4>,
<0 0 85 &rpu_gic 0 85 4>,
<0 0 86 &rpu_gic 0 86 4>,
<0 0 87 &rpu_gic 0 87 4>,
<0 0 88 &rpu_gic 0 88 4>,
<0 0 88 &rpu_gic 0 88 4>,
<0 0 89 &rpu_gic 0 89 4>,
<0 0 90 &rpu_gic 0 90 4>,
<0 0 91 &rpu_gic 0 91 4>,
<0 0 92 &rpu_gic 0 92 4>,
<0 0 93 &rpu_gic 0 93 4>,
<0 0 94 &rpu_gic 0 94 4>,
<0 0 95 &rpu_gic 0 95 4>,
<0 0 96 &rpu_gic 0 96 4>,
<0 0 104 &rpu_gic 0 104 4>,
<0 0 105 &rpu_gic 0 105 4>,
<0 0 106 &rpu_gic 0 106 4>,
<0 0 107 &rpu_gic 0 107 4>,
<0 0 108 &rpu_gic 0 108 4>,
<0 0 109 &rpu_gic 0 109 4>,
<0 0 110 &rpu_gic 0 110 4>,
<0 0 111 &rpu_gic 0 111 4>,
<0 0 112 &rpu_gic 0 112 4>,
<0 0 113 &rpu_gic 0 113 4>,
<0 0 114 &rpu_gic 0 114 4>,
<0 0 115 &rpu_gic 0 115 4>,
<0 0 116 &rpu_gic 0 116 4>,
<0 0 117 &rpu_gic 0 117 4>,
<0 0 118 &rpu_gic 0 118 4>,
<0 0 119 &rpu_gic 0 119 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 120 &rpu_gic 0 120 4>,
<0 0 121 &rpu_gic 0 121 4>,
<0 0 122 &rpu_gic 0 122 4>,
<0 0 123 &rpu_gic 0 123 4>,
<0 0 123 &rpu_gic 0 123 4>,
<0 0 124 &rpu_gic 0 124 4>,
<0 0 125 &rpu_gic 0 125 4>,
<0 0 126 &rpu_gic 0 126 4>,
<0 0 127 &rpu_gic 0 127 4>,
<0 0 128 &rpu_gic 0 128 4>,
<0 0 129 &rpu_gic 0 129 4>,
<0 0 130 &rpu_gic 0 130 4>,
<0 0 131 &rpu_gic 0 131 4>,
<0 0 132 &rpu_gic 0 132 4>,
<0 0 133 &rpu_gic 0 133 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 134 &rpu_gic 0 134 4>,
<0 0 135 &rpu_gic 0 135 4>,
<0 0 136 &rpu_gic 0 136 4>,
<0 0 137 &rpu_gic 0 137 4>,
<0 0 138 &rpu_gic 0 138 4>,
<0 0 139 &rpu_gic 0 139 4>,
<0 0 140 &rpu_gic 0 140 4>,
<0 0 141 &rpu_gic 0 141 4>,
<0 0 142 &rpu_gic 0 142 4>,
<0 0 143 &rpu_gic 0 143 4>,
<0 0 144 &rpu_gic 0 144 4>,
<0 0 145 &rpu_gic 0 145 4>,
<0 0 146 &rpu_gic 0 146 4>,
<0 0 147 &rpu_gic 0 147 4>,
<0 0 148 &rpu_gic 0 148 4>,
<0 0 149 &rpu_gic 0 149 4>,
<0 0 150 &rpu_gic 0 150 4>,
<0 0 151 &rpu_gic 0 151 4>,
<0 0 152 &rpu_gic 0 152 4>,
<0 0 153 &rpu_gic 0 153 4>,
<0 0 154 &rpu_gic 0 154 4>,
<0 0 155 &rpu_gic 0 155 4>
# 170 "./zynqmp-arm.dtsi" 2



   ,

# 1 "./zynqmp-irq-map.dtsh" 1
# 32 "./zynqmp-irq-map.dtsh"
<0 0 8 &gic_proxy 0 8 4>,
<0 0 9 &gic_proxy 0 9 4>,
<0 0 10 &gic_proxy 0 10 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 11 &gic_proxy 0 11 4>,
<0 0 12 &gic_proxy 0 12 4>,
<0 0 13 &gic_proxy 0 13 4>,
<0 0 14 &gic_proxy 0 14 4>,
<0 0 15 &gic_proxy 0 15 4>,
<0 0 16 &gic_proxy 0 16 4>,
<0 0 17 &gic_proxy 0 17 4>,
<0 0 18 &gic_proxy 0 18 4>,
<0 0 19 &gic_proxy 0 19 4>,
<0 0 20 &gic_proxy 0 20 4>,
<0 0 21 &gic_proxy 0 21 4>,
<0 0 22 &gic_proxy 0 22 4>,
<0 0 23 &gic_proxy 0 23 4>,
<0 0 24 &gic_proxy 0 24 4>,
<0 0 25 &gic_proxy 0 25 4>,
<0 0 25 &gic_proxy 0 25 4>,
<0 0 26 &gic_proxy 0 26 4>,
<0 0 27 &gic_proxy 0 27 4>,
<0 0 28 &gic_proxy 0 28 4>,
<0 0 29 &gic_proxy 0 29 4>,
<0 0 30 &gic_proxy 0 30 4>,
<0 0 31 &gic_proxy 0 31 4>,
<0 0 32 &gic_proxy 0 32 4>,
<0 0 33 &gic_proxy 0 33 4>,
<0 0 34 &gic_proxy 0 34 4>,
<0 0 35 &gic_proxy 0 35 4>,
<0 0 36 &gic_proxy 0 36 4>,
<0 0 37 &gic_proxy 0 37 4>,
<0 0 38 &gic_proxy 0 38 4>,
<0 0 39 &gic_proxy 0 39 4>,
<0 0 40 &gic_proxy 0 40 4>,
<0 0 41 &gic_proxy 0 41 4>,
<0 0 42 &gic_proxy 0 42 4>,
<0 0 43 &gic_proxy 0 43 4>,
<0 0 44 &gic_proxy 0 44 4>,
<0 0 45 &gic_proxy 0 45 4>,
<0 0 46 &gic_proxy 0 46 4>,
<0 0 47 &gic_proxy 0 47 4>,
<0 0 48 &gic_proxy 0 48 4>,
<0 0 49 &gic_proxy 0 49 4>,
<0 0 50 &gic_proxy 0 50 4>,
<0 0 51 &gic_proxy 0 51 4>,
<0 0 52 &gic_proxy 0 52 4>,
<0 0 53 &gic_proxy 0 53 4>,
<0 0 54 &gic_proxy 0 54 4>,
<0 0 55 &gic_proxy 0 55 4>,
<0 0 56 &gic_proxy 0 56 4>,
<0 0 57 &gic_proxy 0 57 4>,
<0 0 58 &gic_proxy 0 58 4>,
<0 0 59 &gic_proxy 0 59 4>,
<0 0 60 &gic_proxy 0 60 4>,
<0 0 61 &gic_proxy 0 61 4>,
<0 0 62 &gic_proxy 0 62 4>,
<0 0 63 &gic_proxy 0 63 4>,
<0 0 64 &gic_proxy 0 64 4>,
<0 0 65 &gic_proxy 0 65 4>,
<0 0 66 &gic_proxy 0 66 4>,
<0 0 67 &gic_proxy 0 67 4>,
<0 0 68 &gic_proxy 0 68 4>,
<0 0 69 &gic_proxy 0 69 4>,
<0 0 70 &gic_proxy 0 70 4>,
<0 0 71 &gic_proxy 0 71 4>,
<0 0 72 &gic_proxy 0 72 4>,
<0 0 73 &gic_proxy 0 73 4>,
<0 0 74 &gic_proxy 0 74 4>,
<0 0 75 &gic_proxy 0 75 4>,
<0 0 76 &gic_proxy 0 76 4>,
<0 0 77 &gic_proxy 0 77 4>,
<0 0 78 &gic_proxy 0 78 4>,
<0 0 79 &gic_proxy 0 79 4>,
<0 0 80 &gic_proxy 0 80 4>,
<0 0 81 &gic_proxy 0 81 4>,
<0 0 82 &gic_proxy 0 82 4>,
<0 0 83 &gic_proxy 0 83 4>,
<0 0 84 &gic_proxy 0 84 4>,
<0 0 85 &gic_proxy 0 85 4>,
<0 0 86 &gic_proxy 0 86 4>,
<0 0 87 &gic_proxy 0 87 4>,
<0 0 88 &gic_proxy 0 88 4>,
<0 0 88 &gic_proxy 0 88 4>,
<0 0 89 &gic_proxy 0 89 4>,
<0 0 90 &gic_proxy 0 90 4>,
<0 0 91 &gic_proxy 0 91 4>,
<0 0 92 &gic_proxy 0 92 4>,
<0 0 93 &gic_proxy 0 93 4>,
<0 0 94 &gic_proxy 0 94 4>,
<0 0 95 &gic_proxy 0 95 4>,
<0 0 96 &gic_proxy 0 96 4>,
<0 0 104 &gic_proxy 0 104 4>,
<0 0 105 &gic_proxy 0 105 4>,
<0 0 106 &gic_proxy 0 106 4>,
<0 0 107 &gic_proxy 0 107 4>,
<0 0 108 &gic_proxy 0 108 4>,
<0 0 109 &gic_proxy 0 109 4>,
<0 0 110 &gic_proxy 0 110 4>,
<0 0 111 &gic_proxy 0 111 4>,
<0 0 112 &gic_proxy 0 112 4>,
<0 0 113 &gic_proxy 0 113 4>,
<0 0 114 &gic_proxy 0 114 4>,
<0 0 115 &gic_proxy 0 115 4>,
<0 0 116 &gic_proxy 0 116 4>,
<0 0 117 &gic_proxy 0 117 4>,
<0 0 118 &gic_proxy 0 118 4>,
<0 0 119 &gic_proxy 0 119 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 120 &gic_proxy 0 120 4>,
<0 0 121 &gic_proxy 0 121 4>,
<0 0 122 &gic_proxy 0 122 4>,
<0 0 123 &gic_proxy 0 123 4>,
<0 0 123 &gic_proxy 0 123 4>,
<0 0 124 &gic_proxy 0 124 4>,
<0 0 125 &gic_proxy 0 125 4>,
<0 0 126 &gic_proxy 0 126 4>,
<0 0 127 &gic_proxy 0 127 4>,
<0 0 128 &gic_proxy 0 128 4>,
<0 0 129 &gic_proxy 0 129 4>,
<0 0 130 &gic_proxy 0 130 4>,
<0 0 131 &gic_proxy 0 131 4>,
<0 0 132 &gic_proxy 0 132 4>,
<0 0 133 &gic_proxy 0 133 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 134 &gic_proxy 0 134 4>,
<0 0 135 &gic_proxy 0 135 4>,
<0 0 136 &gic_proxy 0 136 4>,
<0 0 137 &gic_proxy 0 137 4>,
<0 0 138 &gic_proxy 0 138 4>,
<0 0 139 &gic_proxy 0 139 4>,
<0 0 140 &gic_proxy 0 140 4>,
<0 0 141 &gic_proxy 0 141 4>,
<0 0 142 &gic_proxy 0 142 4>,
<0 0 143 &gic_proxy 0 143 4>,
<0 0 144 &gic_proxy 0 144 4>,
<0 0 145 &gic_proxy 0 145 4>,
<0 0 146 &gic_proxy 0 146 4>,
<0 0 147 &gic_proxy 0 147 4>,
<0 0 148 &gic_proxy 0 148 4>,
<0 0 149 &gic_proxy 0 149 4>,
<0 0 150 &gic_proxy 0 150 4>,
<0 0 151 &gic_proxy 0 151 4>,
<0 0 152 &gic_proxy 0 152 4>,
<0 0 153 &gic_proxy 0 153 4>,
<0 0 154 &gic_proxy 0 154 4>,
<0 0 155 &gic_proxy 0 155 4>
# 176 "./zynqmp-arm.dtsi" 2


   ;

  apu: apu@0xFD5C0000 {
   compatible = "xlnx,apu";
   #gpio-cells = <1>;
   reg = <0x0 0xFD5C0000 0x1000>;
   cpu0 = <&cpu0>;
   cpu1 = <&cpu1>;
   cpu2 = <&cpu2>;
   cpu3 = <&cpu3>;

   gpios = <&pmu_io_gpi2 0 0 &pmu_io_gpi2 1 0 &pmu_io_gpi2 2 0 &pmu_io_gpi2 3 0>;

  };

  rpu_ctrl: rpu_control@0xFF9A0000 {
   #gpio-cells = <1>;
   compatible = "xlnx,rpu-control";
   reg = <0x0 0xFF9A0000 0x400>;
   gpio-controller;
   atcm1-for-rpu0 = <&atcm1_for_rpu0>;
   btcm1-for-rpu0 = <&btcm1_for_rpu0>;
   icache-for-rpu1 = <&icache_rpu1>;
   dcache-for-rpu1 = <&dcache_rpu1>;
   gic-for-rpu = <&rpu_gic>;
   gpios = <&pmu_global 6
      &pmu_global 7

      &pmu_io_gpi2 4 0
      &pmu_io_gpi2 5 0

   >;
  };

 };
};

# 1 "./zynqmp-pmu-dev.dtsi" 1
# 30 "./zynqmp-pmu-dev.dtsi"
# 1 "./zynqmp.dtsh" 1
# 31 "./zynqmp.dtsh"
# 1 "include/loader.dtsh" 1
# 32 "./zynqmp.dtsh" 2
# 1 "./zynqmp-irqs.dtsh" 1
# 33 "./zynqmp.dtsh" 2
# 1 "./zynqmp-memmap.dtsh" 1
# 34 "./zynqmp.dtsh" 2
# 31 "./zynqmp-pmu-dev.dtsi" 2

/ {
 lmb_pmu: lmb_pmu@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges ;


  main_bus_for_pmu {
   compatible = "qemu:memory-region";
   alias = <&protected_amba>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff>;
  };






  pmu_io_module: io-module@00 {
   #address-cells = <2>;
   #size-cells = <1>;
   #priority-cells = <0>;
   compatible = "xlnx,iomodule-1.02.a", "syscon", "simple-bus";
   container = <&lmb_pmu>;
   priority = <0x1>;
   xlnx,freq = <0x47868c0>;
   xlnx,instance = "iomodule_1";
   xlnx,io-mask = <0xfffe0000>;
   xlnx,lmb-awidth = <0x20>;
   xlnx,lmb-dwidth = <0x20>;
   xlnx,mask = <0xffffff80>;
   xlnx,use-io-bus = <0x1>;

   pmu_io_intc: pmu_intc@0C {
    #interrupt-cells = <2>;
    compatible = "xlnx,io-intc-1.02.a", "xlnx,io_intc";
    interrupt-controller ;
    interrupts-extended = <&pmu_cpu0 0>;
    reg = <0x0 0xFFD4000C 0x4 0x0 0xFFD40030 0x10 0x0 0xFFD40080 0x7C>;
    xlnx,intc-addr-width = <0x20>;
    xlnx,intc-base-vectors = <0x0>;
    xlnx,intc-has-fast = <0x0>;
    xlnx,intc-intr-size = <0x10>;
    xlnx,intc-level-edge = <0x0>;
    xlnx,intc-positive = <0xffff>;
    xlnx,intc-use-ext-intr = <0x1>;
   };







   pmu_io_gpo0: pmu_gpo@10 {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo";
    reg = <0x0 0xFFD40010 0x4>;
    xlnx,gpo-init = <0x0>;
    xlnx,gpo-size = <0x9>;
    xlnx,use-gpo = <0x1>;
   };
   pmu_io_gpo1: pmu_gpo@14 {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo";
    reg = <0x0 0xFFD40014 0x4>;
    xlnx,gpo-init = <0x0>;
    xlnx,gpo-size = <0x20>;
    xlnx,use-gpo = <0x1>;
   };
   pmu_io_gpo2: pmu_gpo@18 {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo";
    reg = <0x0 0xFFD40018 0x4>;
    xlnx,gpo-init = <0x0>;
    xlnx,gpo-size = <0x20>;
    xlnx,use-gpo = <0x1>;
   };
   pmu_io_gpo3: pmu_gpo@1c {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpo-1.02.a", "xlnx,io_gpo";
    reg = <0x0 0xFFD4001c 0x4>;
    xlnx,gpo-init = <0x0>;
    xlnx,gpo-size = <0x20>;
    xlnx,use-gpo = <0x1>;
   };
   pmu_io_gpi0: pmu_gpi@20 {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <11 0>;
    reg = <0x0 0xFFD40020 0x4>;
    xlnx,gpi-interrupt = <0x1>;
    xlnx,gpi-size = <0x20>;
    xlnx,use-gpi = <0x1>;
   };
   pmu_io_gpi1: pmu_gpi@24 {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <12 0>;
    reg = <0x0 0xFFD40024 0x4
     0x0 0xFFD60224 0x4>;
    xlnx,gpi-interrupt = <0x1>;
    xlnx,gpi-size = <0x20>;
    xlnx,use-gpi = <0x1>;
    gpios = <&dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &dummy_pmu_gpio 0 0
      &mio_in 26 0
      &mio_in 27 0
      &mio_in 28 0
      &mio_in 29 0
      &mio_in 30 0
      &mio_in 31 0>;
   };
   pmu_io_gpi2: pmu_gpi@28 {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <13 0>;
    reg = <0x0 0xFFD40028 0x4
     0x0 0xFFD60228 0x4>;
    xlnx,gpi-interrupt = <0x1>;
    xlnx,gpi-size = <0x20>;
    xlnx,use-gpi = <0x1>;
   };
   pmu_io_gpi3: pmu_gpi@2c {
    #gpio-cells = <2>;
    gpio-controller;
    compatible = "xlnx,io-gpi-1.02.a", "xlnx,io_gpi";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <14 0>;
    reg = <0x0 0xFFD4002c 0x4>;
    xlnx,gpi-interrupt = <0x1>;
    xlnx,gpi-size = <0x20>;
    xlnx,use-gpi = <0x1>;
   };

   pmu_io_pit0: pmu_pit@40 {
    compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <3 0>;
    reg = <0x0 0xFFD40040 0xc>;
    xlnx,pit-interrupt = <0x1>;
    xlnx,pit-prescaler = <0x9>;
    xlnx,pit-readable = <0x1>;
    xlnx,pit-size = <0x20>;
    xlnx,use-pit = <0x1>;
    gpios = <&pmu_io_gpo0 2 0 &pmu_io_pit1 0>;
    gpio-names = "ps_config","ps_hit_in";
    gpio-controller;
    #gpio-cells = <1>;
   };
   pmu_io_pit1: pmu_pit@50 {
    compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <4 0>;
    reg = <0x0 0xFFD40050 0xc>;
    xlnx,pit-interrupt = <0x1>;
    xlnx,pit-prescaler = <0x9>;
    xlnx,pit-readable = <0x1>;
    xlnx,pit-size = <0x20>;
    xlnx,use-pit = <0x1>;
    gpio-controller;
    #gpio-cells = <1>;
   };
   pmu_io_pit2: pmu_pit@60 {
    compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <5 0>;
    reg = <0x0 0xFFD40060 0xc>;
    xlnx,pit-interrupt = <0x1>;
    xlnx,pit-prescaler = <0x9>;
    xlnx,pit-readable = <0x1>;
    xlnx,pit-size = <0x20>;
    xlnx,use-pit = <0x1>;
    gpios = <&pmu_io_gpo0 6 0 &pmu_io_pit2 0>;
    gpio-names = "ps_config","ps_hit_in";
    gpio-controller;
    #gpio-cells = <1>;
   };
   pmu_io_pit3: pmu_pit@70 {
    compatible = "xlnx,io-pit-1.02.a", "xlnx,io_pit";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <6 0>;
    reg = <0x0 0xFFD40070 0xc>;
    xlnx,pit-interrupt = <0x1>;
    xlnx,pit-prescaler = <0x9>;
    xlnx,pit-readable = <0x1>;
    xlnx,pit-size = <0x20>;
    xlnx,use-pit = <0x1>;
    gpio-controller;
    #gpio-cells = <1>;
   };

   pmu_io_uart: pmu_uart@00 {
    compatible = "xlnx,io-uart-1.02.a", "xlnx,io_uart";
    interrupt-parent = <&pmu_io_intc>;
    interrupts = <0 0 1 0 2 0>;
    reg = <0x0 0xFFD40000 0xC 0x0 0xFFD4004c 0x4>;
    xlnx,uart-baudrate = <0x2580>;
    xlnx,uart-data-bits = <0x8>;
    xlnx,uart-error-interrupt = <0x1>;
    xlnx,uart-odd-parity = <0x0>;
    xlnx,uart-prog-baudrate = <0x0>;
    xlnx,uart-rx-interrupt = <0x1>;
    xlnx,uart-tx-interrupt = <0x1>;
    xlnx,uart-use-parity = <0x0>;
    xlnx,use-uart-rx = <0x0>;
    xlnx,use-uart-tx = <0x0>;
   };

   dummy_pmu_gpio: dummy_pmu_gpio {
    #gpio-cells = <2>;
    gpio-controller;
   };
  };

  pmu_local: pmu_local@ffd60000 {
   #gpio-cells = <1>;
   compatible = "xlnx,pmu-local";
   reg = <0x0 0xFFD60000 0x0 0x1000 0x0>;
   gpio-controller;
   num-gpios = <7>;
  };
 };

 amba: amba@0 {
  pmu_global: pmu_global@0xFFD80000 {
   interrupt-parent = <&pmu_io_intc>;
   interrupts = <23 0>,
       <24 0>,
       <26 0>,
       <27 0>,
       <28 0>,
       <29 0>;
  };
 };
};
# 216 "./zynqmp-arm.dtsi" 2

/ {
 cpus {
  #address-cells = <1>;
  #size-cells = <0>;
  cpu0: apu_cpu@0 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <0>; enable-method = "psci"; reg = <0>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 0 &apu 0 &pmu_local 0x80000001 &pmu_local 0x8000001C &pmu_global 2>; gpio-names = "rst_cntrl" , "wfi" , "pwr_cntrl" , "pwr_cntrl" , "rst_cntrl";
   gdb-id = "Cortex-A53 #0";
   memattr_s = <&apu0_s_memattr>;
   memattr_ns = <&apu0_ns_memattr>;
  };
  cpu1: apu_cpu@1 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <1>; enable-method = "psci"; reg = <1>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 1 &apu 1 &pmu_local 0x80000002 &pmu_local 0x8000001C &pmu_global 2>; gpio-names = "rst_cntrl" , "wfi" , "pwr_cntrl" , "pwr_cntrl" , "rst_cntrl";
   direct-lnx-start-powered-off = <1>; start-powered-off = <0>;
   gdb-id = "Cortex-A53 #1";
   memattr_s = <&apu1_s_memattr>;
   memattr_ns = <&apu1_ns_memattr>;
  };
  cpu2: apu_cpu@2 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <2>; enable-method = "psci"; reg = <2>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 2 &apu 2 &pmu_local 0x80000003 &pmu_local 0x8000001C &pmu_global 2>; gpio-names = "rst_cntrl" , "wfi" , "pwr_cntrl" , "pwr_cntrl" , "rst_cntrl";
   direct-lnx-start-powered-off = <1>; start-powered-off = <0>;
   gdb-id = "Cortex-A53 #2";
   memattr_s = <&apu2_s_memattr>;
   memattr_ns = <&apu2_ns_memattr>;
  };
  cpu3: apu_cpu@3 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <3>; enable-method = "psci"; reg = <3>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 3 &apu 3 &pmu_local 0x80000004 &pmu_local 0x8000001C &pmu_global 2>; gpio-names = "rst_cntrl" , "wfi" , "pwr_cntrl" , "pwr_cntrl" , "rst_cntrl";
   direct-lnx-start-powered-off = <1>; start-powered-off = <0>;
   gdb-id = "Cortex-A53 #3";
   memattr_s = <&apu3_s_memattr>;
   memattr_ns = <&apu3_ns_memattr>;
  };

  rpu_cpu0: rpu_cpu@0 {
   compatible = "cortex-r5f-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr=<0x411fc153>; arm,tcmtr=<0x00010001>; arm,ctr=<0x8003c003>; arm,clidr=<0x09200003>; arm,ccsidr0 = <0xf01fe019>; arm,ccsidr1 = <0xf01fe019>; arm,mp-affinity = <0x100>; arm,id_pfr0 = <0x131>; arm,reset-hivecs = <1>; #interrupt-cells = <1>;
   reg = <0>;
   mr = <&amba_rpu0>;
   memory = <&amba_rpu0>;
   gpios = <&crl 0 &rpu_ctrl 0 &rpu_ctrl 5 &rpu_ctrl 7 &pmu_local 9>;
   gpio-names = "reset", "ncpuhalt", "vinithi" , "wfi" , "pwr_cntrl";
   gdb-id = "Cortex-R5 #0";
   memattr_ns = <&rpu0_memattr>;
  };
  rpu_cpu1: rpu_cpu@1 {
   compatible = "cortex-r5f-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr=<0x411fc153>; arm,tcmtr=<0x00010001>; arm,ctr=<0x8003c003>; arm,clidr=<0x09200003>; arm,ccsidr0 = <0xf01fe019>; arm,ccsidr1 = <0xf01fe019>; arm,mp-affinity = <0x101>; arm,id_pfr0 = <0x131>; arm,reset-hivecs = <1>; #interrupt-cells = <1>;
   reg = <1>;
   mr = <&amba_rpu1>;
   memory = <&amba_rpu1>;
   gpios = <&crl 1 &rpu_ctrl 2 &rpu_ctrl 1 &rpu_ctrl 6 &rpu_ctrl 8 &pmu_local 9>;
   gpio-names = "reset", "halt", "ncpuhalt", "vinithi" , "wfi" , "pwr_cntrl";
   gdb-id = "Cortex-R5 #1";
   memattr_ns = <&rpu1_memattr>;
  };
 };

 aliases {
  main_bus_for_apu {
   compatible = "qemu:memory-region";
   container = <&amba_apu>;
   alias = <&cci_slave>;
   priority = <0xFFFFFFFF>;
  };
 };

 amba_apu: amba_apu@0 {
  #address-cells = <2>;
  #size-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges ;
  timer {
   compatible = "arm,armv8-timer";
   interrupt-parent = <&gic>;
   interrupts = <1 13 0xff01>,
       <1 14 0xff01>,
       <1 11 0xff01>,
       <1 10 0xff01>;
   clock-frequency = <100000000>;
  };
  dummy: dymmy@0 {
   interrupt-controller;
   #interrupt-cells = <1>;
  };

  apu_intc_redirect_0: apu_intc_redirect0@0 { #interrupt-cells = <1>; compatible = "xlnx,zynqmp-intc-redirect"; interrupt-controller; interrupts-extended = <&cpu0 0>, <&cpu0 1>, <&cpu0 2>, <&cpu0 3>; gpios = <&pmu_io_gpi1 0 0 &apu 4>; };
  apu_intc_redirect_1: apu_intc_redirect1@1 { #interrupt-cells = <1>; compatible = "xlnx,zynqmp-intc-redirect"; interrupt-controller; interrupts-extended = <&cpu1 0>, <&cpu1 1>, <&cpu1 2>, <&cpu1 3>; gpios = <&pmu_io_gpi1 1 0 &apu 5>; };
  apu_intc_redirect_2: apu_intc_redirect2@2 { #interrupt-cells = <1>; compatible = "xlnx,zynqmp-intc-redirect"; interrupt-controller; interrupts-extended = <&cpu2 0>, <&cpu2 1>, <&cpu2 2>, <&cpu2 3>; gpios = <&pmu_io_gpi1 2 0 &apu 6>; };
  apu_intc_redirect_3: apu_intc_redirect3@3 { #interrupt-cells = <1>; compatible = "xlnx,zynqmp-intc-redirect"; interrupt-controller; interrupts-extended = <&cpu3 0>, <&cpu3 1>, <&cpu3 2>, <&cpu3 3>; gpios = <&pmu_io_gpi1 3 0 &apu 7>; };

 };

 amba_apu_gic: amba_apu_gic@0 {
  #address-cells = <2>;
  #priority-cells = <1>;
  #size-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges ;
  container = <&amba>;
  priority = <0xFFFFFFFF>;
  gic: interrupt-controller@0xFD3FF000 {
   #address-cells = <0>;
   #size-cells = <0>;
   #interrupt-cells = <3>;
   #gpio-cells = <0>;

   compatible = "xlnx,zynqmp-scugic", "arm,gic";
   reg = < 0x0 0xF9010000 0x1000 0
     0x0 0xF9020000 0x20000 0
     0x0 0xF9040000 0x20000 0
     0x0 0xF9060000 0x20000 0>;
   interrupt-controller ;
   gpios = <&pmu_local 28 &pmu_global 2>;
   gpio-names = "pwr_cntrl" , "rst_cntrl";
   num-irq = <192>;
   interrupts-extended =





    <&apu_intc_redirect_0 0>,
    <&apu_intc_redirect_1 0>,
    <&apu_intc_redirect_2 0>,
    <&apu_intc_redirect_3 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&apu_intc_redirect_0 2>,
    <&apu_intc_redirect_1 2>,
    <&apu_intc_redirect_2 2>,
    <&apu_intc_redirect_3 2>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&apu_intc_redirect_0 1>,
    <&apu_intc_redirect_1 1>,
    <&apu_intc_redirect_2 1>,
    <&apu_intc_redirect_3 1>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&apu_intc_redirect_0 3>,
    <&apu_intc_redirect_1 3>,
    <&apu_intc_redirect_2 3>,
    <&apu_intc_redirect_3 3>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&gic 0x1 0x9 0x104>,
    <&gic 0x1 0x9 0x204>,
    <&gic 0x1 0x9 0x404>,
    <&gic 0x1 0x9 0x804>;
   num-cpu = <4>;
   revision = <2>;
   has-security-extensions = <1>;
   int-id = <0x0202143B>;
  };


  zynqmp-gic-cpu-alias@0xf9021000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9021000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9022000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9022000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9023000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9023000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9024000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9024000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9025000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9025000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9026000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9026000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9027000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9027000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9028000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9028000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf9029000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf9029000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf902a000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf902a000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf902b000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf902b000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf902c000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf902c000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf902d000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf902d000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf902e000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;
   reg = <0x0 0xf902e000 0x1000 1>;
  };
  zynqmp-gic-cpu-alias@0xf902f000 {
   compatible = "qemu:memory-region";
   alias = <&gic 1>;

   reg = <0x0 0xf902f000 0x2000 1>;
  };


  zynqmp-gic-vcpu-alias@0xf9061000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9061000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9062000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9062000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9063000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9063000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9064000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9064000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9065000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9065000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9066000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9066000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9067000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9067000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9068000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9068000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf9069000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf9069000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf906a000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf906a000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf906b000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf906b000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf906c000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf906c000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf906d000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf906d000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf906e000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;
   reg = <0x0 0xf906e000 0x1000 1>;
  };
  zynqmp-gic-vcpu-alias@0xf906f000 {
   compatible = "qemu:memory-region";
   alias = <&gic 3>;

   reg = <0x0 0xf906f000 0x2000 1>;
  };
 };

 amba_rpu: amba_rpu@0 {

  rpu_intc_redirect_0: rpu_intc_redirect0@0 { #interrupt-cells = <1>; compatible = "xlnx,zynqmp-intc-redirect"; interrupt-controller; interrupts-extended = <&rpu_cpu0 0>; gpios = <&pmu_io_gpi1 4 0 &rpu_ctrl 3>; };
  rpu_intc_redirect_1: rpu_intc_redirect1@1 { #interrupt-cells = <1>; compatible = "xlnx,zynqmp-intc-redirect"; interrupt-controller; interrupts-extended = <&rpu_cpu1 0>; gpios = <&pmu_io_gpi1 5 0 &rpu_ctrl 4>; };

  tcm_mem_ctrl_0_A: tcm_mem_ctrl_A0@0 { compatible = "qemu,memory-controller"; mr = <&tcm_ram_r5_0_A>; gpios = <&pmu_local 24 &pmu_local 20>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };
  tcm_mem_ctrl_0_B: tcm_mem_ctrl_B0@0 { compatible = "qemu,memory-controller"; mr = <&tcm_ram_r5_0_B>; gpios = <&pmu_local 25 &pmu_local 21>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };
  tcm_mem_ctrl_1_A: tcm_mem_ctrl_A1@1 { compatible = "qemu,memory-controller"; mr = <&tcm_ram_r5_1_A>; gpios = <&pmu_local 26 &pmu_local 22>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };
  tcm_mem_ctrl_1_B: tcm_mem_ctrl_B1@1 { compatible = "qemu,memory-controller"; mr = <&tcm_ram_r5_1_B>; gpios = <&pmu_local 27 &pmu_local 23>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };


  rpu_gic: interrupt-controller@0xF9000000 {
   #address-cells = <0>;
   #interrupt-cells = <3>;
   #size-cells = <0>;
   compatible = "xlnx,zynqmp-scugic", "arm,gic";
   reg = < 0x0 0xF9000000 0x0 0x1000 0x0
     0x0 0xF9001000 0x0 0x100 0x0>;
   status = "disabled";
   interrupt-controller ;
   num-irq = <256>;
   num-cpu = <2>;
   interrupts-extended =

    <&rpu_intc_redirect_0 0>,
    <&rpu_intc_redirect_1 0>;




  };
 };

 amba: amba@0 {
  apu_ipi: apu_ipi@0xFF300000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 35 4>, <0 0 0 &gic 0 35 4>, <0 0 0 &rpu_gic 0 35 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF300000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 0 0 &rpu_0_ipi 0 0 &rpu_1_ipi 0 0 &pmu_0_ipi 0 0 &pmu_1_ipi 0 0 &pmu_2_ipi 0 0 &pmu_3_ipi 0 0 &pl_0_ipi 0 0 &pl_1_ipi 0 0 &pl_2_ipi 0 0 &pl_3_ipi 0 0 >; gpios = < &apu_ipi 32 0 &rpu_0_ipi 32 0 &rpu_1_ipi 32 0 &pmu_0_ipi 32 0 &pmu_1_ipi 32 0 &pmu_2_ipi 32 0 &pmu_3_ipi 32 0 &pl_0_ipi 32 0 &pl_1_ipi 32 0 &pl_2_ipi 32 0 &pl_3_ipi 32 0 >; };

  rpu_0_ipi: rpu_0_ipi@0xFF310000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 33 4>, <0 0 0 &gic 0 33 4>, <0 0 0 &rpu_gic 0 33 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF310000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 8 0 &rpu_0_ipi 8 0 &rpu_1_ipi 8 0 &pmu_0_ipi 8 0 &pmu_1_ipi 8 0 &pmu_2_ipi 8 0 &pmu_3_ipi 8 0 &pl_0_ipi 8 0 &pl_1_ipi 8 0 &pl_2_ipi 8 0 &pl_3_ipi 8 0 >; gpios = < &apu_ipi 40 0 &rpu_0_ipi 40 0 &rpu_1_ipi 40 0 &pmu_0_ipi 40 0 &pmu_1_ipi 40 0 &pmu_2_ipi 40 0 &pmu_3_ipi 40 0 &pl_0_ipi 40 0 &pl_1_ipi 40 0 &pl_2_ipi 40 0 &pl_3_ipi 40 0 >; };
  rpu_1_ipi: rpu_1_ipi@0xFF320000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 34 4>, <0 0 0 &gic 0 34 4>, <0 0 0 &rpu_gic 0 34 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF320000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 9 0 &rpu_0_ipi 9 0 &rpu_1_ipi 9 0 &pmu_0_ipi 9 0 &pmu_1_ipi 9 0 &pmu_2_ipi 9 0 &pmu_3_ipi 9 0 &pl_0_ipi 9 0 &pl_1_ipi 9 0 &pl_2_ipi 9 0 &pl_3_ipi 9 0 >; gpios = < &apu_ipi 41 0 &rpu_0_ipi 41 0 &rpu_1_ipi 41 0 &pmu_0_ipi 41 0 &pmu_1_ipi 41 0 &pmu_2_ipi 41 0 &pmu_3_ipi 41 0 &pl_0_ipi 41 0 &pl_1_ipi 41 0 &pl_2_ipi 41 0 &pl_3_ipi 41 0 >; };

  pmu_0_ipi: pmu_0_ipi@0xFF330000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <19 0>; reg = <0x0 0xFF330000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 16 0 &rpu_0_ipi 16 0 &rpu_1_ipi 16 0 &pmu_0_ipi 16 0 &pmu_1_ipi 16 0 &pmu_2_ipi 16 0 &pmu_3_ipi 16 0 &pl_0_ipi 16 0 &pl_1_ipi 16 0 &pl_2_ipi 16 0 &pl_3_ipi 16 0 >; gpios = < &apu_ipi 48 0 &rpu_0_ipi 48 0 &rpu_1_ipi 48 0 &pmu_0_ipi 48 0 &pmu_1_ipi 48 0 &pmu_2_ipi 48 0 &pmu_3_ipi 48 0 &pl_0_ipi 48 0 &pl_1_ipi 48 0 &pl_2_ipi 48 0 &pl_3_ipi 48 0 >; };
  pmu_1_ipi: pmu_1_ipi@0xFF331000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <20 0>; reg = <0x0 0xFF331000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 17 0 &rpu_0_ipi 17 0 &rpu_1_ipi 17 0 &pmu_0_ipi 17 0 &pmu_1_ipi 17 0 &pmu_2_ipi 17 0 &pmu_3_ipi 17 0 &pl_0_ipi 17 0 &pl_1_ipi 17 0 &pl_2_ipi 17 0 &pl_3_ipi 17 0 >; gpios = < &apu_ipi 49 0 &rpu_0_ipi 49 0 &rpu_1_ipi 49 0 &pmu_0_ipi 49 0 &pmu_1_ipi 49 0 &pmu_2_ipi 49 0 &pmu_3_ipi 49 0 &pl_0_ipi 49 0 &pl_1_ipi 49 0 &pl_2_ipi 49 0 &pl_3_ipi 49 0 >; };
  pmu_2_ipi: pmu_2_ipi@0xFF332000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <21 0>; reg = <0x0 0xFF332000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 18 0 &rpu_0_ipi 18 0 &rpu_1_ipi 18 0 &pmu_0_ipi 18 0 &pmu_1_ipi 18 0 &pmu_2_ipi 18 0 &pmu_3_ipi 18 0 &pl_0_ipi 18 0 &pl_1_ipi 18 0 &pl_2_ipi 18 0 &pl_3_ipi 18 0 >; gpios = < &apu_ipi 50 0 &rpu_0_ipi 50 0 &rpu_1_ipi 50 0 &pmu_0_ipi 50 0 &pmu_1_ipi 50 0 &pmu_2_ipi 50 0 &pmu_3_ipi 50 0 &pl_0_ipi 50 0 &pl_1_ipi 50 0 &pl_2_ipi 50 0 &pl_3_ipi 50 0 >; };
  pmu_3_ipi: pmu_3_ipi@0xFF333000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <22 0>; reg = <0x0 0xFF333000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 19 0 &rpu_0_ipi 19 0 &rpu_1_ipi 19 0 &pmu_0_ipi 19 0 &pmu_1_ipi 19 0 &pmu_2_ipi 19 0 &pmu_3_ipi 19 0 &pl_0_ipi 19 0 &pl_1_ipi 19 0 &pl_2_ipi 19 0 &pl_3_ipi 19 0 >; gpios = < &apu_ipi 51 0 &rpu_0_ipi 51 0 &rpu_1_ipi 51 0 &pmu_0_ipi 51 0 &pmu_1_ipi 51 0 &pmu_2_ipi 51 0 &pmu_3_ipi 51 0 &pl_0_ipi 51 0 &pl_1_ipi 51 0 &pl_2_ipi 51 0 &pl_3_ipi 51 0 >; };

  pl_0_ipi: pl_0_ipi@0xFF340000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 29 4>, <0 0 0 &gic 0 29 4>, <0 0 0 &rpu_gic 0 29 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF340000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 24 0 &rpu_0_ipi 24 0 &rpu_1_ipi 24 0 &pmu_0_ipi 24 0 &pmu_1_ipi 24 0 &pmu_2_ipi 24 0 &pmu_3_ipi 24 0 &pl_0_ipi 24 0 &pl_1_ipi 24 0 &pl_2_ipi 24 0 &pl_3_ipi 24 0 >; gpios = < &apu_ipi 52 0 &rpu_0_ipi 52 0 &rpu_1_ipi 52 0 &pmu_0_ipi 52 0 &pmu_1_ipi 52 0 &pmu_2_ipi 52 0 &pmu_3_ipi 52 0 &pl_0_ipi 52 0 &pl_1_ipi 52 0 &pl_2_ipi 52 0 &pl_3_ipi 52 0 >; };
  pl_1_ipi: pl_1_ipi@0xFF350000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 30 4>, <0 0 0 &gic 0 30 4>, <0 0 0 &rpu_gic 0 30 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF350000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 25 0 &rpu_0_ipi 25 0 &rpu_1_ipi 25 0 &pmu_0_ipi 25 0 &pmu_1_ipi 25 0 &pmu_2_ipi 25 0 &pmu_3_ipi 25 0 &pl_0_ipi 25 0 &pl_1_ipi 25 0 &pl_2_ipi 25 0 &pl_3_ipi 25 0 >; gpios = < &apu_ipi 53 0 &rpu_0_ipi 53 0 &rpu_1_ipi 53 0 &pmu_0_ipi 53 0 &pmu_1_ipi 53 0 &pmu_2_ipi 53 0 &pmu_3_ipi 53 0 &pl_0_ipi 53 0 &pl_1_ipi 53 0 &pl_2_ipi 53 0 &pl_3_ipi 53 0 >; };
  pl_2_ipi: pl_2_ipi@0xFF360000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 31 4>, <0 0 0 &gic 0 31 4>, <0 0 0 &rpu_gic 0 31 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF360000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 26 0 &rpu_0_ipi 26 0 &rpu_1_ipi 26 0 &pmu_0_ipi 26 0 &pmu_1_ipi 26 0 &pmu_2_ipi 26 0 &pmu_3_ipi 26 0 &pl_0_ipi 26 0 &pl_1_ipi 26 0 &pl_2_ipi 26 0 &pl_3_ipi 26 0 >; gpios = < &apu_ipi 54 0 &rpu_0_ipi 54 0 &rpu_1_ipi 54 0 &pmu_0_ipi 54 0 &pmu_1_ipi 54 0 &pmu_2_ipi 54 0 &pmu_3_ipi 54 0 &pl_0_ipi 54 0 &pl_1_ipi 54 0 &pl_2_ipi 54 0 &pl_3_ipi 54 0 >; };
  pl_3_ipi: pl_3_ipi@0xFF370000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic_proxy 0 32 4>, <0 0 0 &gic 0 32 4>, <0 0 0 &rpu_gic 0 32 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF370000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 27 0 &rpu_0_ipi 27 0 &rpu_1_ipi 27 0 &pmu_0_ipi 27 0 &pmu_1_ipi 27 0 &pmu_2_ipi 27 0 &pmu_3_ipi 27 0 &pl_0_ipi 27 0 &pl_1_ipi 27 0 &pl_2_ipi 27 0 &pl_3_ipi 27 0 >; gpios = < &apu_ipi 55 0 &rpu_0_ipi 55 0 &rpu_1_ipi 55 0 &pmu_0_ipi 55 0 &pmu_1_ipi 55 0 &pmu_2_ipi 55 0 &pmu_3_ipi 55 0 &pl_0_ipi 55 0 &pl_1_ipi 55 0 &pl_2_ipi 55 0 &pl_3_ipi 55 0 >; };

  xlnx_zynqmp_csu_core: csu_core {
   compatible = "xlnx,zynqmp-csu-core";
   reg = <0x0 0xFFCA0000 0x100>;
  };

  lpd_slcr_0: zynqmp_lpd_slcr@0xFF410000 {
   compatible = "xlnx,lpd-slcr";
   reg = <0x0 0xFF410000 0x9000>;
   gic-for-rpu = <&rpu_gic>;
   gic-for-apu = <&gic>;
  };
  lpd_slcr_secure: zynqmp_lpd_slcr_secure@0xFF4B0000 {
   compatible = "xlnx,lpd-slcr-secure";
   reg = <0x0 0xFF4B0000 0x38>;
  };
 };
};

# 1 "./zynqmp-iou.dtsi" 1
# 30 "./zynqmp-iou.dtsi"
# 1 "./zynqmp.dtsh" 1
# 31 "./zynqmp.dtsh"
# 1 "include/loader.dtsh" 1
# 32 "./zynqmp.dtsh" 2
# 1 "./zynqmp-irqs.dtsh" 1
# 33 "./zynqmp.dtsh" 2
# 1 "./zynqmp-memmap.dtsh" 1
# 34 "./zynqmp.dtsh" 2
# 31 "./zynqmp-iou.dtsi" 2
# 1 "./zynqmp-icnt.dtsi" 1
# 83 "./zynqmp-icnt.dtsi"
/ {

 smmu_tbu0: tbu0_slave@0 { #address-cells = <2>; #size-cells = <2>; compatible = "simple-bus"; ranges; };
 smmu_tbu1: tbu1_slave@0 { #address-cells = <2>; #size-cells = <2>; compatible = "simple-bus"; ranges; };
 smmu_tbu2: tbu2_slave@0 { #address-cells = <2>; #size-cells = <2>; compatible = "simple-bus"; ranges; };
 smmu_tbu3: tbu3_slave@0 { #address-cells = <2>; #size-cells = <2>; compatible = "simple-bus"; ranges; };
 smmu_tbu4: tbu4_slave@0 { #address-cells = <2>; #size-cells = <2>; compatible = "simple-bus"; ranges; };
 smmu_tbu5: tbu5_slave@0 { #address-cells = <2>; #size-cells = <2>; compatible = "simple-bus"; ranges; };


 tbu3_master: tbu3_master@0 { #address-cells = <2>; #size-cells = <2>; #priority-cells = <1>; compatible = "simple-bus"; ranges; main_bus_for_tbu3 { compatible = "qemu:memory-region"; alias = <&protected_amba>; reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>; }; };
 tbu4_master: tbu4_master@0 { #address-cells = <2>; #size-cells = <2>; #priority-cells = <1>; compatible = "simple-bus"; ranges; main_bus_for_tbu4 { compatible = "qemu:memory-region"; alias = <&protected_amba>; reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>; }; };
 tbu5_master: tbu5_master@0 { #address-cells = <2>; #size-cells = <2>; #priority-cells = <1>; compatible = "simple-bus"; ranges; main_bus_for_tbu5 { compatible = "qemu:memory-region"; alias = <&protected_amba>; reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>; }; };

 cci_slave: cci_slave@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;


                downstream {
                        compatible = "qemu:memory-region";
                        alias = <&protected_amba>;

                        reg = <0x0 0x0 0xffffffff 0xffffffff 0x1>;
                };
 };

 amba: amba@0 {
  xppu: xppu@0 {
   compatible = "xlnx,xppu";
   reg-extended = <
      &amba 0x0 0xff980000 0x10000

      &protected_amba 0x0 0xFF990000 0x0 0x1000 0x3

      &protected_amba 0x0 0xFF000000 0x0 0xfc0000 0x2

      &protected_amba 0x0 0xFE000000 0x0 0x1000000 0x2

      &protected_amba 0x0 0xC0000000 0x0 0x20000000 0x2
     >;
   mr = <&amba>;
   interrupts = <88>;
  };


  smmu0: smmu0@0xFD800000 {
   compatible = "arm,mmu-500";
   reg-extended = <&amba 0x0 0xFD800000 0x10000
     &smmu_tbu0 0x0 0 0xffffffff 0xffffffff
     &smmu_tbu1 0x0 0 0xffffffff 0xffffffff
     &smmu_tbu2 0x0 0 0xffffffff 0xffffffff
     &smmu_tbu3 0x0 0 0xffffffff 0xffffffff
     &smmu_tbu4 0x0 0 0xffffffff 0xffffffff
     &smmu_tbu5 0x0 0 0xffffffff 0xffffffff>;
   interrupt-parent = <&smmu_reg>;
   interrupts = <0 1 2 3 4 5 6 7
     8 9 10 11 12 13 14 15 16
     17>;



   dma = <&cci_slave>;
   mr-0 = <&cci_slave>;
   mr-1 = <&cci_slave>;
   mr-2 = <&cci_slave>;
   mr-3 = <&tbu3_master>;
   mr-4 = <&tbu4_master>;
   mr-5 = <&tbu5_master>;
  };
  smmu_reg: smmu0@0xFD5F0000 {
   compatible = "xlnx,smmu-reg";
   reg = <0x0 0xFD5F0000 0x1000>;
   interrupt-controller;
   interrupts = <155>;
  };



  cci_mem1: cci_mem1@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  cci_mem2: cci_mem2@0 {
   #address-cells = <2>;
   #size-cells = <2>;
   #priority-cells = <1>;
   compatible = "simple-bus";
   ranges;
  };

  cci: cci@0xFD6E0000 {
   compatible = "arm,cci-400";
   gpio-controller;
   #gpio-cells = <1>;
   reg-extended = <&amba 0x0 0xFD6E0000 0xF000
       &cci_slave 0x0 0 0xFFFFFFFF 0xFFFFFFFF 0x2>;

   M0 = <&protected_amba>;
   M1 = <&cci_mem1>;
   M2 = <&cci_mem2>;
  };

  ocm_xmpu: ocm_xmpu@0xFFA70000 {
   compatible = "xlnx,xmpu";
   interrupts = <88>;
   reg-extended = <
    &amba 0x0 0xFFA70000 0x1000
    &amba 0x0 0xFFFC0000 0x40000
   >;
   protected-mr = <&ocm_ram>;





   mr-0 = <&amba>;
   protected-base = <0xFFFC0000>;
  };

  ddr_xmpu0: ddr_xmpu0_@_DDR_XMPU0_CFG { compatible = "xlnx,xmpu"; interrupts = <134>; reg-extended = < &amba 0x0 0xFD000000 0x1000 &amba_rpu 0x0 0x0 0x0 0x80000000 0x0>; align = <1>; protected-mr = <&ddr3_ram>; protected-base = <0x0>; mr-0 = <&amba_rpu>; };
  ddr_xmpu1: ddr_xmpu1_@_DDR_XMPU1_CFG { compatible = "xlnx,xmpu"; interrupts = <134>; reg-extended = < &amba 0x0 0xFD010000 0x1000 &cci_mem1 0x0 0x0 0x0 0x80000000 0x0>; align = <1>; protected-mr = <&ddr3_ram>; protected-base = <0x0>; mr-0 = <&cci_mem1>; };
  ddr_xmpu2: ddr_xmpu2_@_DDR_XMPU2_CFG { compatible = "xlnx,xmpu"; interrupts = <134>; reg-extended = < &amba 0x0 0xFD020000 0x1000 &cci_mem2 0x0 0x0 0x0 0x80000000 0x0>; align = <1>; protected-mr = <&ddr3_ram>; protected-base = <0x0>; mr-0 = <&cci_mem2>; };
  ddr_xmpu3: ddr_xmpu3_@_DDR_XMPU3_CFG { compatible = "xlnx,xmpu"; interrupts = <134>; reg-extended = < &amba 0x0 0xFD030000 0x1000 &tbu3_master 0x0 0x0 0x0 0x80000000 0x0>; align = <1>; protected-mr = <&ddr3_ram>; protected-base = <0x0>; mr-0 = <&tbu3_master>; };
  ddr_xmpu4: ddr_xmpu4_@_DDR_XMPU4_CFG { compatible = "xlnx,xmpu"; interrupts = <134>; reg-extended = < &amba 0x0 0xFD040000 0x1000 &tbu4_master 0x0 0x0 0x0 0x80000000 0x0>; align = <1>; protected-mr = <&ddr3_ram>; protected-base = <0x0>; mr-0 = <&tbu4_master>; };
  ddr_xmpu5: ddr_xmpu5_@_DDR_XMPU5_CFG { compatible = "xlnx,xmpu"; interrupts = <134>; reg-extended = < &amba 0x0 0xFD050000 0x1000 &tbu5_master 0x0 0x0 0x0 0x80000000 0x0>; align = <1>; protected-mr = <&ddr3_ram>; protected-base = <0x0>; mr-0 = <&tbu5_master>; };

  downstream_amba_priority_bus {
   compatible = "qemu:memory-region";
   alias = <&amba_prio>;
   reg = <0x0 0x0 0xffffffff>;
   priority = <0xffffffff>;
  };
 };

 amba_prio: amba_prio@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "qemu:memory-region";
 };
};

&ddr_xmpu1 {
 gpios = <&cci 0>;
};
&ddr_xmpu2 {
 gpios = <&cci 1>;
};
# 32 "./zynqmp-iou.dtsi" 2
# 116 "./zynqmp-iou.dtsi"
/ {
 #address-cells = <2>;
 #size-cells = <1>;
 aliases {
  serial0 = &ps7_uart_0;
  serial1 = &ps7_uart_1;
 };


 misc_clk: misc_clk {
  #clock-cells = <0>;
  clock-frequency = <50000000>;
  compatible = "fixed-clock";
 };

 amba: amba@0 {
  #address-cells = <2>;
  #size-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges ;

  ps7_afi_0: ps7-afi@0xFD360000 {
   compatible = "xlnx,ps7-afi-1.00.a";
   reg = <0x0 0xFD360000 0x1000>;
  };
  ps7_afi_1: ps7-afi@0xFD370000 {
   compatible = "xlnx,ps7-afi-1.00.a";
   reg = <0x0 0xFD370000 0x1000>;
  };
  ps7_afi_2: ps7-afi@0xFD380000 {
   compatible = "xlnx,ps7-afi-1.00.a";
   reg = <0x0 0xFD380000 0x1000>;
  };
  ps7_afi_3: ps7-afi@0xFD390000 {
   compatible = "xlnx,ps7-afi-1.00.a";
   reg = <0x0 0xFD390000 0x1000>;
  };
  ps7_afi_4: ps7-afi@0xFD3A0000 {
   compatible = "xlnx,ps7-afi-1.00.a";
   reg = <0x0 0xFD3A0000 0x1000>;
  };
  ps7_afi_5: ps7-afi@0xFD3B0000 {
   compatible = "xlnx,ps7-afi-1.00.a";
   reg = <0x0 0xFD3B0000 0x1000>;
  };

  gdma0_mr: gdma0mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma0_mattr: gdma0mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14e8>; }; gdma0: gdma0@0xFD500000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD500000 0x1000>; bus-width = <128>; interrupts = <124>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma0_mattr>; };
  gdma1_mr: gdma1mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma1_mattr: gdma1mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14e9>; }; gdma1: gdma1@0xFD510000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD510000 0x1000>; bus-width = <128>; interrupts = <125>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma1_mattr>; };
  gdma2_mr: gdma2mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma2_mattr: gdma2mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14ea>; }; gdma2: gdma2@0xFD520000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD520000 0x1000>; bus-width = <128>; interrupts = <126>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma2_mattr>; };
  gdma3_mr: gdma3mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma3_mattr: gdma3mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14eb>; }; gdma3: gdma3@0xFD530000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD530000 0x1000>; bus-width = <128>; interrupts = <127>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma3_mattr>; };
  gdma4_mr: gdma4mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma4_mattr: gdma4mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14ec>; }; gdma4: gdma4@0xFD540000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD540000 0x1000>; bus-width = <128>; interrupts = <128>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma4_mattr>; };
  gdma5_mr: gdma5mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma5_mattr: gdma5mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14ed>; }; gdma5: gdma5@0xFD550000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD550000 0x1000>; bus-width = <128>; interrupts = <129>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma5_mattr>; };
  gdma6_mr: gdma6mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma6_mattr: gdma6mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14ee>; }; gdma6: gdma6@0xFD560000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD560000 0x1000>; bus-width = <128>; interrupts = <130>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma6_mattr>; };
  gdma7_mr: gdma7mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; gdma7_mattr: gdma7mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x14ef>; }; gdma7: gdma7@0xFD570000 { compatible = "xlnx,zdma"; reg = <0x0 0xFD570000 0x1000>; bus-width = <128>; interrupts = <131>; #stream-id-cells = <0x1>; dma = <&smmu_tbu5>; memattr = <&gdma7_mattr>; };

  crf: crf@0xFD1A0000 {
   compatible = "xlnx,zynqmp_crf";
   reg = <0x0 0xFD1A0000 0x110>;
   gpio-controller;
   #gpio-cells = <1>;
  };

  xlnx_dpdma: axidpdma@0xFD4C0000 {
   compatible = "xlnx,axi-dpdma-1.0";
   reg = <0x0 0xFD4C0000 0x1000>;
   clocks = <&dummy_clk>;
   clock-names = "axi_clk";
   xlnx,axi-clock-freq = <200000000>;
   interrupts = <122>;
   dma = <&protected_amba>;

   dma-channels = <6>;

   #dma-cells = <1>;
   dma-video0channel@fe4c0000 {
    compatible = "xlnx,video0";
   };
   dma-video1channel@fe4c0000 {
    compatible = "xlnx,video1";
   };
   dma-video2channel@fe4c0000 {
    compatible = "xlnx,video2";
   };
   dma-graphicschannel@fe4c0000 {
    compatible = "xlnx,graphics";
   };
   dma-audio0channel@fe4c0000 {
    compatible = "xlnx,audio0";
   };
   dma-audio1channel@fe4c0000 {
    compatible = "xlnx,audio1";
   };
  };

  dp_aclk: clock0 {
   compatible = "fixed-clock";
   #clock-cells = <0>;
   clock-frequency = <50000000>;
   clock-accuracy = <100>;
  };

  dummy_clk: clock1 {
   compatible = "dummy-clk";
   #clock-cells = <0>;
   clock-frequency = <50000000>;
  };

  xlnx_dp_sub: dp_sub@fd4aa000 {
   compatible = "xlnx,v-dp-sub-1.6";
   reg = <0x0 0xfd4aa000 0x4000>;
   xlnx,output-fmt = "rgb";
  };

  xlnx_dp: dp@0xFD4A0000 {
   compatible = "xlnx,v-dp-4.1";
   reg = <0x0 0xFD4A0000 0x1000>;
   interrupts = <119>;
   clock-names = "aclk";
   clocks = <&dp_aclk>;

   dpdma = <&xlnx_dpdma>;
   xlnx,dp-version = "v1.2";
   xlnx,max-lanes = <2>;
   xlnx,max-link-rate = <162000>;
   xlnx,max-bpc = <16>;
   xlnx,max-pclock = <30000>;
   xlnx,enable-ycrcb;

   xlnx,colormetry = "rgb";
   xlnx,bpc = <8>;

   xlnx,dp-sub = <&xlnx_dp_sub>;
  };

  xilinx_drm {
   compatible = "xlnx,drm";
   xlnx,encoder-slave = <&xlnx_dp>;
   clocks = <&dummy_clk 0>;
   xlnx,connector-type = "DisplayPort";
   xlnx,dp-sub = <&xlnx_dp_sub>;
   planes {
    xlnx,pixel-format = "rgb565";
    plane0 {
     dmas = <&xlnx_dpdma 3>;
     dma-names = "dma";
    };
    plane1 {
     dmas = <&xlnx_dpdma 0>;
     dma-names = "dma";
    };
   };
  };

  ddrphy_0: ddr-phy@0xFD080000 {
   compatible = "xlnx,zynqmp-ddr-phy";
   reg = <0x0 0xFD080000 0x2000>;
  };

  ddrc_0: memory-controller@0xFD070000 {
   compatible = "xlnx,zynqmp-ddrc";
   reg = <0x0 0xFD070000 0x1000>;
  };

  swdt@0xFF150000 {
   compatible = "xlnx,swdt";
   reg = <0x0 0xff150000 0x10>;
   interrupts = <52>;
   pclk = <1000000>;
   gpios = <&pmu_global 12>;
  };

  wdt@0xFD4D0000 {
   compatible = "xlnx,swdt";
   reg = <0x0 0xfd4d0000 0x10>;
   interrupts = <113>;
   pclk = <1000000>;
   gpios = <&pmu_global 13>;
  };

  csu_wdt@0xFFCB0000 {
   compatible = "xlnx,swdt";
   reg = <0x0 0xffcb0000 0x10>;
   interrupts = <53>;
   pclk = <1000000>;
  };

  iou_slcr_0: zynqmp_iou_slcr@0xFF180000 {
   compatible = "xilinx,zynqmp-iou-slcr";
   reg = <0x0 0xFF180000 0x1000>;
   gpio-controller;
   #gpio-cells = <2>;
  };

  ps7_can_0: ps7-can@0xFF060000 {
   compatible = "xlnx,zynqmp-can";
   interrupts = <23>;
   reg = <0x0 0xFF060000 0x1000>;
   ctrl-idx = <0x0>;
  };
  ps7_can_1: ps7-can@0xFF070000 {
   compatible = "xlnx,zynqmp-can";
   interrupts = <24>;
   reg = <0x0 0xFF070000 0x1000>;
   ctrl-idx = <0x1>;
  };

  serdes_0: serdes@0xFD400000 {
   compatible = "xlnx,zynqmp-serdes";
   reg = <0x0 0xFD400000 0x20000>;
  };

  gem0: gem0@0 { #address-cells = <1>; #size-cells = <0>; compatible = "cdns,gem"; interrupts = <57 57>; dma = <&smmu_tbu2>; memattr = <&gem0_memattr>; reg = <0x0 0xFF0B0000 0x1000>; num-priority-queues = <2>; revision = <0x40070106>; };
  gem1: gem1@0 { #address-cells = <1>; #size-cells = <0>; compatible = "cdns,gem"; interrupts = <59 59>; dma = <&smmu_tbu2>; memattr = <&gem1_memattr>; reg = <0x0 0xFF0C0000 0x1000>; num-priority-queues = <2>; revision = <0x40070106>; };
  gem2: gem2@0 { #address-cells = <1>; #size-cells = <0>; compatible = "cdns,gem"; interrupts = <61 61>; dma = <&smmu_tbu2>; memattr = <&gem2_memattr>; reg = <0x0 0xFF0D0000 0x1000>; num-priority-queues = <2>; revision = <0x40070106>; };
  gem3: gem3@0 { #address-cells = <1>; #size-cells = <0>; compatible = "cdns,gem"; interrupts = <63 63>; dma = <&smmu_tbu2>; memattr = <&gem3_memattr>; reg = <0x0 0xFF0E0000 0x1000>; num-priority-queues = <2>; revision = <0x40070106>; };

  sata: ahci@0xFD0C0000 {
   compatible = "generic-ahci", "sysbus-ahci";
   reg = <0x0 0xFD0C0000 0x2000>;
   interrupts = <133>;
   num-ports = <2>;
   dma = <&protected_amba>;
  };

  lpd_gpv@0xFE100000 {
   compatible = "xlnx,lpd-gpv";
   reg = <0x0 0xFE100000 0xC8130>;
  };

  usb3_0: usb3@0xFE200000 {
   compatible = "usb_dwc3";
   reg = <0x0 0xFE20C100 0x600 0x0 0xFE200000 0x4000>;
   interrupts = <65 66
       67 68>;
   intrs = <4>;
   slots = <2>;
   dma = <&amba>;
  };
  usb3_1: usb3@0xFE300000 {
   compatible = "usb_dwc3";
   reg = <0x0 0xFE30C100 0x600 0x0 0xFE300000 0x4000>;
   interrupts = <70 71
       72 73>;
   intrs = <4>;
   slots = <2>;
   dma = <&amba>;
  };

  nand: arasan_nfc@0xFF100000 {
   compatible = "arasan,nfc";
   reg = <0x0 0xFF100000 0x1000>;
   interrupts = <14>;
   dma = <&protected_amba>;
   has-mdma = <1>;
   nand {
    #address-cells = <1>;
    #size-cells = <1>;

    partition@0 {
     label = "all";
     reg = <0x00000000 0x00100000>;
    };
   };
  };

  psu_gpio: psu_gpio@0xFF0A0000 {
   #gpio-cells = <1>;
   compatible = "xlnx,zynqmp-gpio";
   gpio-controller;
   interrupts = <16>;
   reg = <0x0 0xFF0A0000 0x1000>;
  };

  qspi_dma_0: csu_dma@0xFF0F0800 {
   compatible = "zynqmp,csu-dma";
   interrupts = <15>;
   #stream-id-cells = <0x1>;
   reg = <0x0 0xFF0F0800 0x800>;
   dma = <&smmu_tbu2>;
   memattr = <&qspi_dma_memattr>;
   is-dst = <1>;
  };
  ps7_qspi_0: ps7-qspi@0xFF0F0000 {
   #address-cells = <1>;
   #size-cells = <0>;
   #bus-cells = <1>;
   clock-names = "ref_clk", "pclk";
   compatible = "xlnx,usmp-gqspi", "cdns,spi-r1p6";
   stream-connected-dma = <&qspi_dma_0>;
   clocks = <&misc_clk>, <&misc_clk>;
   dma = <&protected_amba>;
   interrupts = <15>;
   num-ss-bits = <2>;



   reg = <0x0 0xFF0F0000 0x1000 0x0 0xC0000000 0x08000000>;

   speed-hz = <10000000>;
   xlnx,fb-clk = <0x1>;
   xlnx,qspi-clk-freq-hz = <0xbebc200>;
   xlnx,qspi-mode = <0x2>;





  };

  sd_clk: sd_clk {
   #clock-cells = <0>;
   clock-frequency = <25000000>;
   compatible = "fixed-clock";
  };
  ps7_sd_0: ps7-sdio@0xFF160000 {
   clock-names = "ref_clk", "aper_clk";
   clock-frequency = <25000000>;
   compatible = "xilinx,zynqmp-sdhci", "generic-sdhci";
   clocks = <&sd_clk>, <&sd_clk>;
   drive-index = <0>;
   interrupts = <48>;
   reg = <0x0 0xFF160000 0x1000>;
   dma = <&smmu_tbu2>;
   memattr = <&sd0_memattr>;
   gpios = <&iou_slcr_0 0 0>;
   gpio-names = "SLOTTYPE";
   is-mmc = <0x0>;
   xlnx,has-cd = <0x1>;
   xlnx,has-power = <0x0>;
   xlnx,has-wp = <0x1>;
   xlnx,sdio-clk-freq-hz = <50000000>;
  };
  ps7_sd_1: ps7-sdio@0xFF170000 {
   clock-names = "ref_clk", "aper_clk";
   compatible = "xilinx,zynqmp-sdhci", "generic-sdhci";
   clocks = <&misc_clk>, <&misc_clk>;
   drive-index = <1>;
   interrupts = <49>;
   reg = <0x0 0xFF170000 0x1000>;
   dma = <&smmu_tbu2>;
   memattr = <&sd1_memattr>;
   gpios = <&iou_slcr_0 1 0>;
   gpio-names = "SLOTTYPE";
   is-mmc = <0x1>;
   xlnx,has-cd = <0x1>;
   xlnx,has-power = <0x0>;
   xlnx,has-wp = <0x1>;
   xlnx,sdio-clk-freq-hz = <50000000>;
  };

  ps7_spi_0: ps7-spi@0xFF040000 {
   #address-cells = <1>;
   #size-cells = <0>;
   clock-names = "ref_clk", "pclk";
   clocks = <&misc_clk>, <&misc_clk>;
   compatible = "cdns,spi-r1p6";
   interrupts = <19>;
   num-ss-bits = <4>;
   reg = <0x0 0xFF040000 0x1000>;
   spi0_flash0: spi0_flash0@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x0>; spi0_flash0@0x00000000 { label = "spi0_flash0"; reg = <0x00000000 0x00100000>; }; };
  };
  ps7_spi_1: ps7-spi@0xFF050000 {
   #address-cells = <1>;
   #size-cells = <0>;
   clock-names = "ref_clk", "pclk";
   clocks = <&misc_clk>, <&misc_clk>;
   compatible = "cdns,spi-r1p6";
   interrupts = <20>;
   num-ss-bits = <4>;
   reg = <0x0 0xFF050000 0x1000>;
   spi1_flash0: spi1_flash0@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x0>; spi1_flash0@0x00000000 { label = "spi1_flash0"; reg = <0x00000000 0x00100000>; }; };
   spi1_flash1: spi1_flash1@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x1 0x0>; spi1_flash1@0x00000000 { label = "spi1_flash1"; reg = <0x00000000 0x00100000>; }; };
   spi1_flash2: spi1_flash2@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x2 0x0>; spi1_flash2@0x00000000 { label = "spi1_flash2"; reg = <0x00000000 0x00100000>; }; };
   spi1_flash3: spi1_flash3@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x3 0x0>; spi1_flash3@0x00000000 { label = "spi1_flash3"; reg = <0x00000000 0x00100000>; }; };
  };

  ps7_ttc_0: ps7-ttc@0xFF110000 {
   clocks = <&misc_clk>;
   compatible = "xlnx,ps7-ttc-1.00.a";
   interrupts = <36 37 38>;
   reg = <0x0 0xFF110000 0x1000>;
   width = <32>;
  };
  ps7_ttc_1: ps7-ttc@0xFF120000 {
   clocks = <&misc_clk>;
   compatible = "xlnx,ps7-ttc-1.00.a";
   interrupts = <39 40 41>;
   reg = <0x0 0xFF120000 0x1000>;
   width = <32>;
  };
  ps7_ttc_2: ps7-ttc@0xFF130000 {
   clocks = <&misc_clk>;
   compatible = "xlnx,ps7-ttc-1.00.a";
   interrupts = <42 43 44>;
   reg = <0x0 0xFF130000 0x1000>;
   width = <32>;
  };
  ps7_ttc_3: ps7-ttc@0xFF140000 {
   clocks = <&misc_clk>;
   compatible = "xlnx,ps7-ttc-1.00.a";
   interrupts = <45 46 47>;
   reg = <0x0 0xFF140000 0x1000>;
   width = <32>;
  };

  uart_clk: uart_clk {
   #clock-cells = <0>;
   clock-frequency = <25000000>;
   compatible = "fixed-clock";
  };
  ps7_uart_0: serial@0xFF000000 {
   compatible = "xlnx,ps7-uart-1.00.a", "xlnx,xuartps";
   current-speed = <115200>;
   interrupts = <21>;
   port-number = <1>;
   reg = <0x0 0xFF000000 0x1000>;
   xlnx,has-modem = <0x0>;
   xlnx,uart-clk-freq-hz = <50000000>;
   clock-names = "uart_clk", "pclk";
   clocks = <&uart_clk &uart_clk>;
   ttrig-polarity = <1>;
  };
  ps7_uart_1: serial@0xFF010000 {
   compatible = "xlnx,ps7-uart-1.00.a", "xlnx,xuartps";
   current-speed = <115200>;
   interrupts = <22>;
   port-number = <0>;
   reg = <0x0 0xFF010000 0x1000>;
   xlnx,has-modem = <0x0>;
   xlnx,uart-clk-freq-hz = <50000000>;
   clock-names = "uart_clk", "pclk";
   clocks = <&uart_clk &uart_clk>;
   ttrig-polarity = <1>;
   status = "disabled";
  };

  plc_peripheral: plc_peripheral@0xfff00000 {
         compatible = "xlnx.plc_peripheral";
         reg = <0x0 0xfff00000 0x0 0xfff00 0x0>;
  };

  plc_nand_flash: plc_nand_flash@0x80000000 {
         compatible = "xlnx.plc_NAND_FLASH";
         reg = <0x0 0x80000000 0x0 0x4000000 0x0>;
  };


  plc_mac: plc_mac@0x7ff0000 {
         compatible = "xlnx.plc_mac";
         reg = <0x0 0x7ff0000 0x0 0x10000 0x0>;
  };
# 584 "./zynqmp-iou.dtsi"
  ocm_ctrl0: ocm_ctrl@0xFF960000 {
   compatible = "xlnx,zynqmp-ocmc";
   memsize = <0x40000>;
   reg = <0x0 0xFF960000 0x1000>;
  };


  ocm_mem_ctrl_0: ocm_mem_ctrl_0@0 { compatible = "qemu,memory-controller"; mr = <&ocm_ram_bank_0>; gpios = <&pmu_local 16 &pmu_local 12>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };
  ocm_mem_ctrl_1: ocm_mem_ctrl_1@1 { compatible = "qemu,memory-controller"; mr = <&ocm_ram_bank_1>; gpios = <&pmu_local 17 &pmu_local 13>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };
  ocm_mem_ctrl_2: ocm_mem_ctrl_2@2 { compatible = "qemu,memory-controller"; mr = <&ocm_ram_bank_2>; gpios = <&pmu_local 18 &pmu_local 14>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };
  ocm_mem_ctrl_3: ocm_mem_ctrl_3@3 { compatible = "qemu,memory-controller"; mr = <&ocm_ram_bank_3>; gpios = <&pmu_local 19 &pmu_local 15>; gpio-names = "hlt_cntrl", "pwr_cntrl"; };


  adma0_mr: adma0mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma0_mattr: adma0mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x868>; }; adma0: adma0@0xFFA80000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFA80000 0x1000>; bus-width = <64>; interrupts = <77>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma0_mattr>; };
  adma1_mr: adma1mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma1_mattr: adma1mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x869>; }; adma1: adma1@0xFFA90000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFA90000 0x1000>; bus-width = <64>; interrupts = <78>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma1_mattr>; };
  adma2_mr: adma2mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma2_mattr: adma2mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x86a>; }; adma2: adma2@0xFFAA0000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFAA0000 0x1000>; bus-width = <64>; interrupts = <79>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma2_mattr>; };
  adma3_mr: adma3mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma3_mattr: adma3mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x86b>; }; adma3: adma3@0xFFAB0000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFAB0000 0x1000>; bus-width = <64>; interrupts = <80>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma3_mattr>; };
  adma4_mr: adma4mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma4_mattr: adma4mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x86c>; }; adma4: adma4@0xFFAC0000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFAC0000 0x1000>; bus-width = <64>; interrupts = <81>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma4_mattr>; };
  adma5_mr: adma5mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma5_mattr: adma5mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x86d>; }; adma5: adma5@0xFFAD0000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFAD0000 0x1000>; bus-width = <64>; interrupts = <82>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma5_mattr>; };
  adma6_mr: adma6mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma6_mattr: adma6mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x86e>; }; adma6: adma6@0xFFAE0000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFAE0000 0x1000>; bus-width = <64>; interrupts = <83>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma6_mattr>; };
  adma7_mr: adma7mr{ #address-cells = <2>; #size-cells = <1>; compatible = "simple-bus"; ranges ; }; adma7_mattr: adma7mattr { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x86f>; }; adma7: adma7@0xFFAF0000 { compatible = "xlnx,zdma"; reg = <0x0 0xFFAF0000 0x1000>; bus-width = <64>; interrupts = <84>; #stream-id-cells = <0x1>; dma = <&smmu_tbu2>; memattr = <&adma7_mattr>; };

  crl: crl@0xFF5E0000 {
   compatible = "xlnx,zynqmp-crl";
   reg = <0x0 0xFF5E0000 0x1000>;
   gpio-controller;
   #gpio-cells = <1>;
   num-gpios = <3>;
   gpios = <&pmu_global 26>;
  };


  gic_proxy: gic_proxy@0xff418000 {
   #interrupt-cells = <3>;
   reg = <0x0 0xff418000 0x100>;
   compatible = "xlnx,zynqmp-gicp";
   interrupt-controller;
   gpios = <&pmu_io_gpi1 17 0>;
  };


  zynqmp_anms: zynqmp_anms@0xFFA50000 {
   compatible = "xlnx,zynqmp_ams";
   reg = <0x0 0xFFA50000 0x68>;
   gpio-controller;
   #gpio-cells = <2>;
  };
  zynqmp_sysmon_ps: zynqmp_sysmon_ps@0xFFA50800 {
   compatible = "xlnx,zynqmp_sysmon";
   reg = <0x0 0xFFA50800 0x200>;
   gpio-controller;
   #gpio-cells = <2>;
  };
  zynqmp_sysmon_pl: zynqmp_sysmon_pl@0xFFA50C00 {
   compatible = "xlnx,zynqmp_sysmon";
   reg = <0x0 0xFFA50C00 0x200>;
   gpio-controller;
   #gpio-cells = <2>;
  };

  zynqmp_rtc: zynqmp_rtc@0xFFA60000 {
   compatible = "xlnx-zynmp,rtc";
   interrupts = <11 26 27>;
   reg = <0x00 0xFFA60000 0x100>;
  };


  dummy_gpio: dummy_gpio@0 {
   gpio-controller;
   #gpio-cells = <1>;
  };

  pmu_global: pmu_global@0xFFD80000 {
   compatible = "xlnx,pmu_global";
   reg = <0x0 0xFFD80000 0x40000>;
   gpio-controller;
   #gpio-cells = <1>;
   num-gpios = <26>;

   gpios = <&rp_gpio_pmu 3>;
   gpio-names = "mb_sleep";
   error-out-gpios = <&pmu_io_gpi1 29 0 &pmu_io_gpi1 30 0>;

   pwr-state-gpios = < &pmu_local 1 &pmu_local 2 &pmu_local 3 &pmu_local 4 &pmu_local 5 &pmu_local 6 &dummy_gpio 0 &pmu_local 10 &dummy_gpio 1 &dummy_gpio 2 &pmu_local 9 &pmu_local 9 &pmu_local 20 &pmu_local 21 &pmu_local 22 &pmu_local 23 &pmu_local 12 &pmu_local 13 &pmu_local 14 &pmu_local 15 &pmu_local 7 &pmu_local 8 &pmu_local 28 >;
# 694 "./zynqmp-iou.dtsi"
  };

  cxtsgen: cxtsgen@0xFF250000 {
   compatible = "arm,generic-timer";
   reg = <0x0 0xFF260000 0x1000>;
  };

  ps_reset@0 {
   compatible = "qemu,reset-device";
   gpios = <&crl 2 &pmu_global 3>;
  };

  pcie_attrib: pcie_attrib@0xFD480000 {
   compatible = "xlnx,nwl-pcie-attrib";
   reg = <0x0 0xFD480000 0x1000>;
   interrupts = <118>;
  };

  pcie_main: pcie_main@0xFD0E0000 {
   compatible = "xlnx,nwl-pcie-main";
   reg-extended = <&amba 0x0 0xFD0E0000 0x1000




     &pcie_ingress 0x0 0xFE440000 0x0 0x1000 0x2

     &amba 0x80 0x0 0x10000000
     &pcie_overlay 0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0x0

     >;
   interrupts = < 116 114 115 >;
   dma = <&pcie_ingress>;
   memattr = <&pcie_ns_memattr>;
  };

  zynqmp_boot: zynqmp_boot@0 {
   compatible = "xlnx,zynqmp-boot";
   dma = <&amba>;

   gpios = <&pmu_local 0>;
   gpios-names = "reset";

  };

  mio_in: rp_cosim_mio_in {
    gpio-controller;
    #gpio-cells = <2>;
  };
 };


 pcie_ingress: pcie_ingress@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  downstream {
   compatible = "qemu:memory-region";
   alias = <&smmu_tbu1>;
   reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
  };
 };


 pcie_overlay: pcie_overlay@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  priority = <2>;
  compatible = "qemu:memory-region";
  container = <&amba>;
 };


 qemu_sysmem: qemu_sysmem@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "qemu:system-memory";


  downstream@0 {
   compatible = "qemu:memory-region";
   alias = <&ddr3_ram>;
   reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0x0>;
  };
 };
};
# 602 "./zynqmp-arm.dtsi" 2
# 1 "./zynqmp-csu.dtsi" 1
# 35 "./zynqmp-csu.dtsi"
&amba {
 zynqmp_csu_dma_dst: csu_dma_dst@0xFFC80800 {
  compatible = "zynqmp,csu-dma";
  interrupts = <86>;
  reg = <0x0 0xFFC80800 0x800>;
  dma = <&protected_amba>;
  is-dst = <1>;
  memattr = <&csu_dma_memattr>;
 };
 xlnx_csu_dma_src: csu_dma_src@0xFFC80000 {
  compatible = "zynqmp,csu-dma";
  interrupts = <86>;
  stream-connected-dma = <&zynqmp_csu_stream_switch> ;
  reg = <0x0 0xFFC80000 0x800>;
  dma = <&protected_amba>;
  memattr = <&csu_dma_memattr>;
 };

 zynqmp_csu_sha: csu_sha@0xFFCA2000 {
  compatible = "zynqmp,csu-sha3";
  reg = <0x0 0xFFCA2000 0x100>;
 };

 zynqmp_csu_aes: csu_aes@0xFFCA1000 {
  #gpio-cells = <1>;
  gpio-controller;
  compatible = "zynqmp,csu-aes";
  stream-connected-aes = <&zynqmp_csu_stream_switch> ;
  reg = <0x0 0xFFCA1000 0x100>;
  gpios = <&xlnx_aes 0
    &xlnx_aes 1>;
  gpio-names = "busy", "done";
  aes-core = <&xlnx_aes>;
  xlnx_aes: xlnx_aes@0 {
   #gpio-cells = <1>;
   compatible = "xlnx-aes";
   gpios = <&zynqmp_csu_aes 5>;
   gpio-names = "reset";
  };
 };

 zynqmp_csu_puf: csu_puf@0xFFCA4000 {
  compatible = "xlnx,zynqmp-pufop";
  zynqmp-aes-key-sink-puf = <&zynqmp_csu_aes>;
  efuse = <&xlnx_efuse>;
  reg = <0x0 0xFFCA4000 0x1C>;
 };

 zynqmp_csu_efuse: csu_efuse@0xFFCC0000 {
  compatible = "xlnx,zynqmp-efuse";
  zynqmp-aes-key-sink-efuses = <&zynqmp_csu_aes>;
  reg = <0x0 0xFFCC0000 0x2000>;
  efuse = <&xlnx_efuse>;
  xlnx_efuse: xlnx_efuse@0 {
   doc-ignore = <1>;
   compatible = "xlnx,efuse";
   efuse-nr = <3>;
   efuse-size = <2048>;
  };
 };

 zynqmp_csu_bbram: csu_bbram@0xFFCD0000 {
  compatible = "xlnx,bbram-ctrl";
  zynqmp-aes-key-sink-bbram = <&zynqmp_csu_aes>;
  reg = <0x0 0xFFCD0000 0x100>;
 };

 zynqmp_csu_rsa: csu_rsa@0xFFCE0000 {
  compatible = "zynqmp,csu-rsa";
  reg = <0x0 0xFFCE0000 0x64>;
 };
};

&amba_prio {
 zynqmp_csu_stream_switch: csu_stream_switch@ffcc0200 {
  compatible = "zynqmp,csu-sss";
  reg = <0x0 0xffca0008 0x0 0x4 0x0>;
  stream-connected-dma = <&zynqmp_csu_dma_dst> ;
  stream-connected-pcap = <&zynqmp_csu_pcap> ;
  stream-connected-aes = <&zynqmp_csu_aes> ;
  stream-connected-sha = <&zynqmp_csu_sha> ;
 };
 zynqmp_csu_pcap: csu_pcap@0xFFCA3000 {
  compatible = "zynqmp,csu-pcap";
  reg = <0x0 0xFFCA3000 0x0 0x10000 0x0>;
  stream-connected-pcap = <&zynqmp_csu_stream_switch> ;
 };
};
# 603 "./zynqmp-arm.dtsi" 2

&amba_rpu {
 ddr_memory_2_for_rpu: ddr_memory_2_for_rpu {
  compatible = "qemu:memory-region";
  alias = <&ddr_bank1_2>;
  reg = <0x0 0x30000 0x00000000 0x00010000 0x0>;
 };
};

&rpu_ctrl {
 ddr-mem-for-rpu = <&ddr_memory_2_for_rpu>;
};

&zynqmp_csu_puf {
 puf-acc-err-sink = <&xlnx_zynqmp_csu_core>;
};
# 36 "./board-zynqmp-zcu102.dts" 2
# 1 "./zynqmp-memory-regions.dtsi" 1
# 30 "./zynqmp-memory-regions.dtsi"
# 1 "./zynqmp.dtsh" 1
# 31 "./zynqmp.dtsh"
# 1 "include/loader.dtsh" 1
# 32 "./zynqmp.dtsh" 2
# 1 "./zynqmp-irqs.dtsh" 1
# 33 "./zynqmp.dtsh" 2
# 1 "./zynqmp-memmap.dtsh" 1
# 34 "./zynqmp.dtsh" 2
# 31 "./zynqmp-memory-regions.dtsi" 2
# 42 "./zynqmp-memory-regions.dtsi"
/ {
 pmu_memattr: pmu_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x40>; };

 apu0_s_memattr: apu0_s_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x80>; };
 apu0_ns_memattr: apu0_ns_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x80>; };
 apu1_s_memattr: apu1_s_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x8d>; };
 apu1_ns_memattr: apu1_ns_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x8d>; };
 apu2_s_memattr: apu2_s_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x8e>; };
 apu2_ns_memattr: apu2_ns_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x8e>; };
 apu3_s_memattr: apu3_s_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x8f>; };
 apu3_ns_memattr: apu3_ns_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x8f>; };

 rpu0_memattr: rpu0_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x2e>; };
 rpu1_memattr: rpu1_ma { compatible = "qemu:memory-transaction-attr"; secure = <1>; requester-id = <0x2f>; };

 gem0_memattr: gem0_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x874>; };
 gem1_memattr: gem1_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x875>; };
 gem2_memattr: gem2_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x876>; };
 gem3_memattr: gem3_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x877>; };
 qspi_dma_memattr: qspi_dma_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x873>; };
 sd0_memattr: sd0_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x870>; };
 sd1_memattr: sd1_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x871>; };

 pcie_ns_memattr: pcie_ns_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x4d0>; };
 csu_dma_memattr: csu_dma_ma { compatible = "qemu:memory-transaction-attr"; secure = <0>; requester-id = <0x851>; };


 protected_amba: protected_amba@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges;
  downstream {
   compatible = "qemu:memory-region";
   alias = <&amba>;
   reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
  };
 };

 amba: amba@0 {
  #address-cells = <2>;
  #size-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges ;
   rpu0_for_main_bus {
    compatible = "qemu:memory-region";
    alias = <&tcm_cache_rpu0>;
    reg = <0x0 0xffe00000 0x60000>;
   };
   rpu1_for_main_bus {
    compatible = "qemu:memory-region";
    alias = <&tcm_cache_rpu1>;
    reg = <0x0 0xffe90000 0x50000>;
   };
 };

 ddr3_ram: memory@00000000 {
  compatible = "qemu:memory-region";
  device_type = "memory";
  container = <&amba>;
 };

 pmu_ram: pmu_ram@ffdc0000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <2>;
  reg = <0x0 0xffdc0000 0x00020000>;
 };

 tcm_ram_r5_0_A: tcm_ram_r5_0_A@0x00000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu0>; qemu,ram = <2>; reg = <0x0 0x00000 0x10000>; };
 tcm_ram_r5_0_B: tcm_ram_r5_0_B@0x20000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu0>; qemu,ram = <2>; reg = <0x0 0x20000 0x10000>; };
 tcm_ram_r5_1_A: tcm_ram_r5_1_A@0x00000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu1>; qemu,ram = <2>; reg = <0x0 0x00000 0x10000>; };
 tcm_ram_r5_1_B: tcm_ram_r5_1_B@0x20000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu1>; qemu,ram = <2>; reg = <0x0 0x20000 0x10000>; };

 icache_rpu0: icache_rpu0@0x40000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu0>;
  qemu,ram = <2>;
  reg = <0x0 0x40000 0x8000>;
 };

 dcache_rpu0: dcache_rpu0@0x50000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu0>;
  qemu,ram = <2>;
  reg = <0x0 0x50000 0x8000>;
 };

 icache_rpu1: icache_rpu1@0x30000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu1>;
  qemu,ram = <2>;
  reg = <0x0 0x30000 0x8000>;
 };

 dcache_rpu1: dcache_rpu1@0x40000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu1>;
  qemu,ram = <2>;
  reg = <0x0 0x40000 0x8000>;
 };

 ipibuf_ram: ipibuf@ff990000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <2>;
  reg = <0x0 0xff990000 0x1000>;
 };

 ocm_ram: ocm_ram@0 {
  compatible = "qemu:memory-region";
 };

 ocm_ram_bank_0: ocm_ram_bank_0@0x00000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <2>; reg = <0x0 0x00000 0x10000>; };
 ocm_ram_bank_1: ocm_ram_bank_1@0x10000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <2>; reg = <0x0 0x10000 0x10000>; };
 ocm_ram_bank_2: ocm_ram_bank_2@0x20000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <2>; reg = <0x0 0x20000 0x10000>; };
 ocm_ram_bank_3: ocm_ram_bank_3@0x30000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <2>; reg = <0x0 0x30000 0x10000>; };
# 171 "./zynqmp-memory-regions.dtsi"
 tcm_cache_rpu0: tcm_cache_rpu0@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "qemu:memory-region";

  atcm1_for_rpu0: atcm1_for_rpu0 {
   compatible = "qemu:memory-region";
   alias = <&tcm_ram_r5_1_A>;
   reg = <0x0 0x10000 0x0 0x10000 0x1>;
  };

  btcm1_for_rpu0: btcm1_for_rpu0 {
   compatible = "qemu:memory-region";
   alias = <&tcm_ram_r5_1_B>;
   reg = <0x0 0x30000 0x0 0x10000 0x1>;
  };
 };

 amba_rpu0: amba_rpu0@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges;

  tcm_cache_rpu0 {
      compatible = "qemu:memory-region";
      alias = <&tcm_cache_rpu0>;
      reg = <0x0 0x0 0xffffffff 0xffffffff 0x0>;
  };

  rpu_bus_for_rpu0 {
   compatible = "qemu:memory-region";
   alias = <&amba_rpu>;
   reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
  };
 };

 tcm_cache_rpu1: tcm_cache_rpu1@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "qemu:memory-region";
 };

 amba_rpu1: amba_rpu1@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges ;

  tcm_cache_rpu1 {
      compatible = "qemu:memory-region";
      alias = <&tcm_cache_rpu1>;
      reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0x1>;
  };

  rpu_bus_for_rpu1 {
   compatible = "qemu:memory-region";
   alias = <&amba_rpu>;
   reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
  };
 };

 amba_rpu: amba_rpu@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "xlnx,ps7-axi-interconnect-1.00.a", "simple-bus";
  ranges;
  main_bus_for_rpu {
   compatible = "qemu:memory-region";
   alias = <&protected_amba>;
   reg = <0x0 0x0 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF>;
  };
 };
};
# 37 "./board-zynqmp-zcu102.dts" 2
# 1 "./zynqmp-boot-init.dtsi" 1
# 30 "./zynqmp-boot-init.dtsi"
&amba_prio {
 loader_write_0xFD0807E0:loader_write_cpu0_0x1003F@0xFD0807E0 { compatible = "loader"; addr = <0xFD0807E0>; data = <0x1003F>; data-len = <0x4>; cpu-num = <0>; attrs-debug = <1>; attrs-secure = <0>; attrs-requester-id = <0>; };
 loader_write_0xFD0809E0:loader_write_cpu0_0x1003F@0xFD0809E0 { compatible = "loader"; addr = <0xFD0809E0>; data = <0x1003F>; data-len = <0x4>; cpu-num = <0>; attrs-debug = <1>; attrs-secure = <0>; attrs-requester-id = <0>; };
 loader_write_0xFD080BE0:loader_write_cpu0_0x1003F@0xFD080BE0 { compatible = "loader"; addr = <0xFD080BE0>; data = <0x1003F>; data-len = <0x4>; cpu-num = <0>; attrs-debug = <1>; attrs-secure = <0>; attrs-requester-id = <0>; };
 loader_write_0xFD080DE0:loader_write_cpu0_0x1003F@0xFD080DE0 { compatible = "loader"; addr = <0xFD080DE0>; data = <0x1003F>; data-len = <0x4>; cpu-num = <0>; attrs-debug = <1>; attrs-secure = <0>; attrs-requester-id = <0>; };
};
# 38 "./board-zynqmp-zcu102.dts" 2

/ {
 model = "ZynqMP ZCU102 RevA";
 compatible = "xlnx,zynqmp-zcu102", "xlnx,zynqmp";

 amba_pl: amba_pl {
  #address-cells = <2>;
  #size-cells = <2>;
  compatible = "simple-bus";
  ranges;
 };

 aliases {
  ethernet0 = &gem3;

  main_bus_for_pl {
   compatible = "qemu:memory-region";
   container = <&amba>;
   alias = <&amba_pl>;
   priority = <0xFFFFFFFF>;
  };
 };

 mdio0: mdio {
  #address-cells = <1>;
  #size-cells = <0>;
  compatible="mdio";
  phy0: phy@7 {
   compatible = "88e1118r";
   device_type = "ethernet-phy";
  };
 };
};

&amba {
 i2c0: i2c0@0xFF020000 {
  #address-cells = <1>;
  #size-cells = <0>;
  clocks = <&misc_clk>;
  compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10";
  interrupts = <17>;
  reg = <0x0 0xFF020000 0x1000>;
  tca6416_u97: tca6416@20 {
   compatible = "ti,tca6416";
   reg = <0x20>;
  };
  tca6416_u61: tca6416@21 {
   compatible = "ti,tca6416";
   reg = <0x21>;
  };
  i2cswitch@75 {
   #address-cells = <1>;
   #size-cells = <0>;
   compatible = "nxp,pca9544";
   reg = <0x74>;
   chip-enable = <0x1>;
   i2c@0 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <0>;

    ina226@40 {
     compatible = "i2c-dev-dummy";
     reg = <0x40>;
     shunt-resistor = <5000>;
    };
    ina226@41 {
     compatible = "i2c-dev-dummy";
     reg = <0x41>;
     shunt-resistor = <5000>;
    };
    ina226@42 {
     compatible = "i2c-dev-dummy";
     reg = <0x42>;
     shunt-resistor = <5000>;
    };
    ina226@43 {
     compatible = "i2c-dev-dummy";
     reg = <0x43>;
     shunt-resistor = <5000>;
    };
    ina226@44 {
     compatible = "i2c-dev-dummy";
     reg = <0x44>;
     shunt-resistor = <5000>;
    };
    ina226@45 {
     compatible = "i2c-dev-dummy";
     reg = <0x45>;
     shunt-resistor = <5000>;
    };
    ina226@46 {
     compatible = "i2c-dev-dummy";
     reg = <0x46>;
     shunt-resistor = <5000>;
    };
    ina226@47 {
     compatible = "i2c-dev-dummy";
     reg = <0x47>;
     shunt-resistor = <5000>;
    };
    ina226@4a {
     compatible = "i2c-dev-dummy";
     reg = <0x4a>;
     shunt-resistor = <5000>;
    };
    ina226@4b {
     compatible = "i2c-dev-dummy";
     reg = <0x4b>;
     shunt-resistor = <5000>;
    };
   };
   i2c@1 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <1>;

    ina226@40 {
     compatible = "i2c-dev-dummy";
     reg = <0x40>;
     shunt-resistor = <2000>;
    };
    ina226@41 {
     compatible = "i2c-dev-dummy";
     reg = <0x41>;
     shunt-resistor = <5000>;
    };
    ina226@42 {
     compatible = "i2c-dev-dummy";
     reg = <0x42>;
     shunt-resistor = <5000>;
    };
    ina226@43 {
     compatible = "i2c-dev-dummy";
     reg = <0x43>;
     shunt-resistor = <5000>;
    };
    ina226@44 {
     compatible = "i2c-dev-dummy";
     reg = <0x44>;
     shunt-resistor = <5000>;
    };
    ina226@45 {
     compatible = "i2c-dev-dummy";
     reg = <0x45>;
     shunt-resistor = <5000>;
    };
    ina226@46 {
     compatible = "i2c-dev-dummy";
     reg = <0x46>;
     shunt-resistor = <5000>;
    };
    ina226@47 {
     compatible = "i2c-dev-dummy";
     reg = <0x47>;
     shunt-resistor = <5000>;
    };
   };
   i2c@2 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <2>;
    max15301@a {
     compatible = "i2c-dev-dummy";
     reg = <0xa>;
    };
    max15303@b {
     compatible = "i2c-dev-dummy";
     reg = <0xb>;
    };
    max15303@10 {
     compatible = "i2c-dev-dummy";
     reg = <0x10>;
    };
    max15301@13 {
     compatible = "i2c-dev-dummy";
     reg = <0x13>;
    };
    max15303@14 {
     compatible = "i2c-dev-dummy";
     reg = <0x14>;
    };
    max15303@15 {
     compatible = "i2c-dev-dummy";
     reg = <0x15>;
    };
    max15303@16 {
     compatible = "i2c-dev-dummy";
     reg = <0x16>;
    };
    max15303@17 {
     compatible = "i2c-dev-dummy";
     reg = <0x17>;
    };
    max15301@18 {
     compatible = "i2c-dev-dummy";
     reg = <0x18>;
    };
    max15303@1a {
     compatible = "i2c-dev-dummy";
     reg = <0x1a>;
    };
    max15303@1d {
     compatible = "i2c-dev-dummy";
     reg = <0x1d>;
    };
    max20751@72 {
     compatible = "i2c-dev-dummy";
     reg = <0x72>;
    };
    max20751@73 {
     compatible = "i2c-dev-dummy";
     reg = <0x73>;
    };
   };
  };
 };

 i2c1: i2c1@0xFF030000 {
  #address-cells = <1>;
  #size-cells = <0>;
  clocks = <&misc_clk>;
  compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10";
  interrupts = <18>;
  reg = <0x0 0xFF030000 0x1000>;
  i2cswitch@74 {
   #address-cells = <1>;
   #size-cells = <0>;
   compatible = "nxp,pca9548";
   reg = <0x74>;
   i2c@0 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <0>;
    eeprom@54 {
     compatible = "at,24c08";
     reg = <0x54>;
    };
    eeprom@55 {
     compatible = "at,24c08";
     reg = <0x55>;
    };
    eeprom@56 {
     compatible = "at,24c08";
     reg = <0x56>;
    };
    eeprom@57 {
     compatible = "at,24c08";
     reg = <0x57>;
    };
   };
   i2c@1 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <1>;
    si5341: clock-generator1@36 {
     compatible = "silabs,si5341";
     reg = <0x36>;
     default-clock-sel = <0x3>;
     input-rates = <0 0 0 48000000>;
     synth-rates = <108000000
                    1000000000
             104000000
             297000000
             0>;
     output-synth-sel = <0 0 2 1 1 1 1 3 0
                         1>;
     output-rates = < 27000000
                             0
        26000000
       125000000
       100000000
       100000000
       125000000
        74250000
               0
        33333333>;
    };
   };
   i2c@2 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <2>;
    si570_1: clock-generator@5d {
     compatible = "silabs,si57x";
     reg = <0x5d>;
     temperature-stability=<50>;
    };
   };
   i2c@3 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <3>;
    si570_2: clock-generator@5e {
     compatible = "silabs,si57x";
     reg = <0x5d>;
     temperature-stability=<50>;
    };
   };
   i2c@4 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <4>;
    si5328: clock-generator4@69 {
     compatible = "i2c-dev-dummy";
     reg = <0x69>;
    };
   };
  };
  i2cswitch@75 {
   compatible = "nxp,pca9548";
   #address-cells = <1>;
   #size-cells = <0>;
   reg = <0x74>;
   chip-enable = <0x1>;

   i2c@0 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <0>;

   };
   i2c@1 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <1>;

   };
   i2c@2 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <2>;

   };
   i2c@3 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <3>;

    dev@19 {
     compatible = "xxx";
     reg = <0x19>;
    };
    dev@30 {
     compatible = "xxx";
     reg = <0x30>;
    };
    dev@35 {
     compatible = "xxx";
     reg = <0x35>;
    };
    dev@36 {
     compatible = "xxx";
     reg = <0x36>;
    };
    dev@37 {
     compatible = "i2c-dev-dummy";
     reg = <0x37>;
    };
    dev@51 {
     compatible = "sodimm-spd";
     reg = <0x51>;
    };
   };
   i2c@4 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <4>;

   };
   i2c@5 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <5>;

   };
   i2c@6 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <6>;

   };
   i2c@7 {
    #address-cells = <1>;
    #size-cells = <0>;
    reg = <7>;

   };
  };
 };
};

&ps7_qspi_0 {
 qspi_flash_lcs_lb: qspi_flash_lcs_lb@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "n25q512a11", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x0>; qspi_flash_lcs_lb@0x00000000 { label = "qspi_flash_lcs_lb"; reg = <0x00000000 0x02000000>; }; };
 qspi_flash_ucs_ub: qspi_flash_ucs_ub@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "n25q512a11", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x3 0x1>; qspi_flash_ucs_ub@0x00000000 { label = "qspi_flash_ucs_ub"; reg = <0x00000000 0x02000000>; }; };
};

&ps7_spi_0 {
 spi0_flash1: spi0_flash1@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x1 0x0>; spi0_flash1@0x00000000 { label = "spi0_flash1"; reg = <0x00000000 0x00100000>; }; };
 spi0_flash2: spi0_flash2@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x2 0x0>; spi0_flash2@0x00000000 { label = "spi0_flash2"; reg = <0x00000000 0x00100000>; }; };
 spi0_flash3: spi0_flash3@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x3 0x0>; spi0_flash3@0x00000000 { label = "spi0_flash3"; reg = <0x00000000 0x00100000>; }; };
};

&gem3 {
 mdio = <&mdio0>;
};

&iou_slcr_0 {
 mio-bank0-1.8v = <1>;
 mio-bank1-1.8v = <1>;
 mio-bank2-1.8v = <1>;
};
# 31 "./board-zynqmp-zcu1275.dts" 2

&gem1 {
 mdio = <&mdio0>;
};

&gem3 {
 /delete-property/ mdio;
};
# 31 "board-zynqmp-zcu1285.dts" 2

