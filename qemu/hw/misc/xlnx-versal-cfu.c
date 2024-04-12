/*
 * QEMU model of the CFU_APB CFU APB Registers
 *
 * Copyright (c) 2016 Xilinx Inc.
 *
 * Autogenerated by xregqemu.py 2016-10-19.
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
#include "hw/irq.h"
#include "qemu/bitops.h"
#include "qemu/log.h"
#include "migration/vmstate.h"
#include "hw/qdev-properties.h"
#include "hw/qdev-properties-system.h"
#include "chardev/char.h"
#include "chardev/char-fe.h"
#include "hw/misc/xlnx-cfi-if.h"

#ifndef XILINX_CFU_APB_ERR_DEBUG
#define XILINX_CFU_APB_ERR_DEBUG 0
#endif

#define TYPE_XILINX_CFU_APB "xlnx,versal-cfu"

#define XILINX_CFU_APB(obj) \
     OBJECT_CHECK(CFU, (obj), TYPE_XILINX_CFU_APB)

#define TYPE_XILINX_CFU_FDRO "xlnx,versal-cfu-fdro"

#define XILINX_CFU_FDRO(obj) \
     OBJECT_CHECK(CFU_FDRO, (obj), TYPE_XILINX_CFU_FDRO)

#define TYPE_XILINX_CFU_SFR "xlnx,versal-cfu-sfr"

#define XILINX_CFU_SFR(obj) \
     OBJECT_CHECK(CFU_SFR, (obj), TYPE_XILINX_CFU_SFR)

#define DPRINT(args, ...) \
    do { \
        if (XILINX_CFU_APB_ERR_DEBUG) { \
            qemu_log(args, ## __VA_ARGS__); \
        } \
    } while (0)


REG32(CFU_ISR, 0x0)
    FIELD(CFU_ISR, USR_GTS_EVENT, 9, 1)
    FIELD(CFU_ISR, USR_GSR_EVENT, 8, 1)
    FIELD(CFU_ISR, SLVERR, 7, 1)
    FIELD(CFU_ISR, DECOMP_ERROR, 6, 1)
    FIELD(CFU_ISR, BAD_CFI_PACKET, 5, 1)
    FIELD(CFU_ISR, AXI_ALIGN_ERROR, 4, 1)
    FIELD(CFU_ISR, CFI_ROW_ERROR, 3, 1)
    FIELD(CFU_ISR, CRC32_ERROR, 2, 1)
    FIELD(CFU_ISR, CRC8_ERROR, 1, 1)
    FIELD(CFU_ISR, SEU_ENDOFCALIB, 0, 1)
REG32(CFU_IMR, 0x4)
    FIELD(CFU_IMR, USR_GTS_EVENT, 9, 1)
    FIELD(CFU_IMR, USR_GSR_EVENT, 8, 1)
    FIELD(CFU_IMR, SLVERR, 7, 1)
    FIELD(CFU_IMR, DECOMP_ERROR, 6, 1)
    FIELD(CFU_IMR, BAD_CFI_PACKET, 5, 1)
    FIELD(CFU_IMR, AXI_ALIGN_ERROR, 4, 1)
    FIELD(CFU_IMR, CFI_ROW_ERROR, 3, 1)
    FIELD(CFU_IMR, CRC32_ERROR, 2, 1)
    FIELD(CFU_IMR, CRC8_ERROR, 1, 1)
    FIELD(CFU_IMR, SEU_ENDOFCALIB, 0, 1)
REG32(CFU_IER, 0x8)
    FIELD(CFU_IER, USR_GTS_EVENT, 9, 1)
    FIELD(CFU_IER, USR_GSR_EVENT, 8, 1)
    FIELD(CFU_IER, SLVERR, 7, 1)
    FIELD(CFU_IER, DECOMP_ERROR, 6, 1)
    FIELD(CFU_IER, BAD_CFI_PACKET, 5, 1)
    FIELD(CFU_IER, AXI_ALIGN_ERROR, 4, 1)
    FIELD(CFU_IER, CFI_ROW_ERROR, 3, 1)
    FIELD(CFU_IER, CRC32_ERROR, 2, 1)
    FIELD(CFU_IER, CRC8_ERROR, 1, 1)
    FIELD(CFU_IER, SEU_ENDOFCALIB, 0, 1)
REG32(CFU_IDR, 0xc)
    FIELD(CFU_IDR, USR_GTS_EVENT, 9, 1)
    FIELD(CFU_IDR, USR_GSR_EVENT, 8, 1)
    FIELD(CFU_IDR, SLVERR, 7, 1)
    FIELD(CFU_IDR, DECOMP_ERROR, 6, 1)
    FIELD(CFU_IDR, BAD_CFI_PACKET, 5, 1)
    FIELD(CFU_IDR, AXI_ALIGN_ERROR, 4, 1)
    FIELD(CFU_IDR, CFI_ROW_ERROR, 3, 1)
    FIELD(CFU_IDR, CRC32_ERROR, 2, 1)
    FIELD(CFU_IDR, CRC8_ERROR, 1, 1)
    FIELD(CFU_IDR, SEU_ENDOFCALIB, 0, 1)
REG32(CFU_ITR, 0x10)
    FIELD(CFU_ITR, USR_GTS_EVENT, 9, 1)
    FIELD(CFU_ITR, USR_GSR_EVENT, 8, 1)
    FIELD(CFU_ITR, SLVERR, 7, 1)
    FIELD(CFU_ITR, DECOMP_ERROR, 6, 1)
    FIELD(CFU_ITR, BAD_CFI_PACKET, 5, 1)
    FIELD(CFU_ITR, AXI_ALIGN_ERROR, 4, 1)
    FIELD(CFU_ITR, CFI_ROW_ERROR, 3, 1)
    FIELD(CFU_ITR, CRC32_ERROR, 2, 1)
    FIELD(CFU_ITR, CRC8_ERROR, 1, 1)
    FIELD(CFU_ITR, SEU_ENDOFCALIB, 0, 1)
REG32(CFU_PROTECT, 0x14)
    FIELD(CFU_PROTECT, ACTIVE, 0, 1)
REG32(CFU_FGCR, 0x18)
    FIELD(CFU_FGCR, GCLK_CAL, 14, 1)
    FIELD(CFU_FGCR, SC_HBC_TRIGGER, 13, 1)
    FIELD(CFU_FGCR, GLOW, 12, 1)
    FIELD(CFU_FGCR, GPWRDWN, 11, 1)
    FIELD(CFU_FGCR, GCAP, 10, 1)
    FIELD(CFU_FGCR, GSCWE, 9, 1)
    FIELD(CFU_FGCR, GHIGH_B, 8, 1)
    FIELD(CFU_FGCR, GMC_B, 7, 1)
    FIELD(CFU_FGCR, GWE, 6, 1)
    FIELD(CFU_FGCR, GRESTORE, 5, 1)
    FIELD(CFU_FGCR, GTS_CFG_B, 4, 1)
    FIELD(CFU_FGCR, GLUTMASK, 3, 1)
    FIELD(CFU_FGCR, EN_GLOBS_B, 2, 1)
    FIELD(CFU_FGCR, EOS, 1, 1)
    FIELD(CFU_FGCR, INIT_COMPLETE, 0, 1)
REG32(CFU_CTL, 0x1c)
    FIELD(CFU_CTL, GSR_GSC, 15, 1)
    FIELD(CFU_CTL, SLVERR_EN, 14, 1)
    FIELD(CFU_CTL, CRC32_RESET, 13, 1)
    FIELD(CFU_CTL, AXI_ERROR_EN, 12, 1)
    FIELD(CFU_CTL, FLUSH_AXI, 11, 1)
    FIELD(CFU_CTL, SSI_PER_SLR_PR, 10, 1)
    FIELD(CFU_CTL, GCAP_CLK_EN, 9, 1)
    FIELD(CFU_CTL, STATUS_SYNC_DISABLE, 8, 1)
    FIELD(CFU_CTL, IGNORE_CFI_ERROR, 7, 1)
    FIELD(CFU_CTL, CFRAME_DISABLE, 6, 1)
    FIELD(CFU_CTL, QWORD_CNT_RESET, 5, 1)
    FIELD(CFU_CTL, CRC8_DISABLE, 4, 1)
    FIELD(CFU_CTL, CRC32_CHECK, 3, 1)
    FIELD(CFU_CTL, DECOMPRESS, 2, 1)
    FIELD(CFU_CTL, SEU_GO, 1, 1)
    FIELD(CFU_CTL, CFI_LOCAL_RESET, 0, 1)
REG32(CFU_CRAM_RW, 0x20)
    FIELD(CFU_CRAM_RW, RFIFO_AFULL_DEPTH, 18, 9)
    FIELD(CFU_CRAM_RW, RD_WAVE_CNT_LEFT, 12, 6)
    FIELD(CFU_CRAM_RW, RD_WAVE_CNT, 6, 6)
    FIELD(CFU_CRAM_RW, WR_WAVE_CNT, 0, 6)
REG32(CFU_MASK, 0x28)
REG32(CFU_CRC_EXPECT, 0x2c)
REG32(CFU_CFRAME_LEFT_T0, 0x60)
    FIELD(CFU_CFRAME_LEFT_T0, NUM, 0, 20)
REG32(CFU_CFRAME_LEFT_T1, 0x64)
    FIELD(CFU_CFRAME_LEFT_T1, NUM, 0, 20)
REG32(CFU_CFRAME_LEFT_T2, 0x68)
    FIELD(CFU_CFRAME_LEFT_T2, NUM, 0, 20)
REG32(CFU_ROW_RANGE, 0x6c)
    FIELD(CFU_ROW_RANGE, HALF_FSR, 5, 1)
    FIELD(CFU_ROW_RANGE, NUM, 0, 5)
REG32(CFU_STATUS, 0x100)
    FIELD(CFU_STATUS, SEU_WRITE_ERROR, 30, 1)
    FIELD(CFU_STATUS, FRCNT_ERROR, 29, 1)
    FIELD(CFU_STATUS, RSVD_ERROR, 28, 1)
    FIELD(CFU_STATUS, FDRO_ERROR, 27, 1)
    FIELD(CFU_STATUS, FDRI_ERROR, 26, 1)
    FIELD(CFU_STATUS, FDRI_READ_ERROR, 25, 1)
    FIELD(CFU_STATUS, READ_FDRI_ERROR, 24, 1)
    FIELD(CFU_STATUS, READ_SFR_ERROR, 23, 1)
    FIELD(CFU_STATUS, READ_STREAM_ERROR, 22, 1)
    FIELD(CFU_STATUS, UNKNOWN_STREAM_PKT, 21, 1)
    FIELD(CFU_STATUS, USR_GTS, 20, 1)
    FIELD(CFU_STATUS, USR_GSR, 19, 1)
    FIELD(CFU_STATUS, AXI_BAD_WSTRB, 18, 1)
    FIELD(CFU_STATUS, AXI_BAD_AR_SIZE, 17, 1)
    FIELD(CFU_STATUS, AXI_BAD_AW_SIZE, 16, 1)
    FIELD(CFU_STATUS, AXI_BAD_ARADDR, 15, 1)
    FIELD(CFU_STATUS, AXI_BAD_AWADDR, 14, 1)
    FIELD(CFU_STATUS, SCAN_CLEAR_PASS, 13, 1)
    FIELD(CFU_STATUS, HC_SEC_ERROR, 12, 1)
    FIELD(CFU_STATUS, GHIGH_B_ISHIGH, 11, 1)
    FIELD(CFU_STATUS, GHIGH_B_ISLOW, 10, 1)
    FIELD(CFU_STATUS, GMC_B_ISHIGH, 9, 1)
    FIELD(CFU_STATUS, GMC_B_ISLOW, 8, 1)
    FIELD(CFU_STATUS, GPWRDWN_B_ISHIGH, 7, 1)
    FIELD(CFU_STATUS, CFI_SEU_CRC_ERROR, 6, 1)
    FIELD(CFU_STATUS, CFI_SEU_ECC_ERROR, 5, 1)
    FIELD(CFU_STATUS, CFI_SEU_HEARTBEAT, 4, 1)
    FIELD(CFU_STATUS, SCAN_CLEAR_DONE, 3, 1)
    FIELD(CFU_STATUS, HC_COMPLETE, 2, 1)
    FIELD(CFU_STATUS, CFI_CFRAME_BUSY, 1, 1)
    FIELD(CFU_STATUS, CFU_STREAM_BUSY, 0, 1)
REG32(CFU_INTERNAL_STATUS, 0x104)
    FIELD(CFU_INTERNAL_STATUS, SSI_EOS, 22, 1)
    FIELD(CFU_INTERNAL_STATUS, SSI_GWE, 21, 1)
    FIELD(CFU_INTERNAL_STATUS, RFIFO_EMPTY, 20, 1)
    FIELD(CFU_INTERNAL_STATUS, RFIFO_FULL, 19, 1)
    FIELD(CFU_INTERNAL_STATUS, SEL_SFR, 18, 1)
    FIELD(CFU_INTERNAL_STATUS, STREAM_CFRAME, 17, 1)
    FIELD(CFU_INTERNAL_STATUS, FDRI_PHASE, 16, 1)
    FIELD(CFU_INTERNAL_STATUS, CFI_PIPE_EN, 15, 1)
    FIELD(CFU_INTERNAL_STATUS, AWFIFO_DCNT, 10, 5)
    FIELD(CFU_INTERNAL_STATUS, WFIFO_DCNT, 5, 5)
    FIELD(CFU_INTERNAL_STATUS, REPAIR_BUSY, 4, 1)
    FIELD(CFU_INTERNAL_STATUS, TRIMU_BUSY, 3, 1)
    FIELD(CFU_INTERNAL_STATUS, TRIMB_BUSY, 2, 1)
    FIELD(CFU_INTERNAL_STATUS, HCLEANR_BUSY, 1, 1)
    FIELD(CFU_INTERNAL_STATUS, HCLEAN_BUSY, 0, 1)
REG32(CFU_QWORD_CNT, 0x108)
REG32(CFU_CRC_LIVE, 0x10c)
REG32(CFU_PENDING_READ_CNT, 0x110)
    FIELD(CFU_PENDING_READ_CNT, NUM, 0, 25)
REG32(CFU_FDRI_CNT, 0x114)
REG32(CFU_ECO1, 0x118)
REG32(CFU_ECO2, 0x11c)

#define R_MAX (R_CFU_ECO2 + 1)

#define NUM_STREAM 2
#define KEYHOLE_STREAM_4K 0x1000
#define KEYHOLE_STREAM_256K 0x40000
#define CFRAME_BROADCAST_ROW 0x1F

typedef struct CFU {
    SysBusDevice parent_obj;
    MemoryRegion iomem;
    MemoryRegion iomem_stream[NUM_STREAM];
    qemu_irq irq_cfu_imr;

    /* 128-bit wfifo.  */
    uint32_t wfifo[4];

    CharBackend chr;
    uint32_t regs[R_MAX];
    RegisterInfo regs_info[R_MAX];

    /* Keept for backwards compatibility */
    MemoryRegion iomem_sfr;
    MemoryRegion iomem_fdro;
    GArray *fdro_data;
    uint8_t fdri_row_addr;

    struct {
        XlnxCfiIf *cframe[15];
    } cfg;
} CFU;

