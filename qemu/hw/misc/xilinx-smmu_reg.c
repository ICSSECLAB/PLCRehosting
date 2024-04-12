/*
 * QEMU model of the SMMU_REG System Memory Management Unit Configuration
 * and event registers
 *
 * Copyright (c) 2015 Xilinx Inc.
 *
 * Autogenerated by xregqemu.py 2015-04-05.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

#include "qemu/osdep.h"
#include "hw/sysbus.h"
#include "hw/register.h"
#include "qemu/bitops.h"
#include "qemu/log.h"
#include "migration/vmstate.h"
#include "hw/qdev-properties.h"
#include "hw/fdt_generic_util.h"

#ifndef XILINX_SMMU_REG_ERR_DEBUG
#define XILINX_SMMU_REG_ERR_DEBUG 0
#endif

#define TYPE_XILINX_SMMU_REG "xlnx.smmu-reg"

#define XILINX_SMMU_REG(obj) \
     OBJECT_CHECK(SMMU_REG, (obj), TYPE_XILINX_SMMU_REG)

REG32(MISC_CTRL, 0x0)
    FIELD(MISC_CTRL, SLVERR_ENABLE, 0, 1)
REG32(ISR_0, 0x10)
    FIELD(ISR_0, ADDR_DECODE_ERR, 31, 1)
    FIELD(ISR_0, GBL_FLT_IRPT_NS, 4, 1)
    FIELD(ISR_0, GBL_FLT_IRPT_S, 3, 1)
    FIELD(ISR_0, COMB_PERF_IRPT_TBU, 2, 1)
    FIELD(ISR_0, COMB_IRPT_S, 1, 1)
    FIELD(ISR_0, COMB_IRPT_NS, 0, 1)
REG32(IMR_0, 0x14)
    FIELD(IMR_0, ADDR_DECODE_ERR, 31, 1)
    FIELD(IMR_0, GBL_FLT_IRPT_NS, 4, 1)
    FIELD(IMR_0, GBL_FLT_IRPT_S, 3, 1)
    FIELD(IMR_0, COMB_PERF_IRPT_TBU, 2, 1)
    FIELD(IMR_0, COMB_IRPT_S, 1, 1)
    FIELD(IMR_0, COMB_IRPT_NS, 0, 1)
REG32(IER_0, 0x18)
    FIELD(IER_0, ADDR_DECODE_ERR, 31, 1)
    FIELD(IER_0, GBL_FLT_IRPT_NS, 4, 1)
    FIELD(IER_0, GBL_FLT_IRPT_S, 3, 1)
    FIELD(IER_0, COMB_PERF_IRPT_TBU, 2, 1)
    FIELD(IER_0, COMB_IRPT_S, 1, 1)
    FIELD(IER_0, COMB_IRPT_NS, 0, 1)
REG32(IDR_0, 0x1c)
    FIELD(IDR_0, ADDR_DECODE_ERR, 31, 1)
    FIELD(IDR_0, GBL_FLT_IRPT_NS, 4, 1)
    FIELD(IDR_0, GBL_FLT_IRPT_S, 3, 1)
    FIELD(IDR_0, COMB_PERF_IRPT_TBU, 2, 1)
    FIELD(IDR_0, COMB_IRPT_S, 1, 1)
    FIELD(IDR_0, COMB_IRPT_NS, 0, 1)
REG32(ITR_0, 0x20)
    FIELD(ITR_0, ADDR_DECODE_ERR, 31, 1)
    FIELD(ITR_0, GBL_FLT_IRPT_NS, 4, 1)
    FIELD(ITR_0, GBL_FLT_IRPT_S, 3, 1)
    FIELD(ITR_0, COMB_PERF_IRPT_TBU, 2, 1)
    FIELD(ITR_0, COMB_IRPT_S, 1, 1)
    FIELD(ITR_0, COMB_IRPT_NS, 0, 1)
REG32(QREQN, 0x40)
    FIELD(QREQN, TBU_TBU5_5_CG, 14, 1)
    FIELD(QREQN, TBU_TBU5_5_PD, 13, 1)
    FIELD(QREQN, TBU_TBU4_4_CG, 12, 1)
    FIELD(QREQN, TBU_TBU4_4_PD, 11, 1)
    FIELD(QREQN, TBU_TBU3_3_CG, 10, 1)
    FIELD(QREQN, TBU_TBU3_3_PD, 9, 1)
    FIELD(QREQN, PD_MST_BR_TBU2_2, 8, 1)
    FIELD(QREQN, PD_SLV_BR_TBU2_2, 7, 1)
    FIELD(QREQN, TBU_TBU2_2_CG, 6, 1)
    FIELD(QREQN, TBU_TBU2_2_PD, 5, 1)
    FIELD(QREQN, TBU_TBU1_1_CG, 4, 1)
    FIELD(QREQN, TBU_TBU1_1_PD, 3, 1)
    FIELD(QREQN, TBU_TBU0_0_CG, 2, 1)
    FIELD(QREQN, TBU_TBU0_0_PD, 1, 1)
    FIELD(QREQN, TCU, 0, 1)
REG32(MISC, 0x54)
    FIELD(MISC, SPNIDEN, 12, 1)
    FIELD(MISC, ARQOSARB, 8, 4)
    FIELD(MISC, AWAKEUP_PROG, 7, 1)
    FIELD(MISC, EMAS, 6, 1)
    FIELD(MISC, EMAW, 4, 2)
    FIELD(MISC, EMA, 1, 3)
REG32(CONFIG_SIGNALS, 0x58)
    FIELD(CONFIG_SIGNALS, CFG_NORMALIZE, 1, 1)
REG32(PL_AT, 0x60)
    FIELD(PL_AT, PL_CONFIG_DONE, 1, 1)
    FIELD(PL_AT, CLK_SEL, 0, 1)
REG32(ECO_INFO, 0x100)
    FIELD(ECO_INFO, ECOREVNUM, 0, 4)
REG32(ECO_0, 0x104)
REG32(ECO_1, 0x108)

#define R_MAX (R_ECO_1 + 1)

typedef struct SMMU_REG {
    SysBusDevice parent_obj;
    MemoryRegion iomem;
    qemu_irq irq_imr_0;

    uint64_t irq_src;

    uint32_t regs[R_MAX];
    RegisterInfo regs_info[R_MAX];
} SMMU_REG;

static void imr_0_update_irq(SMMU_REG *s)
{
    bool global_irq;
    bool ctxt_irq;
    bool pending;

    global_irq = s->irq_src & 1;
    ctxt_irq = s->irq_src & (~1ULL);
    s->regs[R_ISR_0] |= ctxt_irq << 0;
    s->regs[R_ISR_0] |= ctxt_irq << 1;
    s->regs[R_ISR_0] |= global_irq << 3;
    s->regs[R_ISR_0] |= global_irq << 4;

    pending = s->regs[R_ISR_0] & ~s->regs[R_IMR_0];
    qemu_set_irq(s->irq_imr_0, pending);
}

static void isr_0_postw(RegisterInfo *reg, uint64_t val64)
{
    SMMU_REG *s = XILINX_SMMU_REG(reg->opaque);
    imr_0_update_irq(s);
}

static uint64_t ier_0_prew(RegisterInfo *reg, uint64_t val64)
{
    SMMU_REG *s = XILINX_SMMU_REG(reg->opaque);
    uint32_t val = val64;

    s->regs[R_IMR_0] &= ~val;
    imr_0_update_irq(s);
    return 0;
}

static uint64_t idr_0_prew(RegisterInfo *reg, uint64_t val64)
{
    SMMU_REG *s = XILINX_SMMU_REG(reg->opaque);
    uint32_t val = val64;

    s->regs[R_IMR_0] |= val;
    imr_0_update_irq(s);
    return 0;
}

static uint64_t itr_0_prew(RegisterInfo *reg, uint64_t val64)
{
    SMMU_REG *s = XILINX_SMMU_REG(reg->opaque);
    uint32_t val = val64;

    s->regs[R_ISR_0] |= val;
    imr_0_update_irq(s);
    return 0;
}

static const RegisterAccessInfo smmu_reg_regs_info[] = {
    {   .name = "MISC_CTRL",  .addr = A_MISC_CTRL,
    },{ .name = "ISR_0",  .addr = A_ISR_0,
        .rsvd = 0x7fffffe0,
        .ro = 0x7fffffe0,
        .w1c = 0x8000001f,
        .post_write = isr_0_postw,
    },{ .name = "IMR_0",  .addr = A_IMR_0,
        .reset = 0x8000001f,
        .rsvd = 0x7fffffe0,
        .ro = 0x7fffffff,
        .w1c = 0x80000000,
    },{ .name = "IER_0",  .addr = A_IER_0,
        .rsvd = 0x7fffffe0,
        .ro = 0x7fffffe0,
        .w1c = 0x80000000,
        .pre_write = ier_0_prew,
    },{ .name = "IDR_0",  .addr = A_IDR_0,
        .rsvd = 0x7fffffe0,
        .ro = 0x7fffffe0,
        .w1c = 0x80000000,
        .pre_write = idr_0_prew,
    },{ .name = "ITR_0",  .addr = A_ITR_0,
        .rsvd = 0x7fffffe0,
        .ro = 0x7fffffe0,
        .w1c = 0x80000000,
        .pre_write = itr_0_prew,
    },{ .name = "QREQN",  .addr = A_QREQN,
        .reset = 0x7fff,
        .rsvd = 0xffff8000,
    },{ .name = "MISC",  .addr = A_MISC,
        .reset = 0x16,
        .rsvd = 0xffffe001,
        .ro = 0xf00,
    },{ .name = "CONFIG_SIGNALS",  .addr = A_CONFIG_SIGNALS,
        .rsvd = 0xfffffffd,
    },{ .name = "PL_AT",  .addr = A_PL_AT,
        .rsvd = 0xfffffffc,
        .ro = 0x2,
    },{ .name = "ECO_INFO",  .addr = A_ECO_INFO,
    },{ .name = "ECO_0",  .addr = A_ECO_0,
    },{ .name = "ECO_1",  .addr = A_ECO_1,
        .reset = 0xffffffff,
    }
};

static void smmu_reg_reset(DeviceState *dev)
{
    SMMU_REG *s = XILINX_SMMU_REG(dev);
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(s->regs_info); ++i) {
        register_reset(&s->regs_info[i]);
    }

    imr_0_update_irq(s);
}

static const MemoryRegionOps smmu_reg_ops = {
    .read = register_read_memory,
    .write = register_write_memory,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static void irq_handler(void *opaque, int irq, int level)
{
    SMMU_REG *s = XILINX_SMMU_REG(opaque);

    s->irq_src &= ~(1 << irq);
    s->irq_src |= level << irq;
    imr_0_update_irq(s);
}

static void smmu_reg_init(Object *obj)
{
    SMMU_REG *s = XILINX_SMMU_REG(obj);
    SysBusDevice *sbd = SYS_BUS_DEVICE(obj);
    RegisterInfoArray *reg_array;

    memory_region_init(&s->iomem, obj, TYPE_XILINX_SMMU_REG, R_MAX * 4);
    reg_array =
        register_init_block32(DEVICE(obj), smmu_reg_regs_info,
                              ARRAY_SIZE(smmu_reg_regs_info),
                              s->regs_info, s->regs,
                              &smmu_reg_ops,
                              XILINX_SMMU_REG_ERR_DEBUG,
                              R_MAX * 4);
    memory_region_add_subregion(&s->iomem,
                                0x0,
                                &reg_array->mem);
    sysbus_init_mmio(sbd, &s->iomem);
    sysbus_init_irq(sbd, &s->irq_imr_0);
    qdev_init_gpio_in(DEVICE(obj), irq_handler, 33);
}

static int smmu_reg_fdt_get_irq(FDTGenericIntc *obj, qemu_irq *irqs,
                                uint32_t *cells, int ncells, int max,
                                Error **errp)
{
    /* FIXME: Add Error checking */
    (*irqs) = qdev_get_gpio_in(DEVICE(obj), cells[0]);
    return 1;
};

