# 1 "ep108-arm.cosim.dts"
# 1 "<built-in>" 1
# 1 "ep108-arm.cosim.dts" 2
# 30 "ep108-arm.cosim.dts"
# 1 "./ep108-arm.dts" 1
# 30 "./ep108-arm.dts"
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
# 31 "./ep108-arm.dts" 2

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

 ddr_bank1_1: ddr_bank1_1@0x0 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x0 0x30000>; };
 ddr_bank1_2: ddr_bank1_2@0x40000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x40000 0x7fb0000>; };


 ddr_bank1_3: ddr_bank1_3@0x10000000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x10000000 0x50000>; };
 ddr_bank3: ddr_bank3@0x800000000 { compatible = "qemu:memory-region-spec"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x8 0x00000000 0x8 0x00000000>; };
# 157 "./zynqmp-arm.dtsi"
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








   ;

  apu: apu@0xFD5C0000 {
   compatible = "xlnx,apu";
   #gpio-cells = <1>;
   reg = <0x0 0xFD5C0000 0x1000>;
   cpu0 = <&cpu0>;
   cpu1 = <&cpu1>;
   cpu2 = <&cpu2>;
   cpu3 = <&cpu3>;



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
# 53 "./zynqmp-pmu-dev.dtsi"
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
# 84 "./zynqmp-pmu-dev.dtsi"
   pmu_io_intc: dummy_pmu_intc@0 {
    #interrupt-cells = <2>;
    interrupt-controller;
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
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <0>; enable-method = "psci"; reg = <0>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 0 >; gpio-names = "rst_cntrl" ;
   gdb-id = "Cortex-A53 #0";
   memattr_s = <&apu0_s_memattr>;
   memattr_ns = <&apu0_ns_memattr>;
  };
  cpu1: apu_cpu@1 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <1>; enable-method = "psci"; reg = <1>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 1 >; gpio-names = "rst_cntrl" ;
   direct-lnx-start-powered-off = <1>; start-powered-off = <0>;
   gdb-id = "Cortex-A53 #1";
   memattr_s = <&apu1_s_memattr>;
   memattr_ns = <&apu1_ns_memattr>;
  };
  cpu2: apu_cpu@2 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <2>; enable-method = "psci"; reg = <2>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 2 >; gpio-names = "rst_cntrl" ;
   direct-lnx-start-powered-off = <1>; start-powered-off = <0>;
   gdb-id = "Cortex-A53 #2";
   memattr_s = <&apu2_s_memattr>;
   memattr_ns = <&apu2_ns_memattr>;
  };
  cpu3: apu_cpu@3 {
   compatible = "cortex-a53-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr = <0x410fd034>; arm,ctr = <0x83338003>; arm,clidr = <0x09200003>; arm,id_pfr0 = <0x1231>; arm,ccsidr0 = <0x701fe019>; arm,ccsidr1 = <0x201fe019>; arm,mp-affinity = <3>; enable-method = "psci"; reg = <3>; core-count = <4>; arm,reset-hivecs = <1>; arm,rvbar = <0xffff0000>; #interrupt-cells = <1>; arm,reset-cbar = <0xFD3FE000>; mr = <&amba_apu>; memory = <&amba_apu>; gpios = <&crf 3 >; gpio-names = "rst_cntrl" ;
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
   gpios = <&crl 0 &rpu_ctrl 0 &rpu_ctrl 5 >;
   gpio-names = "reset", "ncpuhalt", "vinithi" ;
   gdb-id = "Cortex-R5 #0";
   memattr_ns = <&rpu0_memattr>;
  };
  rpu_cpu1: rpu_cpu@1 {
   compatible = "cortex-r5f-arm-cpu"; d-cache-line-size = <0x20>; d-cache-size = <0x8000>; device_type = "cpu"; i-cache-line-size = <0x20>; i-cache-size = <0x8000>; arm,midr=<0x411fc153>; arm,tcmtr=<0x00010001>; arm,ctr=<0x8003c003>; arm,clidr=<0x09200003>; arm,ccsidr0 = <0xf01fe019>; arm,ccsidr1 = <0xf01fe019>; arm,mp-affinity = <0x101>; arm,id_pfr0 = <0x131>; arm,reset-hivecs = <1>; #interrupt-cells = <1>;
   reg = <1>;
   mr = <&amba_rpu1>;
   memory = <&amba_rpu1>;
   gpios = <&crl 1 &rpu_ctrl 2 &rpu_ctrl 1 &rpu_ctrl 6 >;
   gpio-names = "reset", "halt", "ncpuhalt", "vinithi" ;
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


   num-irq = <192>;
   interrupts-extended =





    <&cpu0 0>,
    <&cpu1 0>,
    <&cpu2 0>,
    <&cpu3 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&cpu0 2>,
    <&cpu1 2>,
    <&cpu2 2>,
    <&cpu3 2>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&cpu0 1>,
    <&cpu1 1>,
    <&cpu2 1>,
    <&cpu3 1>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&dummy 0>,
    <&cpu0 3>,
    <&cpu1 3>,
    <&cpu2 3>,
    <&cpu3 3>,
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
# 545 "./zynqmp-arm.dtsi"
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




    <&rpu_cpu0 0>,
    <&rpu_cpu1 0>;

  };
 };

 amba: amba@0 {
  apu_ipi: apu_ipi@0xFF300000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 35 4>, <0 0 0 &rpu_gic 0 35 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF300000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 0 0 &rpu_0_ipi 0 0 &rpu_1_ipi 0 0 &pmu_0_ipi 0 0 &pmu_1_ipi 0 0 &pmu_2_ipi 0 0 &pmu_3_ipi 0 0 &pl_0_ipi 0 0 &pl_1_ipi 0 0 &pl_2_ipi 0 0 &pl_3_ipi 0 0 >; gpios = < &apu_ipi 32 0 &rpu_0_ipi 32 0 &rpu_1_ipi 32 0 &pmu_0_ipi 32 0 &pmu_1_ipi 32 0 &pmu_2_ipi 32 0 &pmu_3_ipi 32 0 &pl_0_ipi 32 0 &pl_1_ipi 32 0 &pl_2_ipi 32 0 &pl_3_ipi 32 0 >; };

  rpu_0_ipi: rpu_0_ipi@0xFF310000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 33 4>, <0 0 0 &rpu_gic 0 33 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF310000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 8 0 &rpu_0_ipi 8 0 &rpu_1_ipi 8 0 &pmu_0_ipi 8 0 &pmu_1_ipi 8 0 &pmu_2_ipi 8 0 &pmu_3_ipi 8 0 &pl_0_ipi 8 0 &pl_1_ipi 8 0 &pl_2_ipi 8 0 &pl_3_ipi 8 0 >; gpios = < &apu_ipi 40 0 &rpu_0_ipi 40 0 &rpu_1_ipi 40 0 &pmu_0_ipi 40 0 &pmu_1_ipi 40 0 &pmu_2_ipi 40 0 &pmu_3_ipi 40 0 &pl_0_ipi 40 0 &pl_1_ipi 40 0 &pl_2_ipi 40 0 &pl_3_ipi 40 0 >; };
  rpu_1_ipi: rpu_1_ipi@0xFF320000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 34 4>, <0 0 0 &rpu_gic 0 34 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF320000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 9 0 &rpu_0_ipi 9 0 &rpu_1_ipi 9 0 &pmu_0_ipi 9 0 &pmu_1_ipi 9 0 &pmu_2_ipi 9 0 &pmu_3_ipi 9 0 &pl_0_ipi 9 0 &pl_1_ipi 9 0 &pl_2_ipi 9 0 &pl_3_ipi 9 0 >; gpios = < &apu_ipi 41 0 &rpu_0_ipi 41 0 &rpu_1_ipi 41 0 &pmu_0_ipi 41 0 &pmu_1_ipi 41 0 &pmu_2_ipi 41 0 &pmu_3_ipi 41 0 &pl_0_ipi 41 0 &pl_1_ipi 41 0 &pl_2_ipi 41 0 &pl_3_ipi 41 0 >; };

  pmu_0_ipi: pmu_0_ipi@0xFF330000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <19 0>; reg = <0x0 0xFF330000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 16 0 &rpu_0_ipi 16 0 &rpu_1_ipi 16 0 &pmu_0_ipi 16 0 &pmu_1_ipi 16 0 &pmu_2_ipi 16 0 &pmu_3_ipi 16 0 &pl_0_ipi 16 0 &pl_1_ipi 16 0 &pl_2_ipi 16 0 &pl_3_ipi 16 0 >; gpios = < &apu_ipi 48 0 &rpu_0_ipi 48 0 &rpu_1_ipi 48 0 &pmu_0_ipi 48 0 &pmu_1_ipi 48 0 &pmu_2_ipi 48 0 &pmu_3_ipi 48 0 &pl_0_ipi 48 0 &pl_1_ipi 48 0 &pl_2_ipi 48 0 &pl_3_ipi 48 0 >; };
  pmu_1_ipi: pmu_1_ipi@0xFF331000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <20 0>; reg = <0x0 0xFF331000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 17 0 &rpu_0_ipi 17 0 &rpu_1_ipi 17 0 &pmu_0_ipi 17 0 &pmu_1_ipi 17 0 &pmu_2_ipi 17 0 &pmu_3_ipi 17 0 &pl_0_ipi 17 0 &pl_1_ipi 17 0 &pl_2_ipi 17 0 &pl_3_ipi 17 0 >; gpios = < &apu_ipi 49 0 &rpu_0_ipi 49 0 &rpu_1_ipi 49 0 &pmu_0_ipi 49 0 &pmu_1_ipi 49 0 &pmu_2_ipi 49 0 &pmu_3_ipi 49 0 &pl_0_ipi 49 0 &pl_1_ipi 49 0 &pl_2_ipi 49 0 &pl_3_ipi 49 0 >; };
  pmu_2_ipi: pmu_2_ipi@0xFF332000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <21 0>; reg = <0x0 0xFF332000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 18 0 &rpu_0_ipi 18 0 &rpu_1_ipi 18 0 &pmu_0_ipi 18 0 &pmu_1_ipi 18 0 &pmu_2_ipi 18 0 &pmu_3_ipi 18 0 &pl_0_ipi 18 0 &pl_1_ipi 18 0 &pl_2_ipi 18 0 &pl_3_ipi 18 0 >; gpios = < &apu_ipi 50 0 &rpu_0_ipi 50 0 &rpu_1_ipi 50 0 &pmu_0_ipi 50 0 &pmu_1_ipi 50 0 &pmu_2_ipi 50 0 &pmu_3_ipi 50 0 &pl_0_ipi 50 0 &pl_1_ipi 50 0 &pl_2_ipi 50 0 &pl_3_ipi 50 0 >; };
  pmu_3_ipi: pmu_3_ipi@0xFF333000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupt-parent = <&pmu_io_intc>; interrupts = <22 0>; reg = <0x0 0xFF333000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 19 0 &rpu_0_ipi 19 0 &rpu_1_ipi 19 0 &pmu_0_ipi 19 0 &pmu_1_ipi 19 0 &pmu_2_ipi 19 0 &pmu_3_ipi 19 0 &pl_0_ipi 19 0 &pl_1_ipi 19 0 &pl_2_ipi 19 0 &pl_3_ipi 19 0 >; gpios = < &apu_ipi 51 0 &rpu_0_ipi 51 0 &rpu_1_ipi 51 0 &pmu_0_ipi 51 0 &pmu_1_ipi 51 0 &pmu_2_ipi 51 0 &pmu_3_ipi 51 0 &pl_0_ipi 51 0 &pl_1_ipi 51 0 &pl_2_ipi 51 0 &pl_3_ipi 51 0 >; };

  pl_0_ipi: pl_0_ipi@0xFF340000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 29 4>, <0 0 0 &rpu_gic 0 29 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF340000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 24 0 &rpu_0_ipi 24 0 &rpu_1_ipi 24 0 &pmu_0_ipi 24 0 &pmu_1_ipi 24 0 &pmu_2_ipi 24 0 &pmu_3_ipi 24 0 &pl_0_ipi 24 0 &pl_1_ipi 24 0 &pl_2_ipi 24 0 &pl_3_ipi 24 0 >; gpios = < &apu_ipi 52 0 &rpu_0_ipi 52 0 &rpu_1_ipi 52 0 &pmu_0_ipi 52 0 &pmu_1_ipi 52 0 &pmu_2_ipi 52 0 &pmu_3_ipi 52 0 &pl_0_ipi 52 0 &pl_1_ipi 52 0 &pl_2_ipi 52 0 &pl_3_ipi 52 0 >; };
  pl_1_ipi: pl_1_ipi@0xFF350000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 30 4>, <0 0 0 &rpu_gic 0 30 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF350000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 25 0 &rpu_0_ipi 25 0 &rpu_1_ipi 25 0 &pmu_0_ipi 25 0 &pmu_1_ipi 25 0 &pmu_2_ipi 25 0 &pmu_3_ipi 25 0 &pl_0_ipi 25 0 &pl_1_ipi 25 0 &pl_2_ipi 25 0 &pl_3_ipi 25 0 >; gpios = < &apu_ipi 53 0 &rpu_0_ipi 53 0 &rpu_1_ipi 53 0 &pmu_0_ipi 53 0 &pmu_1_ipi 53 0 &pmu_2_ipi 53 0 &pmu_3_ipi 53 0 &pl_0_ipi 53 0 &pl_1_ipi 53 0 &pl_2_ipi 53 0 &pl_3_ipi 53 0 >; };
  pl_2_ipi: pl_2_ipi@0xFF360000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 31 4>, <0 0 0 &rpu_gic 0 31 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF360000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 26 0 &rpu_0_ipi 26 0 &rpu_1_ipi 26 0 &pmu_0_ipi 26 0 &pmu_1_ipi 26 0 &pmu_2_ipi 26 0 &pmu_3_ipi 26 0 &pl_0_ipi 26 0 &pl_1_ipi 26 0 &pl_2_ipi 26 0 &pl_3_ipi 26 0 >; gpios = < &apu_ipi 54 0 &rpu_0_ipi 54 0 &rpu_1_ipi 54 0 &pmu_0_ipi 54 0 &pmu_1_ipi 54 0 &pmu_2_ipi 54 0 &pmu_3_ipi 54 0 &pl_0_ipi 54 0 &pl_1_ipi 54 0 &pl_2_ipi 54 0 &pl_3_ipi 54 0 >; };
  pl_3_ipi: pl_3_ipi@0xFF370000 { compatible = "xlnx,zynqmp_ipi"; gpio-controller; #gpio-cells = <2>; interrupts = <0>; interrupt-map = <0 0 0 &gic 0 32 4>, <0 0 0 &rpu_gic 0 32 4>; interrupt-map-mask = <0 0 0 0>; reg = <0x0 0xFF370000 0x1000>; num-gpios = <64>; interrupt-gpios = < &apu_ipi 27 0 &rpu_0_ipi 27 0 &rpu_1_ipi 27 0 &pmu_0_ipi 27 0 &pmu_1_ipi 27 0 &pmu_2_ipi 27 0 &pmu_3_ipi 27 0 &pl_0_ipi 27 0 &pl_1_ipi 27 0 &pl_2_ipi 27 0 &pl_3_ipi 27 0 >; gpios = < &apu_ipi 55 0 &rpu_0_ipi 55 0 &rpu_1_ipi 55 0 &pmu_0_ipi 55 0 &pmu_1_ipi 55 0 &pmu_2_ipi 55 0 &pmu_3_ipi 55 0 &pl_0_ipi 55 0 &pl_1_ipi 55 0 &pl_2_ipi 55 0 &pl_3_ipi 55 0 >; };

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
# 597 "./zynqmp-iou.dtsi"
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
# 625 "./zynqmp-iou.dtsi"
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
# 692 "./zynqmp-iou.dtsi"
   ignore-pwr-req = <1>;

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
# 35 "./ep108-arm.dts" 2
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
  qemu,ram = <1>;
  reg = <0x0 0xffdc0000 0x00020000>;
 };

 tcm_ram_r5_0_A: tcm_ram_r5_0_A@0x00000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu0>; qemu,ram = <1>; reg = <0x0 0x00000 0x10000>; };
 tcm_ram_r5_0_B: tcm_ram_r5_0_B@0x20000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu0>; qemu,ram = <1>; reg = <0x0 0x20000 0x10000>; };
 tcm_ram_r5_1_A: tcm_ram_r5_1_A@0x00000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu1>; qemu,ram = <1>; reg = <0x0 0x00000 0x10000>; };
 tcm_ram_r5_1_B: tcm_ram_r5_1_B@0x20000 { compatible = "qemu:memory-region"; container = <&tcm_cache_rpu1>; qemu,ram = <1>; reg = <0x0 0x20000 0x10000>; };

 icache_rpu0: icache_rpu0@0x40000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu0>;
  qemu,ram = <1>;
  reg = <0x0 0x40000 0x8000>;
 };

 dcache_rpu0: dcache_rpu0@0x50000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu0>;
  qemu,ram = <1>;
  reg = <0x0 0x50000 0x8000>;
 };

 icache_rpu1: icache_rpu1@0x30000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu1>;
  qemu,ram = <1>;
  reg = <0x0 0x30000 0x8000>;
 };

 dcache_rpu1: dcache_rpu1@0x40000 {
  compatible = "qemu:memory-region";
  container = <&tcm_cache_rpu1>;
  qemu,ram = <1>;
  reg = <0x0 0x40000 0x8000>;
 };

 ipibuf_ram: ipibuf@ff990000 {
  compatible = "qemu:memory-region";
  container = <&amba>;
  qemu,ram = <1>;
  reg = <0x0 0xff990000 0x1000>;
 };

 ocm_ram: ocm_ram@0 {
  compatible = "qemu:memory-region";
 };

 ocm_ram_bank_0: ocm_ram_bank_0@0x00000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <1>; reg = <0x0 0x00000 0x10000>; };
 ocm_ram_bank_1: ocm_ram_bank_1@0x10000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <1>; reg = <0x0 0x10000 0x10000>; };
 ocm_ram_bank_2: ocm_ram_bank_2@0x20000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <1>; reg = <0x0 0x20000 0x10000>; };
 ocm_ram_bank_3: ocm_ram_bank_3@0x30000 { compatible = "qemu:memory-region"; container = <&ocm_ram>; qemu,ram = <1>; reg = <0x0 0x30000 0x10000>; };
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
# 36 "./ep108-arm.dts" 2