typedef struct CFU_FDRO {
    SysBusDevice parent_obj;
    MemoryRegion iomem_fdro;

    GArray *fdro_data;
} CFU_FDRO;

typedef struct CFU_SFR {
    SysBusDevice parent_obj;
    MemoryRegion iomem_sfr;

    /* 128-bit wfifo. */
    uint32_t wfifo[4];

    struct {
        CFU *cfu;
    } cfg;
} CFU_SFR;

static void cfu_imr_update_irq(CFU *s)
{
    bool pending = s->regs[R_CFU_ISR] & ~s->regs[R_CFU_IMR];
    qemu_set_irq(s->irq_cfu_imr, pending);
}

static void cfu_isr_postw(RegisterInfo *reg, uint64_t val64)
{
    CFU *s = XILINX_CFU_APB(reg->opaque);
    cfu_imr_update_irq(s);
}

static uint64_t cfu_ier_prew(RegisterInfo *reg, uint64_t val64)
{
    CFU *s = XILINX_CFU_APB(reg->opaque);
    uint32_t val = val64;

    s->regs[R_CFU_IMR] &= ~val;
    cfu_imr_update_irq(s);
    return 0;
}

static uint64_t cfu_idr_prew(RegisterInfo *reg, uint64_t val64)
{
    CFU *s = XILINX_CFU_APB(reg->opaque);
    uint32_t val = val64;

    s->regs[R_CFU_IMR] |= val;
    cfu_imr_update_irq(s);
    return 0;
}