static const VMStateDescription vmstate_smmu_reg = {
    .name = TYPE_XILINX_SMMU_REG,
    .version_id = 1,
    .minimum_version_id = 1,
    .fields = (VMStateField[]) {
        VMSTATE_UINT32_ARRAY(regs, SMMU_REG, R_MAX),
        VMSTATE_END_OF_LIST(),
    }
};

static void smmu_reg_class_init(ObjectClass *klass, void *data)
{
    DeviceClass *dc = DEVICE_CLASS(klass);
    FDTGenericIntcClass *fgic = FDT_GENERIC_INTC_CLASS(klass);

    dc->reset = smmu_reg_reset;
    dc->vmsd = &vmstate_smmu_reg;
    fgic->get_irq = smmu_reg_fdt_get_irq;
}

static const TypeInfo smmu_reg_info = {
    .name          = TYPE_XILINX_SMMU_REG,
    .parent        = TYPE_SYS_BUS_DEVICE,
    .instance_size = sizeof(SMMU_REG),
    .class_init    = smmu_reg_class_init,
    .instance_init = smmu_reg_init,
    .interfaces = (InterfaceInfo[]) {
        { TYPE_FDT_GENERIC_INTC },
        { }
    },
};

static void smmu_reg_register_types(void)
{
    type_register_static(&smmu_reg_info);
}

type_init(smmu_reg_register_types)