/ {
 model = "ZynqMP EP108";

 aliases {
  ethernet0 = &gem0;
 };

 mdio0: mdio {
  #address-cells = <1>;
  #size-cells = <0>;
  compatible="mdio";
  phy0: phy@0 {
   compatible = "88e1118r";
   device_type = "ethernet-phy";
   reg = <0>;
  };
 };
};

&amba {
 ps7_i2c_0: ps7_i2c_0@0xFF020000 { clocks = <&misc_clk>; compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10"; interrupts = <17>; reg = <0x0 0xFF020000 0x1000>; #address-cells = <1>; #size-cells = <0>; eeprom@54 { compatible = "at,24c64"; reg = <0x54>; size = <0x2000>; }; };
 ps7_i2c_1: ps7_i2c_1@0xFF030000 { clocks = <&misc_clk>; compatible = "xlnx,ps7-i2c-1.00.a", "cdns,i2c-r1p10"; interrupts = <18>; reg = <0x0 0xFF030000 0x1000>; #address-cells = <1>; #size-cells = <0>; eeprom@54 { compatible = "at,24c64"; reg = <0x55>; size = <0x2000>; }; };
};

&ps7_qspi_0 {
 qspi_flash_lcs_lb: qspi_flash_lcs_lb@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "n25q512a11", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x0>; qspi_flash_lcs_lb@0x00000000 { label = "qspi_flash_lcs_lb"; reg = <0x00000000 0x02000000>; }; };
 qspi_flash_lcs_ub: qspi_flash_lcs_ub@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "n25q512a11", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x0 0x1>; qspi_flash_lcs_ub@0x00000000 { label = "qspi_flash_lcs_ub"; reg = <0x00000000 0x02000000>; }; };
};

