/*
 * QEMU model of the LPD_SLCR_SECURE Global secure system level control
 * registers
 *
 * Copyright (c) 2020 Xilinx Inc.
 *
 * Partually autogenerated by xregqemu.py 2020-09-03.
 * Written by Joe Komlodi <komlodi@xilinx.com>
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
#include "migration/vmstate.h"
#include "hw/irq.h"
#include "qemu/log.h"

#include "hw/fdt_generic_util.h"

#ifndef XILINX_LPD_SLCR_SECURE_ERR_DEBUG
#define XILINX_LPD_SLCR_SECURE_ERR_DEBUG 0
#endif

#define TYPE_XILINX_LPD_SLCR_SECURE "xlnx,versal-lpd-slcr-secure"

#define XILINX_LPD_SLCR_SECURE(obj) \
     OBJECT_CHECK(LPD_SLCR_SECURE, (obj), TYPE_XILINX_LPD_SLCR_SECURE)

REG32(WPROT0, 0x0)
    FIELD(WPROT0, ACTIVE, 0, 1)
REG32(CTRL, 0x4)
    FIELD(CTRL, SLVERR_ENABLE, 0, 1)
REG32(ISR, 0x8)
    FIELD(ISR, ADDR_DECODE_ERR, 0, 1)
REG32(IMR, 0xc)
    FIELD(IMR, ADDR_DECODE_ERR, 0, 1)
REG32(IER, 0x10)
    FIELD(IER, ADDR_DECODE_ERR, 0, 1)
REG32(IDR, 0x14)
    FIELD(IDR, ADDR_DECODE_ERR, 0, 1)
REG32(ITR, 0x18)
    FIELD(ITR, ADDR_DECODE_ERR, 0, 1)
REG32(ECO, 0x1c)
REG32(SLCR_RPU0, 0x20)
    FIELD(SLCR_RPU0, TZ, 0, 1)
REG32(SLCR_RPU1, 0x24)
    FIELD(SLCR_RPU1, TZ, 0, 1)
REG32(SLCR_XMPU, 0x28)
    FIELD(SLCR_XMPU, TZ, 0, 1)
REG32(SLCR_XPPU, 0x2c)
    FIELD(SLCR_XPPU, TZ, 0, 1)
REG32(SAFETY_CHK, 0x30)
REG32(CPM_PCSR, 0x38)
    FIELD(CPM_PCSR, TZ, 0, 1)
REG32(SLCR_IPI, 0x40)
    FIELD(SLCR_IPI, TZ, 0, 1)
REG32(SLCR_CRL, 0x44)
    FIELD(SLCR_CRL, TZ, 0, 1)
REG32(SLCR_LPD, 0x48)
    FIELD(SLCR_LPD, INTLPD_TZ, 1, 1)
    FIELD(SLCR_LPD, LPD_SLCR_TZ, 0, 1)
REG32(SLCR_HSDP, 0x4c)
    FIELD(SLCR_HSDP, AURORA_TZ, 2, 1)
    FIELD(SLCR_HSDP, TZ, 1, 1)
    FIELD(SLCR_HSDP, APB_TZ, 0, 1)
REG32(SLCR_AFI, 0x50)
    FIELD(SLCR_AFI, FM_TZ, 0, 1)
REG32(SLCR_PSM, 0x54)
    FIELD(SLCR_PSM, TZ, 0, 1)
REG32(SLCR_ADMA0, 0x60)
    FIELD(SLCR_ADMA0, TZ, 0, 1)
REG32(SLCR_ADMA1, 0x64)
    FIELD(SLCR_ADMA1, TZ, 0, 1)
REG32(SLCR_ADMA2, 0x68)
    FIELD(SLCR_ADMA2, TZ, 0, 1)
REG32(SLCR_ADMA3, 0x6c)
    FIELD(SLCR_ADMA3, TZ, 0, 1)
REG32(SLCR_ADMA4, 0x70)
    FIELD(SLCR_ADMA4, TZ, 0, 1)
REG32(SLCR_ADMA5, 0x74)
    FIELD(SLCR_ADMA5, TZ, 0, 1)
REG32(SLCR_ADMA6, 0x78)
    FIELD(SLCR_ADMA6, TZ, 0, 1)
REG32(SLCR_ADMA7, 0x7c)
    FIELD(SLCR_ADMA7, TZ, 0, 1)
REG32(TZPROT, 0x80)
    FIELD(TZPROT, ACTIVE, 0, 1)

#define LPD_SLCR_SECURE_R_MAX (R_TZPROT + 1)

typedef struct LPD_SLCR_SECURE {
    SysBusDevice parent_obj;
    MemoryRegion iomem;
    qemu_irq irq_imr;
    qemu_irq wire_adma_secure[8];

    uint32_t regs[LPD_SLCR_SECURE_R_MAX];
    RegisterInfo regs_info[LPD_SLCR_SECURE_R_MAX];
} LPD_SLCR_SECURE;

static void imr_update_irq(LPD_SLCR_SECURE *s)
{
    bool pending = s->regs[R_ISR] & ~s->regs[R_IMR];
    qemu_set_irq(s->irq_imr, pending);
}

static void isr_postw(RegisterInfo *reg, uint64_t val64)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(reg->opaque);
    imr_update_irq(s);
}

static uint64_t ier_prew(RegisterInfo *reg, uint64_t val64)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(reg->opaque);
    uint32_t val = val64;

    s->regs[R_IMR] &= ~val;
    imr_update_irq(s);
    return 0;
}

static uint64_t idr_prew(RegisterInfo *reg, uint64_t val64)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(reg->opaque);
    uint32_t val = val64;

    s->regs[R_IMR] |= val;
    imr_update_irq(s);
    return 0;
}

static uint64_t itr_prew(RegisterInfo *reg, uint64_t val64)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(reg->opaque);
    uint32_t val = val64;

    s->regs[R_ISR] |= val;
    imr_update_irq(s);
    return 0;
}

static void slcr_adma_postw(RegisterInfo *reg, uint64_t val64)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(reg->opaque);
    uint32_t offset;
    uint32_t val = (uint32_t)val64;

    offset = (reg->access->addr - A_SLCR_ADMA0) / reg->data_size;
    assert(offset <= 7);

    qemu_set_irq(s->wire_adma_secure[offset], !FIELD_EX32(val, SLCR_ADMA0, TZ));
}

static const RegisterAccessInfo lpd_slcr_secure_regs_info[] = {
    {   .name = "WPROT0",  .addr = A_WPROT0,
        .reset = 0x1,
    },{ .name = "CTRL",  .addr = A_CTRL,
    },{ .name = "ISR",  .addr = A_ISR,
        .w1c = 0x1,
        .post_write = isr_postw,
    },{ .name = "IMR",  .addr = A_IMR,
        .reset = 0x1,
        .ro = 0x1,
    },{ .name = "IER",  .addr = A_IER,
        .pre_write = ier_prew,
    },{ .name = "IDR",  .addr = A_IDR,
        .pre_write = idr_prew,
    },{ .name = "ITR",  .addr = A_ITR,
        .pre_write = itr_prew,
    },{ .name = "ECO",  .addr = A_ECO,
    },{ .name = "SLCR_RPU0",  .addr = A_SLCR_RPU0,
    },{ .name = "SLCR_RPU1",  .addr = A_SLCR_RPU1,
    },{ .name = "SLCR_XMPU",  .addr = A_SLCR_XMPU,
    },{ .name = "SLCR_XPPU",  .addr = A_SLCR_XPPU,
    },{ .name = "SAFETY_CHK",  .addr = A_SAFETY_CHK,
    },{ .name = "CPM_PCSR",  .addr = A_CPM_PCSR,
        .reset = 0x1,
    },{ .name = "SLCR_IPI",  .addr = A_SLCR_IPI,
        .reset = 0x1,
    },{ .name = "SLCR_CRL",  .addr = A_SLCR_CRL,
        .reset = 0x1,
    },{ .name = "SLCR_LPD",  .addr = A_SLCR_LPD,
        .reset = 0x3,
    },{ .name = "SLCR_HSDP",  .addr = A_SLCR_HSDP,
        .reset = 0x7,
    },{ .name = "SLCR_AFI",  .addr = A_SLCR_AFI,
        .reset = 0x1,
    },{ .name = "SLCR_PSM",  .addr = A_SLCR_PSM,
    },{ .name = "SLCR_ADMA0",  .addr = A_SLCR_ADMA0,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA1",  .addr = A_SLCR_ADMA1,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA2",  .addr = A_SLCR_ADMA2,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA3",  .addr = A_SLCR_ADMA3,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA4",  .addr = A_SLCR_ADMA4,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA5",  .addr = A_SLCR_ADMA5,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA6",  .addr = A_SLCR_ADMA6,
        .post_write = slcr_adma_postw,
    },{ .name = "SLCR_ADMA7",  .addr = A_SLCR_ADMA7,
        .post_write = slcr_adma_postw,
    },{ .name = "TZPROT",  .addr = A_TZPROT,
    }
};

static void lpd_slcr_secure_reset(DeviceState *dev)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(dev);
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(s->regs_info); ++i) {
        register_reset(&s->regs_info[i]);
    }

    imr_update_irq(s);
}

static const MemoryRegionOps lpd_slcr_secure_ops = {
    .read = register_read_memory,
    .write = register_write_memory,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static void lpd_slcr_secure_realize(DeviceState *dev, Error **errp)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(dev);
    uint8_t i;

    for (i = 0; i < ARRAY_SIZE(s->wire_adma_secure); ++i) {
        qdev_init_gpio_out(dev, &s->wire_adma_secure[i], 1);
    }
}

static void lpd_slcr_secure_init(Object *obj)
{
    LPD_SLCR_SECURE *s = XILINX_LPD_SLCR_SECURE(obj);
    SysBusDevice *sbd = SYS_BUS_DEVICE(obj);
    RegisterInfoArray *reg_array;

    memory_region_init(&s->iomem, obj, TYPE_XILINX_LPD_SLCR_SECURE,
                       LPD_SLCR_SECURE_R_MAX * 4);
    reg_array =
        register_init_block32(DEVICE(obj), lpd_slcr_secure_regs_info,
                              ARRAY_SIZE(lpd_slcr_secure_regs_info),
                              s->regs_info, s->regs,
                              &lpd_slcr_secure_ops,
                              XILINX_LPD_SLCR_SECURE_ERR_DEBUG,
                              LPD_SLCR_SECURE_R_MAX * 4);
    memory_region_add_subregion(&s->iomem,
                                0x0,
                                &reg_array->mem);
    sysbus_init_mmio(sbd, &s->iomem);
    sysbus_init_irq(sbd, &s->irq_imr);
}

static const VMStateDescription vmstate_lpd_slcr_secure = {
    .name = TYPE_XILINX_LPD_SLCR_SECURE,
    .version_id = 1,
    .minimum_version_id = 1,
    .fields = (VMStateField[]) {
        VMSTATE_UINT32_ARRAY(regs, LPD_SLCR_SECURE, LPD_SLCR_SECURE_R_MAX),
        VMSTATE_END_OF_LIST(),
    }
};

static void lpd_slcr_secure_class_init(ObjectClass *klass, void *data)
{
    DeviceClass *dc = DEVICE_CLASS(klass);

    dc->reset = lpd_slcr_secure_reset;
    dc->realize = lpd_slcr_secure_realize;
    dc->vmsd = &vmstate_lpd_slcr_secure;
}

static const TypeInfo lpd_slcr_secure_info = {
    .name          = TYPE_XILINX_LPD_SLCR_SECURE,
    .parent        = TYPE_SYS_BUS_DEVICE,
    .instance_size = sizeof(LPD_SLCR_SECURE),
    .class_init    = lpd_slcr_secure_class_init,
    .instance_init = lpd_slcr_secure_init,
};

static void lpd_slcr_secure_register_types(void)
{
    type_register_static(&lpd_slcr_secure_info);
}

type_init(lpd_slcr_secure_register_types)
