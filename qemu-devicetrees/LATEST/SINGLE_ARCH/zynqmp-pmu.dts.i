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
# 157 "zynqmp-pmu.dts"
 };
# 185 "zynqmp-pmu.dts"
 ddr_bank1_1: ddr_bank1_1@0x0 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x0 0x30000>; };
 ddr_bank1_2: ddr_bank1_2@0x30000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x30000 0x10000>; };
 ddr_bank1_3: ddr_bank1_3@0x40000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x40000 0x3FFC0000>; };
 ddr_bank2: ddr_bank2@0x40000000 { compatible = "qemu:memory-region"; container = <&ddr3_ram>; qemu,ram = <1>; reg = <0x0 0x40000000 0x40000000>; };
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
# 192 "zynqmp-pmu.dts" 2


/ {
 gic: dummy_gic@0 {
  #interrupt-cells = <3>;
  interrupt-controller ;
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
# 202 "zynqmp-pmu.dts" 2
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
# 203 "zynqmp-pmu.dts" 2
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
# 204 "zynqmp-pmu.dts" 2