static uint64_t cfu_itr_prew(RegisterInfo *reg, uint64_t val64)
{
    CFU *s = XILINX_CFU_APB(reg->opaque);
    uint32_t val = val64;

    s->regs[R_CFU_ISR] |= val;
    cfu_imr_update_irq(s);
    return 0;
}

static void cfu_fgcr_postw(RegisterInfo *reg, uint64_t val64)
{
    CFU *s = XILINX_CFU_APB(reg->opaque);
    uint32_t val = (uint32_t)val64;

    /* Do a scan. It always looks good. */
    if (FIELD_EX32(val, CFU_FGCR, SC_HBC_TRIGGER)) {
        ARRAY_FIELD_DP32(s->regs, CFU_STATUS, SCAN_CLEAR_PASS, 1);
        ARRAY_FIELD_DP32(s->regs, CFU_STATUS, SCAN_CLEAR_DONE, 1);
    }
}


static const RegisterAccessInfo cfu_apb_regs_info[] = {
    {   .name = "CFU_ISR",  .addr = A_CFU_ISR,
        .rsvd = 0xfffffc00,
        .w1c = 0x3ff,
        .post_write = cfu_isr_postw,
    },{ .name = "CFU_IMR",  .addr = A_CFU_IMR,
        .reset = 0x3ff,
        .rsvd = 0xfffffc00,
        .ro = 0x3ff,
    },{ .name = "CFU_IER",  .addr = A_CFU_IER,
        .rsvd = 0xfffffc00,
        .pre_write = cfu_ier_prew,
    },{ .name = "CFU_IDR",  .addr = A_CFU_IDR,
        .rsvd = 0xfffffc00,
        .pre_write = cfu_idr_prew,
    },{ .name = "CFU_ITR",  .addr = A_CFU_ITR,
        .rsvd = 0xfffffc00,
        .pre_write = cfu_itr_prew,
    },{ .name = "CFU_PROTECT",  .addr = A_CFU_PROTECT,
        .reset = 0x1,
    },{ .name = "CFU_FGCR",  .addr = A_CFU_FGCR,
        .rsvd = 0xffff8000,
        .post_write = cfu_fgcr_postw,
    },{ .name = "CFU_CTL",  .addr = A_CFU_CTL,
        .rsvd = 0xffff0000,
    },{ .name = "CFU_CRAM_RW",  .addr = A_CFU_CRAM_RW,
        .reset = 0x401f7d9,
        .rsvd = 0xf8000000,
    },{ .name = "CFU_MASK",  .addr = A_CFU_MASK,
    },{ .name = "CFU_CRC_EXPECT",  .addr = A_CFU_CRC_EXPECT,
    },{ .name = "CFU_CFRAME_LEFT_T0",  .addr = A_CFU_CFRAME_LEFT_T0,
        .rsvd = 0xfff00000,
    },{ .name = "CFU_CFRAME_LEFT_T1",  .addr = A_CFU_CFRAME_LEFT_T1,
        .rsvd = 0xfff00000,
    },{ .name = "CFU_CFRAME_LEFT_T2",  .addr = A_CFU_CFRAME_LEFT_T2,
        .rsvd = 0xfff00000,
    },{ .name = "CFU_ROW_RANGE",  .addr = A_CFU_ROW_RANGE,
        .rsvd = 0xffffffc0,
        .ro = 0x3f,
    },{ .name = "CFU_STATUS",  .addr = A_CFU_STATUS,
        .rsvd = 0x80000000,
        .ro = 0x7fffffff,
    },{ .name = "CFU_INTERNAL_STATUS",  .addr = A_CFU_INTERNAL_STATUS,
        .rsvd = 0xff800000,
        .ro = 0x7fffff,
    },{ .name = "CFU_QWORD_CNT",  .addr = A_CFU_QWORD_CNT,
        .ro = 0xffffffff,
    },{ .name = "CFU_CRC_LIVE",  .addr = A_CFU_CRC_LIVE,
        .ro = 0xffffffff,
    },{ .name = "CFU_PENDING_READ_CNT",  .addr = A_CFU_PENDING_READ_CNT,
        .rsvd = 0xfe000000,
        .ro = 0x1ffffff,
    },{ .name = "CFU_FDRI_CNT",  .addr = A_CFU_FDRI_CNT,
        .ro = 0xffffffff,
    },{ .name = "CFU_ECO1",  .addr = A_CFU_ECO1,
    },{ .name = "CFU_ECO2",  .addr = A_CFU_ECO2,
    }
};