&ps7_spi_0 {
 spi0_flash1: spi0_flash1@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x1 0x0>; spi0_flash1@0x00000000 { label = "spi0_flash1"; reg = <0x00000000 0x00100000>; }; };
 spi0_flash2: spi0_flash2@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x2 0x0>; spi0_flash2@0x00000000 { label = "spi0_flash2"; reg = <0x00000000 0x00100000>; }; };
 spi0_flash3: spi0_flash3@0 { #address-cells = <1>; #size-cells = <1>; #bus-cells = <1>; compatible = "sst25wf080", "st,m25p80"; spi-max-frequency = <50000000>; reg = <0x3 0x0>; spi0_flash3@0x00000000 { label = "spi0_flash3"; reg = <0x00000000 0x00100000>; }; };
};

&gem0 {
 mdio = <&mdio0>;
};
# 31 "ep108-arm.cosim.dts" 2

# 1 "./zynqmp-pl-remoteport.dtsi" 1
# 30 "./zynqmp-pl-remoteport.dtsi"
/ {
 #address-cells = <2>;
 #size-cells = <1>;

        amba: amba@0 {
  cosim_rp_0: cosim@0 {
   compatible = "remote-port";
   sync = <1>;
   chrdev-id = "pl-rp";
  };


  hpm_lpd: hpm_lpd@40000000 {
   compatible = "remote-port-memory-master";
   remote-ports = <&cosim_rp_0 11>;
   reg = <0x0 0x80000000 0x20000000>;
  };

  hpc0_fpd: hpc0_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 0>;
   mr = <&smmu_tbu0>;
  };
  hpc1_fpd: hpc1_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 1>;
   mr = <&smmu_tbu0>;
  };
  hp0_fpd: hp0_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 2>;
   mr = <&smmu_tbu3>;
  };
  hp1_fpd: hp1_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 3>;
   mr = <&smmu_tbu4>;
  };
  hp2_fpd: hp2_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 4>;
   mr = <&smmu_tbu4>;
  };
  hp3_fpd: hp3_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 5>;
   mr = <&smmu_tbu5>;
  };
  axi_lpd: axi_lpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 6>;
   mr = <&amba>;
  };
  acp_fpd: acp_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 7>;
   mr = <&cci_slave>;
  };
  ace_fpd: ace_fpd@0 {
   compatible = "remote-port-memory-slave";
   remote-ports = <&cosim_rp_0 8>;
   mr = <&cci_slave>;
  };

  rp_cosim_intr: rp_cosim_intr@0 {
   compatible = "remote-port-gpio";
   remote-ports = <&cosim_rp_0 12>;
   num-gpios = <16>;
   interrupts = <89
           90
           91
           92
           93
           94
           95
           96
           104
           105
           106
           107
           108
           109
           110
           111
        >;
  };
  rp_cosim_intr_out: rp_cosim_intr_out@0 {
   compatible = "remote-port-gpio";
   remote-ports = <&cosim_rp_0 13>;
   num-gpios = <4>;
   gpios = <&crl 24 &crl 25 &crl 26 &crl 27>;
  };
  rp_cosim_intr_pstopl: rp_cosim_intr_pstopl@0 {
   #interrupt-cells = <3>;
   interrupt-controller;
   compatible = "remote-port-gpio";
   remote-ports = <&cosim_rp_0 14>;
   num-gpios = <164>;
   cell-offset-irq-num = <1>;
  };

  rp_cosim_reserved: rp_cosim_reserved@0{
   compatible = "remote-port-memory-master";
   remote-ports = <&cosim_rp_0 15>;
   reg = <0x0 0xFF4E0000 0x100000>;
  };

  rp_cosim_emio_bank0: rp_cosim_emio_bank0 {
   #gpio-cells = <1>;
   compatible = "remote-port-gpio";
   remote-ports = <&cosim_rp_0 16>;
   num-gpios = <64>;



   gpios = < &psu_gpio 78
      &psu_gpio 79
      &psu_gpio 80
      &psu_gpio 81
      &psu_gpio 82
      &psu_gpio 83
      &psu_gpio 84
      &psu_gpio 85
      &psu_gpio 86
      &psu_gpio 87
      &psu_gpio 88
      &psu_gpio 89
      &psu_gpio 90
      &psu_gpio 91
      &psu_gpio 92
      &psu_gpio 93
      &psu_gpio 94
      &psu_gpio 95
      &psu_gpio 96
      &psu_gpio 97
      &psu_gpio 98
      &psu_gpio 99
      &psu_gpio 100
      &psu_gpio 101
      &psu_gpio 102
      &psu_gpio 103
      &psu_gpio 104
      &psu_gpio 105
      &psu_gpio 106
      &psu_gpio 107
      &psu_gpio 108
      &psu_gpio 109
      &psu_gpio 252
      &psu_gpio 253
      &psu_gpio 254
      &psu_gpio 255
      &psu_gpio 256
      &psu_gpio 257
      &psu_gpio 258
      &psu_gpio 259
      &psu_gpio 260
      &psu_gpio 261
      &psu_gpio 262
      &psu_gpio 263
      &psu_gpio 264
      &psu_gpio 265
      &psu_gpio 266
      &psu_gpio 267
      &psu_gpio 268
      &psu_gpio 269
      &psu_gpio 270
      &psu_gpio 271
      &psu_gpio 272
      &psu_gpio 273
      &psu_gpio 274
      &psu_gpio 275
      &psu_gpio 276
      &psu_gpio 277
      &psu_gpio 278
      &psu_gpio 279
      &psu_gpio 280
      &psu_gpio 281
      &psu_gpio 282
      &psu_gpio 283 >;
  };
  rp_cosim_emio_bank1: rp_cosim_emio_bank1 {
   #gpio-cells = <1>;
   compatible = "remote-port-gpio";
   remote-ports = <&cosim_rp_0 17>;
   num-gpios = <64>;



   gpios = < &psu_gpio 110
      &psu_gpio 111
      &psu_gpio 112
      &psu_gpio 113
      &psu_gpio 114
      &psu_gpio 115
      &psu_gpio 116
      &psu_gpio 117
      &psu_gpio 118
      &psu_gpio 119
      &psu_gpio 120
      &psu_gpio 121
      &psu_gpio 122
      &psu_gpio 123
      &psu_gpio 124
      &psu_gpio 125
      &psu_gpio 126
      &psu_gpio 127
      &psu_gpio 128
      &psu_gpio 129
      &psu_gpio 130
      &psu_gpio 131
      &psu_gpio 132
      &psu_gpio 133
      &psu_gpio 134
      &psu_gpio 135
      &psu_gpio 136
      &psu_gpio 137
      &psu_gpio 138
      &psu_gpio 139
      &psu_gpio 140
      &psu_gpio 141
      &psu_gpio 284
      &psu_gpio 285
      &psu_gpio 286
      &psu_gpio 287
      &psu_gpio 288
      &psu_gpio 289
      &psu_gpio 290
      &psu_gpio 291
      &psu_gpio 292
      &psu_gpio 293
      &psu_gpio 294
      &psu_gpio 295
      &psu_gpio 296
      &psu_gpio 297
      &psu_gpio 298
      &psu_gpio 299
      &psu_gpio 300
      &psu_gpio 301
      &psu_gpio 302
      &psu_gpio 303
      &psu_gpio 304
      &psu_gpio 305
      &psu_gpio 306
      &psu_gpio 307
      &psu_gpio 308
      &psu_gpio 309
      &psu_gpio 310
      &psu_gpio 311
      &psu_gpio 312
      &psu_gpio 313
      &psu_gpio 314
      &psu_gpio 315 >;
  };
  rp_cosim_emio_bank2: rp_cosim_emio_bank2 {
   #gpio-cells = <1>;
   compatible = "remote-port-gpio";
   remote-ports = <&cosim_rp_0 18>;
   num-gpios = <64>;



   gpios = < &psu_gpio 142
      &psu_gpio 143
      &psu_gpio 144
      &psu_gpio 145
      &psu_gpio 146
      &psu_gpio 147
      &psu_gpio 148
      &psu_gpio 149
      &psu_gpio 150
      &psu_gpio 151
      &psu_gpio 152
      &psu_gpio 153
      &psu_gpio 154
      &psu_gpio 155
      &psu_gpio 156
      &psu_gpio 157
      &psu_gpio 158
      &psu_gpio 159
      &psu_gpio 160
      &psu_gpio 161
      &psu_gpio 162
      &psu_gpio 163
      &psu_gpio 164
      &psu_gpio 165
      &psu_gpio 166
      &psu_gpio 167
      &psu_gpio 168
      &psu_gpio 169
      &psu_gpio 170
      &psu_gpio 171
      &psu_gpio 172
      &psu_gpio 173
      &psu_gpio 316
      &psu_gpio 317
      &psu_gpio 318
      &psu_gpio 319
      &psu_gpio 320
      &psu_gpio 321
      &psu_gpio 322
      &psu_gpio 323
      &psu_gpio 324
      &psu_gpio 325
      &psu_gpio 326
      &psu_gpio 327
      &psu_gpio 328
      &psu_gpio 329
      &psu_gpio 330
      &psu_gpio 331
      &psu_gpio 332
      &psu_gpio 333
      &psu_gpio 334
      &psu_gpio 335
      &psu_gpio 336
      &psu_gpio 337
      &psu_gpio 338
      &psu_gpio 339
      &psu_gpio 340
      &psu_gpio 341
      &psu_gpio 342
      &psu_gpio 343
      &psu_gpio 344
      &psu_gpio 345
      &psu_gpio 346
      &psu_gpio 347 >;
  };
  mio_in: rp_cosim_mio_in {
    #gpio-cells = <2>;
    compatible = "remote-port-gpio";
    num-gpios = <78>;
    remote-ports = <&cosim_rp_0 19>;
  };
  rp_cosim_mio_out: rp_cosim_mio_out {
    #gpio-cells = <2>;
    compatible = "remote-port-gpio";
    num-gpios = <78>;
    remote-ports = <&cosim_rp_0 20>;






    gpios = < &dummy_mio_map_2 0 0
       &dummy_mio_map_2 1 0
       &dummy_mio_map_2 2 0
       &dummy_mio_map_2 3 0
       &dummy_mio_map_2 4 0
       &dummy_mio_map_2 5 0
       &dummy_mio_map_2 6 0
       &dummy_mio_map_2 7 0
       &dummy_mio_map_2 8 0
       &dummy_mio_map_2 9 0
       &dummy_mio_map_2 10 0
       &dummy_mio_map_2 11 0
       &dummy_mio_map_2 12 0
       &dummy_mio_map_2 13 0
       &dummy_mio_map_2 14 0
       &dummy_mio_map_2 15 0
       &dummy_mio_map_2 16 0
       &dummy_mio_map_2 17 0
       &dummy_mio_map_2 18 0
       &dummy_mio_map_2 19 0
       &dummy_mio_map_2 20 0
       &dummy_mio_map_2 21 0
       &dummy_mio_map_2 22 0
       &dummy_mio_map_2 23 0
       &dummy_mio_map_2 24 0
       &dummy_mio_map_2 25 0
       &dummy_mio_map_2 26 0
       &dummy_mio_map_2 27 0
       &dummy_mio_map_2 28 0
       &dummy_mio_map_2 29 0
       &dummy_mio_map_2 30 0
       &dummy_mio_map_2 31 0
       &pmu_io_gpo1 0 0
       &pmu_io_gpo1 1 0
       &pmu_io_gpo1 2 0
       &pmu_io_gpo1 3 0
       &pmu_io_gpo1 4 0
       &pmu_io_gpo1 5 0
       &dummy_mio_map_2 38 0
       &dummy_mio_map_2 39 0
       &dummy_mio_map_2 40 0
       &dummy_mio_map_2 41 0
       &dummy_mio_map_2 42 0
       &dummy_mio_map_2 43 0
       &dummy_mio_map_2 44 0
       &dummy_mio_map_2 45 0
       &dummy_mio_map_2 46 0
       &dummy_mio_map_2 47 0
       &dummy_mio_map_2 48 0
       &dummy_mio_map_2 49 0
       &dummy_mio_map_2 50 0
       &dummy_mio_map_2 51 0
       &dummy_mio_map_2 52 0
       &dummy_mio_map_2 53 0
       &dummy_mio_map_2 54 0
       &dummy_mio_map_2 55 0
       &dummy_mio_map_2 56 0
       &dummy_mio_map_2 57 0
       &dummy_mio_map_2 58 0
       &dummy_mio_map_2 59 0
       &dummy_mio_map_2 60 0
       &dummy_mio_map_2 61 0
       &dummy_mio_map_2 62 0
       &dummy_mio_map_2 63 0
       &dummy_mio_map_2 64 0
       &dummy_mio_map_2 65 0
       &dummy_mio_map_2 66 0
       &dummy_mio_map_2 67 0
       &dummy_mio_map_2 68 0
       &dummy_mio_map_2 69 0
       &dummy_mio_map_2 70 0
       &dummy_mio_map_2 71 0
       &dummy_mio_map_2 72 0
       &dummy_mio_map_2 73 0
       &dummy_mio_map_2 74 0
       &dummy_mio_map_2 75 0
       &dummy_mio_map_2 76 0
       &dummy_mio_map_2 77 0 >;
  };

  dummy_mio_map: dummy_mio_map {
   gpio-controller;
   #gpio-cells = <1>;
  };

  dummy_mio_map_2: dummy_mio_map_2 {
   gpio-controller;
   #gpio-cells = <2>;
  };
 };

 protected_amba: protected_amba@0 {






  hpm0_fpd: hpm0_fpd@a0000000 {
   compatible = "remote-port-memory-master";
   remote-ports = <&cosim_rp_0 9>;
   reg = <0x0000 0xa0000000 0x00 0x10000000 0x0
          0x0004 0x00000000 0x01 0x00000000 0x0
          0x0010 0x00000000 0x38 0x00000000 0x0 >;
  };







  hpm1_fpd: hpm1_fpd@b0000000 {
   compatible = "remote-port-memory-master";
   remote-ports = <&cosim_rp_0 10>;
   reg = <0x0000 0xb0000000 0x00 0x10000000 0x0
          0x0005 0x00000000 0x01 0x00000000 0x0
          0x0048 0x00000000 0x38 0x00000000 0x0 >;
  };
 };
};

