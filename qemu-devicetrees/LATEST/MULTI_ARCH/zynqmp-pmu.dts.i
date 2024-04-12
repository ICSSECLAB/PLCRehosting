# 1 "zynqmp-pmu.dts"
# 1 "<built-in>" 1
# 1 "zynqmp-pmu.dts" 2
# 30 "zynqmp-pmu.dts"
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
# 31 "zynqmp-pmu.dts" 2

/dts-v1/;

/ {
 #address-cells = <2>;
 #size-cells = <1>;
 cpus {
  #address-cells = <1>;
  #cpus = <0x1>;
  #size-cells = <0>;
  pmu_cpu0: cpu@0 {
   #interrupt-cells = <1>;
   clock-frequency = <100000000>;
   compatible = "xlnx,microblaze-cpu";
   d-cache-size = <0x0>;
   device_type = "cpu";
   i-cache-size = <0x0>;
   model = "microblaze,8.40.b";
   version = "8.40.b";
   reg = <0>;
   timebase-frequency = <100000000>;
   xlnx,addr-tag-bits = <0x10>;
   xlnx,area-optimized = <0x0>;
   xlnx,avoid-primitives = <0x3>;
   xlnx,base-vectors = <0xffd00000>;
   xlnx,branch-target-cache-size = <0x0>;
   xlnx,d-axi = <0x1>;
   xlnx,d-lmb = <0x1>;
   xlnx,d-plb = <0x0>;
   xlnx,data-size = <0x20>;
   xlnx,debug-enabled = <0x1>;
   xlnx,div-zero-exception = <0x0>;
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
   xlnx,instance = "microblaze_1";
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
   xlnx,pvr = <0x0>;
   xlnx,pvr-user1 = <0x0>;
   xlnx,pvr-user2 = <0x0>;
   xlnx,reset-msr = <0x0>;
   xlnx,sco = <0x0>;
   xlnx,stream-interconnect = <0x0>;
   xlnx,unaligned-exceptions = <0x1>;
   xlnx,use-barrel = <0x1>;
   xlnx,use-branch-target-cache = <0x0>;
   xlnx,use-dcache = <0x0>;
   xlnx,use-div = <0x0>;
   xlnx,use-ext-brk = <0x1>;
   xlnx,use-ext-nm-brk = <0x1>;
   xlnx,use-extended-fsl-instr = <0x0>;
   xlnx,use-fpu = <0x0>;
   xlnx,use-hw-mul = <0x0>;
   xlnx,use-icache = <0x0>;
   xlnx,use-interrupt = <0x1>;
   xlnx,use-mmu = <0x0>;
   xlnx,use-msr-instr = <0x1>;
   xlnx,use-pcmp-instr = <0x1>;
   xlnx,use-reorder-instr = <0x1>;
   xlnx,use-stack-protection = <0x1>;

   gpios = <&rp_gpio_pmu 0 &rp_gpio_pmu 3>;
   gpio-names = "wakeup", "mb_sleep";

   mr = <&lmb_pmu>;
   memory = <&lmb_pmu>;
   memattr = <&pmu_memattr>;
  };
 };

 lmb_pmu: lmb_pmu@0 {
  #address-cells = <2>;
  #size-cells = <2>;
  #priority-cells = <1>;
  compatible = "simple-bus";
  ranges;

  main_bus_for_pmu {
   compatible = "qemu:memory-region";
   alias = <&amba>;

   reg = <0x0 0x0 0xffffffff 0xffffffff 0xffffffff>;
  };


  pmu_rom: memory@ffd00000 {
   device_type = "memory";
   reg = <0x0 0xffd00000 0x0 0x00008000 0x1>;
   compatible = "qemu:memory-region";
   container = <&lmb_pmu>;
   qemu,ram = <1>;
   read-only;
  };


  rp_memory_master: rp_mm@40000000 {
   compatible = "remote-port-memory-master";
   remote-ports = <&pmu 0>;
   reg = <0x0 0x40000000 0x0 0xc0000000 0xfffffffe>;
  };

 };


 pmu: pmu@0 {
  compatible = "remote-port";
  chrdev-id = "pmu-apu-rp";
 };

 rp_gpio_pmu_intr: rp_gpio_pmu_intr@0 {
  compatible = "remote-port-gpio";
  remote-ports = <&pmu 1>;
  num-gpios = <1>;
  interrupts-extended = <&pmu_cpu0 0>;
 };
 rp_gpio_pmu: rp_gpio_pmu@0 {
  #gpio-cells = <1>;
  compatible = "remote-port-gpio";
  remote-ports = <&pmu 2>;
  gpio-controller;
  num-gpios = <4>;
 };

 ps_reset@0 {
  compatible = "qemu,reset-device";
  gpios = <&rp_gpio_pmu 1
     &rp_gpio_pmu 2>;
 };

 ddr_bank1_1: ddr_bank1_1@0x0 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x0 0x30000>; };
 ddr_bank1_2: ddr_bank1_2@0x30000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x30000 0x10000>; };
 ddr_bank1_3: ddr_bank1_3@0x40000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x40000 0x3FFC0000>; };
 ddr_bank2: ddr_bank2@0x40000000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <2>; reg = <0x0 0x40000000 0x40000000>; };
};

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
# 192 "zynqmp-pmu.dts" 2