static void cfu_apb_reset(DeviceState *dev)
{
    CFU *s = XILINX_CFU_APB(dev);
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(s->regs_info); ++i) {
        register_reset(&s->regs_info[i]);
    }

    s->regs[R_CFU_STATUS] |= R_CFU_STATUS_HC_COMPLETE_MASK;
    cfu_imr_update_irq(s);
}

static const MemoryRegionOps cfu_apb_ops = {
    .read = register_read_memory,
    .write_with_attrs = register_write_memory_with_attrs,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static void cfu_transfer_cfi_packet(CFU *s, uint8_t row_addr,
                                    XlnxCfiPacket *pkt)
{
    if (row_addr == CFRAME_BROADCAST_ROW) {
        for (int i = 0; i < ARRAY_SIZE(s->cfg.cframe); i++) {
            if (s->cfg.cframe[i]) {
                xlnx_cfi_transfer_packet(s->cfg.cframe[i], pkt);
            }
        }
    } else {
            assert(row_addr < ARRAY_SIZE(s->cfg.cframe));

            if (s->cfg.cframe[row_addr]) {
                xlnx_cfi_transfer_packet(s->cfg.cframe[row_addr], pkt);
            }
    }
}

static uint64_t cfu_stream_read(void *opaque, hwaddr addr, unsigned size)
{
    qemu_log_mask(LOG_GUEST_ERROR, "%s: Unsupported read from addr=%"
                  HWADDR_PRIx "\n", __func__, addr);
    return 0;
}

static void cfu_stream_write(void *opaque, hwaddr addr, uint64_t value,
                      unsigned size)
{
    CFU *s = XILINX_CFU_APB(opaque);
    unsigned int idx;

    /* 4 32bit words.  */
    idx = (addr >> 2) & 3;

    s->wfifo[idx] = value;

    /* Writing to the top word triggers the transmit onto CFI.  */
    if (idx == 3) {
        uint8_t packet_type, row_addr, reg_addr, crc8;
        int i;

        if (qemu_chr_fe_get_driver(&s->chr)) {
            for (i = idx; i >= 0; i--) {
                qemu_chr_fe_printf(&s->chr, "%08x", (unsigned int)s->wfifo[i]);
            }
            qemu_chr_fe_printf(&s->chr, "\n");
        }

        packet_type = extract32(s->wfifo[0], 24, 8);
        row_addr = extract32(s->wfifo[0], 16, 5);
        reg_addr = extract32(s->wfifo[0], 8, 6);
        crc8 = extract32(s->wfifo[0], 0, 8);
        DPRINT("CFU: pt=%x row=%x reg=%x crc8=%x\n",
                 packet_type, row_addr, reg_addr, crc8);

        /* Compressed bitstreams are not supported yet. */
        if (ARRAY_FIELD_EX32(s->regs, CFU_CTL, DECOMPRESS) == 0) {
            if (s->regs[R_CFU_FDRI_CNT]) {
                XlnxCfiPacket pkt = {
                    .reg_addr = CFRAME_FDRI,
                    .data[0] = s->wfifo[0],
                    .data[1] = s->wfifo[1],
                    .data[2] = s->wfifo[2],
                    .data[3] = s->wfifo[3]
                };

                cfu_transfer_cfi_packet(s, s->fdri_row_addr, &pkt);

                s->regs[R_CFU_FDRI_CNT]--;

            } else if (packet_type == PACKET_TYPE_CFU &&
                       reg_addr == CFRAME_FDRI) {

                /* Load R_CFU_FDRI_CNT, must be multiple of 25 */
                s->regs[R_CFU_FDRI_CNT] = s->wfifo[1];

                /* Store target row_addr */
                s->fdri_row_addr = row_addr;

                if (s->wfifo[1] % 25 != 0) {
                    qemu_log_mask(LOG_GUEST_ERROR,
                                  "CFU FDRI_CNT is not loaded with "
                                  "a multiple of 25 value\n");
                }

            } else if (packet_type == PACKET_TYPE_CFRAME) {
                XlnxCfiPacket pkt = {
                    .reg_addr = reg_addr,
                    .data[0] = s->wfifo[1],
                    .data[1] = s->wfifo[2],
                    .data[2] = s->wfifo[3],
                };
                cfu_transfer_cfi_packet(s, row_addr, &pkt);
            }
        }

        for (i = 0; i < ARRAY_SIZE(s->wfifo); i++) {
            s->wfifo[i] = 0;
        }
    }
}

static uint64_t cfu_apb_sfr_read(void *opaque, hwaddr addr, unsigned size)
{
    qemu_log_mask(LOG_GUEST_ERROR, "%s: Unsupported read from addr=%"
                  HWADDR_PRIx "\n", __func__, addr);
    return 0;
}

static void cfu_apb_sfr_write(void *opaque, hwaddr addr, uint64_t value,
                      unsigned size)
{
    CFU *s = XILINX_CFU_APB(opaque);
    unsigned int idx;

    /* 4 32bit words. */
    idx = (addr >> 2) & 3;

    s->wfifo[idx] = value;

    /* Writing to the top word triggers the transmit onto CFI. */
    if (idx == 3) {
        uint8_t row_addr = extract32(s->wfifo[0], 23, 5);
        uint32_t frame_addr = extract32(s->wfifo[0], 0, 23);
        XlnxCfiPacket pkt = { .reg_addr = CFRAME_SFR,
                              .data[0] = frame_addr };

        cfu_transfer_cfi_packet(s, row_addr, &pkt);

        for (int i = 0; i < ARRAY_SIZE(s->wfifo); i++) {
            s->wfifo[i] = 0;
        }
    }
}

static uint64_t cfu_sfr_read(void *opaque, hwaddr addr, unsigned size)
{
    qemu_log_mask(LOG_GUEST_ERROR, "%s: Unsupported read from addr=%"
                  HWADDR_PRIx "\n", __func__, addr);
    return 0;
}

static void cfu_sfr_write(void *opaque, hwaddr addr, uint64_t value,
                      unsigned size)
{
    CFU_SFR *s = XILINX_CFU_SFR(opaque);
    unsigned int idx;

    /* 4 32bit words. */
    idx = (addr >> 2) & 3;

    s->wfifo[idx] = value;

    /* Writing to the top word triggers the transmit onto CFI. */
    if (idx == 3) {
        uint8_t row_addr = extract32(s->wfifo[0], 23, 5);
        uint32_t frame_addr = extract32(s->wfifo[0], 0, 23);
        XlnxCfiPacket pkt = { .reg_addr = CFRAME_SFR,
                              .data[0] = frame_addr };

        if (s->cfg.cfu) {
            cfu_transfer_cfi_packet(s->cfg.cfu, row_addr, &pkt);
        }

        for (int i = 0; i < ARRAY_SIZE(s->wfifo); i++) {
            s->wfifo[i] = 0;
        }
    }
}

static uint64_t cfu_apb_fdro_read(void *opaque, hwaddr addr, unsigned size)
{
    CFU *s = XILINX_CFU_APB(opaque);
    uint64_t ret = 0;

    if (s->fdro_data->len) {
        ret = g_array_index(s->fdro_data, uint32_t, 0);
        g_array_remove_index(s->fdro_data, 0);
    }

    return ret;
}

static void cfu_apb_fdro_write(void *opaque, hwaddr addr, uint64_t value,
                      unsigned size)
{
    qemu_log_mask(LOG_GUEST_ERROR, "%s: Unsupported write from addr=%"
                  HWADDR_PRIx "\n", __func__, addr);
}

static uint64_t cfu_fdro_read(void *opaque, hwaddr addr, unsigned size)
{
    CFU_FDRO *s = XILINX_CFU_FDRO(opaque);
    uint64_t ret = 0;

    if (s->fdro_data->len) {
        ret = g_array_index(s->fdro_data, uint32_t, 0);
        g_array_remove_index(s->fdro_data, 0);
    }

    return ret;
}

static void cfu_fdro_write(void *opaque, hwaddr addr, uint64_t value,
                           unsigned size)
{
    qemu_log_mask(LOG_GUEST_ERROR, "%s: Unsupported write from addr=%"
                  HWADDR_PRIx "\n", __func__, addr);
}

static const MemoryRegionOps cfu_stream_ops = {
    .read = cfu_stream_read,
    .write = cfu_stream_write,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 8,
    },
};