&psu_gpio {
  gpios = <
# 527 "./zynqmp-pl-remoteport.dtsi"
&dummy_mio_map 0 &dummy_mio_map 1 &dummy_mio_map 2 &dummy_mio_map 3 &dummy_mio_map 4 &dummy_mio_map 5 &dummy_mio_map 6 &dummy_mio_map 7 &dummy_mio_map 8 &dummy_mio_map 9 &dummy_mio_map 10 &dummy_mio_map 11 &dummy_mio_map 12 &dummy_mio_map 13 &dummy_mio_map 14 &dummy_mio_map 15 &dummy_mio_map 16 &dummy_mio_map 17 &dummy_mio_map 18 &dummy_mio_map 19 &dummy_mio_map 20 &dummy_mio_map 21 &dummy_mio_map 22 &dummy_mio_map 23 &dummy_mio_map 24 &dummy_mio_map 25
&dummy_mio_map 0 &dummy_mio_map 1 &dummy_mio_map 2 &dummy_mio_map 3 &dummy_mio_map 4 &dummy_mio_map 5 &dummy_mio_map 6 &dummy_mio_map 7 &dummy_mio_map 8 &dummy_mio_map 9 &dummy_mio_map 10 &dummy_mio_map 11 &dummy_mio_map 12 &dummy_mio_map 13 &dummy_mio_map 14 &dummy_mio_map 15 &dummy_mio_map 16 &dummy_mio_map 17 &dummy_mio_map 18 &dummy_mio_map 19 &dummy_mio_map 20 &dummy_mio_map 21 &dummy_mio_map 22 &dummy_mio_map 23 &dummy_mio_map 24 &dummy_mio_map 25
&dummy_mio_map 0 &dummy_mio_map 1 &dummy_mio_map 2 &dummy_mio_map 3 &dummy_mio_map 4 &dummy_mio_map 5 &dummy_mio_map 6 &dummy_mio_map 7 &dummy_mio_map 8 &dummy_mio_map 9 &dummy_mio_map 10 &dummy_mio_map 11 &dummy_mio_map 12 &dummy_mio_map 13 &dummy_mio_map 14 &dummy_mio_map 15 &dummy_mio_map 16 &dummy_mio_map 17 &dummy_mio_map 18 &dummy_mio_map 19 &dummy_mio_map 20 &dummy_mio_map 21 &dummy_mio_map 22 &dummy_mio_map 23 &dummy_mio_map 24 &dummy_mio_map 25
# 568 "./zynqmp-pl-remoteport.dtsi"
&rp_cosim_emio_bank0 0 &rp_cosim_emio_bank0 1 &rp_cosim_emio_bank0 2 &rp_cosim_emio_bank0 3 &rp_cosim_emio_bank0 4 &rp_cosim_emio_bank0 5 &rp_cosim_emio_bank0 6 &rp_cosim_emio_bank0 7 &rp_cosim_emio_bank0 8 &rp_cosim_emio_bank0 9 &rp_cosim_emio_bank0 10 &rp_cosim_emio_bank0 11 &rp_cosim_emio_bank0 12 &rp_cosim_emio_bank0 13 &rp_cosim_emio_bank0 14 &rp_cosim_emio_bank0 15 &rp_cosim_emio_bank0 16 &rp_cosim_emio_bank0 17 &rp_cosim_emio_bank0 18 &rp_cosim_emio_bank0 19 &rp_cosim_emio_bank0 20 &rp_cosim_emio_bank0 21 &rp_cosim_emio_bank0 22 &rp_cosim_emio_bank0 23 &rp_cosim_emio_bank0 24 &rp_cosim_emio_bank0 25 &rp_cosim_emio_bank0 26 &rp_cosim_emio_bank0 27 &rp_cosim_emio_bank0 28 &rp_cosim_emio_bank0 29 &rp_cosim_emio_bank0 30 &rp_cosim_emio_bank0 31
&rp_cosim_emio_bank1 0 &rp_cosim_emio_bank1 1 &rp_cosim_emio_bank1 2 &rp_cosim_emio_bank1 3 &rp_cosim_emio_bank1 4 &rp_cosim_emio_bank1 5 &rp_cosim_emio_bank1 6 &rp_cosim_emio_bank1 7 &rp_cosim_emio_bank1 8 &rp_cosim_emio_bank1 9 &rp_cosim_emio_bank1 10 &rp_cosim_emio_bank1 11 &rp_cosim_emio_bank1 12 &rp_cosim_emio_bank1 13 &rp_cosim_emio_bank1 14 &rp_cosim_emio_bank1 15 &rp_cosim_emio_bank1 16 &rp_cosim_emio_bank1 17 &rp_cosim_emio_bank1 18 &rp_cosim_emio_bank1 19 &rp_cosim_emio_bank1 20 &rp_cosim_emio_bank1 21 &rp_cosim_emio_bank1 22 &rp_cosim_emio_bank1 23 &rp_cosim_emio_bank1 24 &rp_cosim_emio_bank1 25 &rp_cosim_emio_bank1 26 &rp_cosim_emio_bank1 27 &rp_cosim_emio_bank1 28 &rp_cosim_emio_bank1 29 &rp_cosim_emio_bank1 30 &rp_cosim_emio_bank1 31
&rp_cosim_emio_bank2 0 &rp_cosim_emio_bank2 1 &rp_cosim_emio_bank2 2 &rp_cosim_emio_bank2 3 &rp_cosim_emio_bank2 4 &rp_cosim_emio_bank2 5 &rp_cosim_emio_bank2 6 &rp_cosim_emio_bank2 7 &rp_cosim_emio_bank2 8 &rp_cosim_emio_bank2 9 &rp_cosim_emio_bank2 10 &rp_cosim_emio_bank2 11 &rp_cosim_emio_bank2 12 &rp_cosim_emio_bank2 13 &rp_cosim_emio_bank2 14 &rp_cosim_emio_bank2 15 &rp_cosim_emio_bank2 16 &rp_cosim_emio_bank2 17 &rp_cosim_emio_bank2 18 &rp_cosim_emio_bank2 19 &rp_cosim_emio_bank2 20 &rp_cosim_emio_bank2 21 &rp_cosim_emio_bank2 22 &rp_cosim_emio_bank2 23 &rp_cosim_emio_bank2 24 &rp_cosim_emio_bank2 25 &rp_cosim_emio_bank2 26 &rp_cosim_emio_bank2 27 &rp_cosim_emio_bank2 28 &rp_cosim_emio_bank2 29 &rp_cosim_emio_bank2 30 &rp_cosim_emio_bank2 31


   >;
};
# 33 "ep108-arm.cosim.dts" 2

