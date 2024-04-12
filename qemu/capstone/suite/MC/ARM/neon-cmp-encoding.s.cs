# CS_ARCH_ARM, CS_MODE_ARM, None
0xb1,0x08,0x40,0xf3 = vceq.i8 d16, d16, d17
0xb1,0x08,0x50,0xf3 = vceq.i16 d16, d16, d17
0xb1,0x08,0x60,0xf3 = vceq.i32 d16, d16, d17
0xa1,0x0e,0x40,0xf2 = vceq.f32 d16, d16, d17
0xf2,0x08,0x40,0xf3 = vceq.i8 q8, q8, q9
0xf2,0x08,0x50,0xf3 = vceq.i16 q8, q8, q9
0xf2,0x08,0x60,0xf3 = vceq.i32 q8, q8, q9
0xe2,0x0e,0x40,0xf2 = vceq.f32 q8, q8, q9
0xb1,0x03,0x40,0xf2 = vcge.s8 d16, d16, d17
0xb1,0x03,0x50,0xf2 = vcge.s16 d16, d16, d17
0xb1,0x03,0x60,0xf2 = vcge.s32 d16, d16, d17
0xb1,0x03,0x40,0xf3 = vcge.u8 d16, d16, d17
0xb1,0x03,0x50,0xf3 = vcge.u16 d16, d16, d17
0xb1,0x03,0x60,0xf3 = vcge.u32 d16, d16, d17
0xa1,0x0e,0x40,0xf3 = vcge.f32 d16, d16, d17
0xf2,0x03,0x40,0xf2 = vcge.s8 q8, q8, q9
0xf2,0x03,0x50,0xf2 = vcge.s16 q8, q8, q9
0xf2,0x03,0x60,0xf2 = vcge.s32 q8, q8, q9
0xf2,0x03,0x40,0xf3 = vcge.u8 q8, q8, q9
0xf2,0x03,0x50,0xf3 = vcge.u16 q8, q8, q9
0xf2,0x03,0x60,0xf3 = vcge.u32 q8, q8, q9
0xe2,0x0e,0x40,0xf3 = vcge.f32 q8, q8, q9
0xb1,0x0e,0x40,0xf3 = vacge.f32 d16, d16, d17
0xf2,0x0e,0x40,0xf3 = vacge.f32 q8, q8, q9
0xa1,0x03,0x40,0xf2 = vcgt.s8 d16, d16, d17
0xa1,0x03,0x50,0xf2 = vcgt.s16 d16, d16, d17
0xa1,0x03,0x60,0xf2 = vcgt.s32 d16, d16, d17
0xa1,0x03,0x40,0xf3 = vcgt.u8 d16, d16, d17
0xa1,0x03,0x50,0xf3 = vcgt.u16 d16, d16, d17
0xa1,0x03,0x60,0xf3 = vcgt.u32 d16, d16, d17
0xa1,0x0e,0x60,0xf3 = vcgt.f32 d16, d16, d17
0xe2,0x03,0x40,0xf2 = vcgt.s8 q8, q8, q9
0xe2,0x03,0x50,0xf2 = vcgt.s16 q8, q8, q9
0xe2,0x03,0x60,0xf2 = vcgt.s32 q8, q8, q9
0xe2,0x03,0x40,0xf3 = vcgt.u8 q8, q8, q9
0xe2,0x03,0x50,0xf3 = vcgt.u16 q8, q8, q9
0xe2,0x03,0x60,0xf3 = vcgt.u32 q8, q8, q9
0xe2,0x0e,0x60,0xf3 = vcgt.f32 q8, q8, q9
0xb1,0x0e,0x60,0xf3 = vacgt.f32 d16, d16, d17
0xf2,0x0e,0x60,0xf3 = vacgt.f32 q8, q8, q9
0xb1,0x08,0x40,0xf2 = vtst.8 d16, d16, d17
0xb1,0x08,0x50,0xf2 = vtst.16 d16, d16, d17
0xb1,0x08,0x60,0xf2 = vtst.32 d16, d16, d17
0xf2,0x08,0x40,0xf2 = vtst.8 q8, q8, q9
0xf2,0x08,0x50,0xf2 = vtst.16 q8, q8, q9
0xf2,0x08,0x60,0xf2 = vtst.32 q8, q8, q9
0x20,0x01,0xf1,0xf3 = vceq.i8 d16, d16, #0
0xa0,0x00,0xf1,0xf3 = vcge.s8 d16, d16, #0
0xa0,0x01,0xf1,0xf3 = vcle.s8 d16, d16, #0
0x20,0x00,0xf1,0xf3 = vcgt.s8 d16, d16, #0
0x20,0x02,0xf1,0xf3 = vclt.s8 d16, d16, #0
0x6a,0x83,0x46,0xf2 = vcgt.s8 q12, q3, q13
0x6a,0x83,0x56,0xf2 = vcgt.s16 q12, q3, q13
0x6a,0x83,0x66,0xf2 = vcgt.s32 q12, q3, q13
0x6a,0x83,0x46,0xf3 = vcgt.u8 q12, q3, q13
0x6a,0x83,0x56,0xf3 = vcgt.u16 q12, q3, q13
0x6a,0x83,0x66,0xf3 = vcgt.u32 q12, q3, q13
0x6a,0x8e,0x66,0xf3 = vcgt.f32 q12, q3, q13
0x0d,0xc3,0x03,0xf2 = vcgt.s8 d12, d3, d13
0x0d,0xc3,0x13,0xf2 = vcgt.s16 d12, d3, d13
0x0d,0xc3,0x23,0xf2 = vcgt.s32 d12, d3, d13
0x0d,0xc3,0x03,0xf3 = vcgt.u8 d12, d3, d13
0x0d,0xc3,0x13,0xf3 = vcgt.u16 d12, d3, d13
0x0d,0xc3,0x23,0xf3 = vcgt.u32 d12, d3, d13
0x0d,0xce,0x23,0xf3 = vcgt.f32 d12, d3, d13
0xb0,0x03,0x41,0xf2 = vcge.s8 d16, d17, d16
0xb0,0x03,0x51,0xf2 = vcge.s16 d16, d17, d16
0xb0,0x03,0x61,0xf2 = vcge.s32 d16, d17, d16
0xb0,0x03,0x41,0xf3 = vcge.u8 d16, d17, d16
0xb0,0x03,0x51,0xf3 = vcge.u16 d16, d17, d16
0xb0,0x03,0x61,0xf3 = vcge.u32 d16, d17, d16
0xa0,0x0e,0x41,0xf3 = vcge.f32 d16, d17, d16
0xf0,0x03,0x42,0xf2 = vcge.s8 q8, q9, q8
0xf0,0x03,0x52,0xf2 = vcge.s16 q8, q9, q8
0xf0,0x03,0x62,0xf2 = vcge.s32 q8, q9, q8
0xf0,0x03,0x42,0xf3 = vcge.u8 q8, q9, q8
0xf0,0x03,0x52,0xf3 = vcge.u16 q8, q9, q8
0xf0,0x03,0x62,0xf3 = vcge.u32 q8, q9, q8
0xe0,0x0e,0x42,0xf3 = vcge.f32 q8, q9, q8
0xf6,0x2e,0x68,0xf3 = vacgt.f32 q9, q12, q11
0x1b,0x9e,0x2c,0xf3 = vacgt.f32 d9, d12, d11
0xf6,0x6e,0x68,0xf3 = vacgt.f32 q11, q12, q11
0x1b,0xbe,0x2c,0xf3 = vacgt.f32 d11, d12, d11
0xf6,0x2e,0x48,0xf3 = vacge.f32 q9, q12, q11
0x1b,0x9e,0x0c,0xf3 = vacge.f32 d9, d12, d11
0xf6,0x6e,0x48,0xf3 = vacge.f32 q11, q12, q11
0x1b,0xbe,0x0c,0xf3 = vacge.f32 d11, d12, d11