static const MemoryRegionOps cfu_apb_sfr_ops = {
    .read = cfu_apb_sfr_read,
    .write = cfu_apb_sfr_write,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static const MemoryRegionOps cfu_apb_fdro_ops = {
    .read = cfu_apb_fdro_read,
    .write = cfu_apb_fdro_write,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static const MemoryRegionOps cfu_sfr_ops = {
    .read = cfu_sfr_read,
    .write = cfu_sfr_write,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static const MemoryRegionOps cfu_fdro_ops = {
    .read = cfu_fdro_read,
    .write = cfu_fdro_write,
    .endianness = DEVICE_LITTLE_ENDIAN,
    .valid = {
        .min_access_size = 4,
        .max_access_size = 4,
    },
};

static void cfu_apb_realize(DeviceState *dev, Error **errp)
{
    CFU *s = XILINX_CFU_APB(dev);

    if (!qemu_chr_fe_get_driver(&s->chr)) {
        DPRINT("CFU Debug socket not connected\n");
    }
}

static void cfu_apb_init(Object *obj)
{
    CFU *s = XILINX_CFU_APB(obj);
    SysBusDevice *sbd = SYS_BUS_DEVICE(obj);
    RegisterInfoArray *reg_array;
    unsigned int i;
    char *name;

    memory_region_init(&s->iomem, obj, TYPE_XILINX_CFU_APB, R_MAX * 4);
    reg_array =
        register_init_block32(DEVICE(obj), cfu_apb_regs_info,
                              ARRAY_SIZE(cfu_apb_regs_info),
                              s->regs_info, s->regs,
                              &cfu_apb_ops,
                              XILINX_CFU_APB_ERR_DEBUG,
                              R_MAX * 4);
    memory_region_add_subregion(&s->iomem,
                                0x0,
                                &reg_array->mem);
    sysbus_init_mmio(sbd, &s->iomem);
    for (i = 0; i < NUM_STREAM; i++) {
        name = g_strdup_printf(TYPE_XILINX_CFU_APB "-stream%d", i);
        memory_region_init_io(&s->iomem_stream[i], obj, &cfu_stream_ops, s,
                          name, i == 0 ? KEYHOLE_STREAM_4K :
                                         KEYHOLE_STREAM_256K);
        sysbus_init_mmio(sbd, &s->iomem_stream[i]);
        g_free(name);
    }
    sysbus_init_irq(sbd, &s->irq_cfu_imr);
    memory_region_init_io(&s->iomem_sfr, obj, &cfu_apb_sfr_ops, s,
                          TYPE_XILINX_CFU_APB "-sfr", KEYHOLE_STREAM_4K);
    sysbus_init_mmio(sbd, &s->iomem_sfr);
    memory_region_init_io(&s->iomem_fdro, obj, &cfu_apb_fdro_ops, s,
                          TYPE_XILINX_CFU_APB "-fdro", KEYHOLE_STREAM_4K);
    sysbus_init_mmio(sbd, &s->iomem_fdro);
    s->fdro_data = g_array_new(FALSE, FALSE, sizeof(uint32_t));
}

static void cfu_sfr_init(Object *obj)
{
    CFU_SFR *s = XILINX_CFU_SFR(obj);
    SysBusDevice *sbd = SYS_BUS_DEVICE(obj);

    memory_region_init_io(&s->iomem_sfr, obj, &cfu_sfr_ops, s,
                          TYPE_XILINX_CFU_SFR, KEYHOLE_STREAM_4K);
    sysbus_init_mmio(sbd, &s->iomem_sfr);
}

static void cfu_fdro_init(Object *obj)
{
    CFU_FDRO *s = XILINX_CFU_FDRO(obj);
    SysBusDevice *sbd = SYS_BUS_DEVICE(obj);

    memory_region_init_io(&s->iomem_fdro, obj, &cfu_fdro_ops, s,
                          TYPE_XILINX_CFU_FDRO, KEYHOLE_STREAM_4K);
    sysbus_init_mmio(sbd, &s->iomem_fdro);
    s->fdro_data = g_array_new(FALSE, FALSE, sizeof(uint32_t));
}

static void cfu_apb_cfi_transfer_packet(XlnxCfiIf *cfi_if, XlnxCfiPacket *pkt)
{
    CFU *s = XILINX_CFU_APB(cfi_if);

    g_array_append_vals(s->fdro_data, &pkt->data[0], 4);
}

static void cfu_fdro_cfi_transfer_packet(XlnxCfiIf *cfi_if, XlnxCfiPacket *pkt)
{
    CFU_FDRO *s = XILINX_CFU_FDRO(cfi_if);

    g_array_append_vals(s->fdro_data, &pkt->data[0], 4);
}

static Property cfu_props[] = {
        DEFINE_PROP_CHR("chardev", CFU, chr),
        DEFINE_PROP_LINK("cframe0", CFU, cfg.cframe[0],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe1", CFU, cfg.cframe[1],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe2", CFU, cfg.cframe[2],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe3", CFU, cfg.cframe[3],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe4", CFU, cfg.cframe[4],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe5", CFU, cfg.cframe[5],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe6", CFU, cfg.cframe[6],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe7", CFU, cfg.cframe[7],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe8", CFU, cfg.cframe[8],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe9", CFU, cfg.cframe[9],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe10", CFU, cfg.cframe[10],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe11", CFU, cfg.cframe[11],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe12", CFU, cfg.cframe[12],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe13", CFU, cfg.cframe[13],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_LINK("cframe14", CFU, cfg.cframe[14],
                         TYPE_XLNX_CFI_IF, XlnxCfiIf *),
        DEFINE_PROP_END_OF_LIST(),
};

static Property cfu_sfr_props[] = {
        DEFINE_PROP_LINK("cfu", CFU_SFR, cfg.cfu, TYPE_XILINX_CFU_APB, CFU *),
        DEFINE_PROP_END_OF_LIST(),
};

static const VMStateDescription vmstate_cfu_apb = {
    .name = TYPE_XILINX_CFU_APB,
    .version_id = 1,
    .minimum_version_id = 1,
    .minimum_version_id_old = 1,
    .fields = (VMStateField[]) {
        VMSTATE_UINT32_ARRAY(regs, CFU, R_MAX),
        VMSTATE_END_OF_LIST(),
    }
};

static void cfu_apb_class_init(ObjectClass *klass, void *data)
{
    DeviceClass *dc = DEVICE_CLASS(klass);
    XlnxCfiIfClass *xcic = XLNX_CFI_IF_CLASS(klass);

    dc->reset = cfu_apb_reset;
    dc->vmsd = &vmstate_cfu_apb;
    dc->realize = cfu_apb_realize;
    device_class_set_props(dc, cfu_props);
    xcic->cfi_transfer_packet = cfu_apb_cfi_transfer_packet;
}

static void cfu_fdro_class_init(ObjectClass *klass, void *data)
{
    XlnxCfiIfClass *xcic = XLNX_CFI_IF_CLASS(klass);

    xcic->cfi_transfer_packet = cfu_fdro_cfi_transfer_packet;
}

static void cfu_sfr_class_init(ObjectClass *klass, void *data)
{
    DeviceClass *dc = DEVICE_CLASS(klass);

    device_class_set_props(dc, cfu_sfr_props);
}

static const TypeInfo cfu_apb_info = {
    .name          = TYPE_XILINX_CFU_APB,
    .parent        = TYPE_SYS_BUS_DEVICE,
    .instance_size = sizeof(CFU),
    .class_init    = cfu_apb_class_init,
    .instance_init = cfu_apb_init,
    .interfaces = (InterfaceInfo[]) {
        { TYPE_XLNX_CFI_IF },
        { }
    }
};

static const TypeInfo cfu_fdro_info = {
    .name          = TYPE_XILINX_CFU_FDRO,
    .parent        = TYPE_SYS_BUS_DEVICE,
    .instance_size = sizeof(CFU_FDRO),
    .class_init    = cfu_fdro_class_init,
    .instance_init = cfu_fdro_init,
    .interfaces = (InterfaceInfo[]) {
        { TYPE_XLNX_CFI_IF },
        { }
    }
};

static const TypeInfo cfu_sfr_info = {
    .name          = TYPE_XILINX_CFU_SFR,
    .parent        = TYPE_SYS_BUS_DEVICE,
    .instance_size = sizeof(CFU_SFR),
    .class_init    = cfu_sfr_class_init,
    .instance_init = cfu_sfr_init,
};

static void cfu_apb_register_types(void)
{
    type_register_static(&cfu_apb_info);
    type_register_static(&cfu_fdro_info);
    type_register_static(&cfu_sfr_info);
}

type_init(cfu_apb_register_types)