&amba {
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
# 38 "ep108-arm.cosim.dts" 2

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
# 42 "ep108-arm.cosim.dts" 2







  ,

# 1 "./zynqmp-irq-map.dtsh" 1
# 32 "./zynqmp-irq-map.dtsh"
<0 0 8 &rp_cosim_intr_pstopl 0 8 4>,
<0 0 9 &rp_cosim_intr_pstopl 0 9 4>,
<0 0 10 &rp_cosim_intr_pstopl 0 10 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 11 &rp_cosim_intr_pstopl 0 11 4>,
<0 0 12 &rp_cosim_intr_pstopl 0 12 4>,
<0 0 13 &rp_cosim_intr_pstopl 0 13 4>,
<0 0 14 &rp_cosim_intr_pstopl 0 14 4>,
<0 0 15 &rp_cosim_intr_pstopl 0 15 4>,
<0 0 16 &rp_cosim_intr_pstopl 0 16 4>,
<0 0 17 &rp_cosim_intr_pstopl 0 17 4>,
<0 0 18 &rp_cosim_intr_pstopl 0 18 4>,
<0 0 19 &rp_cosim_intr_pstopl 0 19 4>,
<0 0 20 &rp_cosim_intr_pstopl 0 20 4>,
<0 0 21 &rp_cosim_intr_pstopl 0 21 4>,
<0 0 22 &rp_cosim_intr_pstopl 0 22 4>,
<0 0 23 &rp_cosim_intr_pstopl 0 23 4>,
<0 0 24 &rp_cosim_intr_pstopl 0 24 4>,
<0 0 25 &rp_cosim_intr_pstopl 0 25 4>,
<0 0 25 &rp_cosim_intr_pstopl 0 25 4>,
<0 0 26 &rp_cosim_intr_pstopl 0 26 4>,
<0 0 27 &rp_cosim_intr_pstopl 0 27 4>,
<0 0 28 &rp_cosim_intr_pstopl 0 28 4>,
<0 0 29 &rp_cosim_intr_pstopl 0 29 4>,
<0 0 30 &rp_cosim_intr_pstopl 0 30 4>,
<0 0 31 &rp_cosim_intr_pstopl 0 31 4>,
<0 0 32 &rp_cosim_intr_pstopl 0 32 4>,
<0 0 33 &rp_cosim_intr_pstopl 0 33 4>,
<0 0 34 &rp_cosim_intr_pstopl 0 34 4>,
<0 0 35 &rp_cosim_intr_pstopl 0 35 4>,
<0 0 36 &rp_cosim_intr_pstopl 0 36 4>,
<0 0 37 &rp_cosim_intr_pstopl 0 37 4>,
<0 0 38 &rp_cosim_intr_pstopl 0 38 4>,
<0 0 39 &rp_cosim_intr_pstopl 0 39 4>,
<0 0 40 &rp_cosim_intr_pstopl 0 40 4>,
<0 0 41 &rp_cosim_intr_pstopl 0 41 4>,
<0 0 42 &rp_cosim_intr_pstopl 0 42 4>,
<0 0 43 &rp_cosim_intr_pstopl 0 43 4>,
<0 0 44 &rp_cosim_intr_pstopl 0 44 4>,
<0 0 45 &rp_cosim_intr_pstopl 0 45 4>,
<0 0 46 &rp_cosim_intr_pstopl 0 46 4>,
<0 0 47 &rp_cosim_intr_pstopl 0 47 4>,
<0 0 48 &rp_cosim_intr_pstopl 0 48 4>,
<0 0 49 &rp_cosim_intr_pstopl 0 49 4>,
<0 0 50 &rp_cosim_intr_pstopl 0 50 4>,
<0 0 51 &rp_cosim_intr_pstopl 0 51 4>,
<0 0 52 &rp_cosim_intr_pstopl 0 52 4>,
<0 0 53 &rp_cosim_intr_pstopl 0 53 4>,
<0 0 54 &rp_cosim_intr_pstopl 0 54 4>,
<0 0 55 &rp_cosim_intr_pstopl 0 55 4>,
<0 0 56 &rp_cosim_intr_pstopl 0 56 4>,
<0 0 57 &rp_cosim_intr_pstopl 0 57 4>,
<0 0 58 &rp_cosim_intr_pstopl 0 58 4>,
<0 0 59 &rp_cosim_intr_pstopl 0 59 4>,
<0 0 60 &rp_cosim_intr_pstopl 0 60 4>,
<0 0 61 &rp_cosim_intr_pstopl 0 61 4>,
<0 0 62 &rp_cosim_intr_pstopl 0 62 4>,
<0 0 63 &rp_cosim_intr_pstopl 0 63 4>,
<0 0 64 &rp_cosim_intr_pstopl 0 64 4>,
<0 0 65 &rp_cosim_intr_pstopl 0 65 4>,
<0 0 66 &rp_cosim_intr_pstopl 0 66 4>,
<0 0 67 &rp_cosim_intr_pstopl 0 67 4>,
<0 0 68 &rp_cosim_intr_pstopl 0 68 4>,
<0 0 69 &rp_cosim_intr_pstopl 0 69 4>,
<0 0 70 &rp_cosim_intr_pstopl 0 70 4>,
<0 0 71 &rp_cosim_intr_pstopl 0 71 4>,
<0 0 72 &rp_cosim_intr_pstopl 0 72 4>,
<0 0 73 &rp_cosim_intr_pstopl 0 73 4>,
<0 0 74 &rp_cosim_intr_pstopl 0 74 4>,
<0 0 75 &rp_cosim_intr_pstopl 0 75 4>,
<0 0 76 &rp_cosim_intr_pstopl 0 76 4>,
<0 0 77 &rp_cosim_intr_pstopl 0 77 4>,
<0 0 78 &rp_cosim_intr_pstopl 0 78 4>,
<0 0 79 &rp_cosim_intr_pstopl 0 79 4>,
<0 0 80 &rp_cosim_intr_pstopl 0 80 4>,
<0 0 81 &rp_cosim_intr_pstopl 0 81 4>,
<0 0 82 &rp_cosim_intr_pstopl 0 82 4>,
<0 0 83 &rp_cosim_intr_pstopl 0 83 4>,
<0 0 84 &rp_cosim_intr_pstopl 0 84 4>,
<0 0 85 &rp_cosim_intr_pstopl 0 85 4>,
<0 0 86 &rp_cosim_intr_pstopl 0 86 4>,
<0 0 87 &rp_cosim_intr_pstopl 0 87 4>,
<0 0 88 &rp_cosim_intr_pstopl 0 88 4>,
<0 0 88 &rp_cosim_intr_pstopl 0 88 4>,
<0 0 89 &rp_cosim_intr_pstopl 0 89 4>,
<0 0 90 &rp_cosim_intr_pstopl 0 90 4>,
<0 0 91 &rp_cosim_intr_pstopl 0 91 4>,
<0 0 92 &rp_cosim_intr_pstopl 0 92 4>,
<0 0 93 &rp_cosim_intr_pstopl 0 93 4>,
<0 0 94 &rp_cosim_intr_pstopl 0 94 4>,
<0 0 95 &rp_cosim_intr_pstopl 0 95 4>,
<0 0 96 &rp_cosim_intr_pstopl 0 96 4>,
<0 0 104 &rp_cosim_intr_pstopl 0 104 4>,
<0 0 105 &rp_cosim_intr_pstopl 0 105 4>,
<0 0 106 &rp_cosim_intr_pstopl 0 106 4>,
<0 0 107 &rp_cosim_intr_pstopl 0 107 4>,
<0 0 108 &rp_cosim_intr_pstopl 0 108 4>,
<0 0 109 &rp_cosim_intr_pstopl 0 109 4>,
<0 0 110 &rp_cosim_intr_pstopl 0 110 4>,
<0 0 111 &rp_cosim_intr_pstopl 0 111 4>,
<0 0 112 &rp_cosim_intr_pstopl 0 112 4>,
<0 0 113 &rp_cosim_intr_pstopl 0 113 4>,
<0 0 114 &rp_cosim_intr_pstopl 0 114 4>,
<0 0 115 &rp_cosim_intr_pstopl 0 115 4>,
<0 0 116 &rp_cosim_intr_pstopl 0 116 4>,
<0 0 117 &rp_cosim_intr_pstopl 0 117 4>,
<0 0 118 &rp_cosim_intr_pstopl 0 118 4>,
<0 0 119 &rp_cosim_intr_pstopl 0 119 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 120 &rp_cosim_intr_pstopl 0 120 4>,
<0 0 121 &rp_cosim_intr_pstopl 0 121 4>,
<0 0 122 &rp_cosim_intr_pstopl 0 122 4>,
<0 0 123 &rp_cosim_intr_pstopl 0 123 4>,
<0 0 123 &rp_cosim_intr_pstopl 0 123 4>,
<0 0 124 &rp_cosim_intr_pstopl 0 124 4>,
<0 0 125 &rp_cosim_intr_pstopl 0 125 4>,
<0 0 126 &rp_cosim_intr_pstopl 0 126 4>,
<0 0 127 &rp_cosim_intr_pstopl 0 127 4>,
<0 0 128 &rp_cosim_intr_pstopl 0 128 4>,
<0 0 129 &rp_cosim_intr_pstopl 0 129 4>,
<0 0 130 &rp_cosim_intr_pstopl 0 130 4>,
<0 0 131 &rp_cosim_intr_pstopl 0 131 4>,
<0 0 132 &rp_cosim_intr_pstopl 0 132 4>,
<0 0 133 &rp_cosim_intr_pstopl 0 133 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 134 &rp_cosim_intr_pstopl 0 134 4>,
<0 0 135 &rp_cosim_intr_pstopl 0 135 4>,
<0 0 136 &rp_cosim_intr_pstopl 0 136 4>,
<0 0 137 &rp_cosim_intr_pstopl 0 137 4>,
<0 0 138 &rp_cosim_intr_pstopl 0 138 4>,
<0 0 139 &rp_cosim_intr_pstopl 0 139 4>,
<0 0 140 &rp_cosim_intr_pstopl 0 140 4>,
<0 0 141 &rp_cosim_intr_pstopl 0 141 4>,
<0 0 142 &rp_cosim_intr_pstopl 0 142 4>,
<0 0 143 &rp_cosim_intr_pstopl 0 143 4>,
<0 0 144 &rp_cosim_intr_pstopl 0 144 4>,
<0 0 145 &rp_cosim_intr_pstopl 0 145 4>,
<0 0 146 &rp_cosim_intr_pstopl 0 146 4>,
<0 0 147 &rp_cosim_intr_pstopl 0 147 4>,
<0 0 148 &rp_cosim_intr_pstopl 0 148 4>,
<0 0 149 &rp_cosim_intr_pstopl 0 149 4>,
<0 0 150 &rp_cosim_intr_pstopl 0 150 4>,
<0 0 151 &rp_cosim_intr_pstopl 0 151 4>,
<0 0 152 &rp_cosim_intr_pstopl 0 152 4>,
<0 0 153 &rp_cosim_intr_pstopl 0 153 4>,
<0 0 154 &rp_cosim_intr_pstopl 0 154 4>,
<0 0 155 &rp_cosim_intr_pstopl 0 155 4>
# 52 "ep108-arm.cosim.dts" 2

  ;
};
