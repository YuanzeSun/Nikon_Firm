104a7800: mov.w    r1, #0x20000
104a7804: mov      r2, sp
104a7806: adds     r0, #0x10
104a7808: bl       #0x1035d382
104a780c: ldr      r0, [sp]
104a780e: and      r1, r0, #0x20000
104a7812: ldr      r0, [pc, #0x1d4]
104a7814: adds     r0, #0x10
104a7816: bl       #0x1035d37a
104a781a: ldr      r0, [pc, #0x1cc]
104a781c: adds     r0, #0x58
104a781e: ldr      r0, [r0, #4]
104a7820: cbz      r0, #0x104a7836
104a7822: cmp      r0, #3
104a7824: beq      #0x104a7836
104a7826: cmp      r0, #5
104a7828: beq      #0x104a7836
104a782a: cmp      r0, #6
104a782c: beq      #0x104a7836
104a782e: cmp      r0, #7
104a7830: beq      #0x104a7836
104a7832: movs     r0, #1
104a7834: str      r0, [r5, #0x18]
104a7836: str.w    r4, [sl]
104a783a: pop.w    {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
104a783e: push     {r0, r1, r2, r3, r4, r5, r6, lr}
104a7840: ldr      r4, [pc, #0x1ac]
104a7842: movs     r0, #0
104a7844: str      r0, [sp]
104a7846: ldr      r0, [r4, #0x50]
104a7848: add.w    r0, r4, r0, lsl #1
104a784c: ldrsh.w  r0, [r0, #0x54]
104a7850: bl       #0x104c0f58
104a7854: movw     r5, #0x1000
104a7858: cbnz     r0, #0x104a787c
104a785a: ldr      r0, [pc, #0x18c]
104a785c: lsls     r1, r5, #5
104a785e: mov      r2, sp
104a7860: adds     r0, #0x10
104a7862: bl       #0x1035d382
104a7866: ldr      r0, [sp]
104a7868: and      r1, r0, #0x20000
104a786c: ldr      r0, [pc, #0x178]
104a786e: adds     r0, #0x10
104a7870: bl       #0x1035d37a
104a7874: ldr      r0, [pc, #0x170]
104a7876: adds     r0, #0x58
104a7878: ldr      r0, [r0, #4]
104a787a: cbz      r0, #0x104a788c
104a787c: cmp      r0, #3
104a787e: beq      #0x104a788c
104a7880: cmp      r0, #5
104a7882: beq      #0x104a788c
104a7884: cmp      r0, #6
104a7886: beq      #0x104a788c
104a7888: cmp      r0, #7
104a788a: bne      #0x104a78da
104a788c: ldr      r1, [pc, #0x160]
104a788e: movs     r0, #1
104a7890: ldr      r2, [pc, #0x160]
104a7892: subs     r1, #0x20
104a7894: adds     r2, #0x48
104a7896: str      r0, [r1, #0x1c]
104a7898: ldr      r0, [r4, #0x50]
104a789a: ldr      r1, [r4]
104a789c: add.w    r0, r2, r0, lsl #2
104a78a0: ldr      r0, [r0, #0x20]
104a78a2: str      r1, [sp, #4]
104a78a4: ldr      r1, [r4, #4]
104a78a6: str      r1, [sp, #8]
104a78a8: ldr      r1, [r4, #0xc]
104a78aa: str      r1, [sp, #0xc]
104a78ac: add      r1, sp, #4
104a78ae: ldr      r2, [r4, #0x14]
104a78b0: bl       #0x104c0f5c
104a78b4: cbnz     r0, #0x104a78da
104a78b6: ldr      r0, [pc, #0x130]
104a78b8: mov.w    r1, #0x40000
104a78bc: mov      r2, sp
104a78be: adds     r0, #0x10
104a78c0: bl       #0x1035d382
104a78c4: ldr      r0, [sp]
104a78c6: and      r1, r0, #0x40000
104a78ca: ldr      r0, [pc, #0x11c]
104a78cc: adds     r0, #0x10
104a78ce: bl       #0x1035d37a
104a78d2: ldr      r1, [pc, #0x114]
104a78d4: adds     r1, #0x60
104a78d6: ldr      r0, [r1, #4]
104a78d8: cbz      r0, #0x104a78e4
104a78da: ldr      r0, [pc, #0x108]
104a78dc: mov      r1, r5
104a78de: bl       #0x1035c98c
104a78e2: pop      {r0, r1, r2, r3, r4, r5, r6, pc}
104a78e4: ldr      r0, [r4, #0x50]
104a78e6: movs     r3, #0
104a78e8: mov.w    r2, #0x3200000
104a78ec: adds     r0, r0, #1
104a78ee: str      r0, [r4, #0x50]
104a78f0: ldrh     r1, [r1]
104a78f2: add.w    r0, r4, r0, lsl #1
104a78f6: strh.w   r1, [r0, #0x54]
104a78fa: ldr      r0, [r4, #0x50]
104a78fc: add.w    r0, r4, r0, lsl #3
104a7900: strd     r2, r3, [r0, #0xb0]
104a7904: pop      {r0, r1, r2, r3, r4, r5, r6, pc}
104a7906: push.w   {r4, r5, r6, r7, r8, lr}
104a790a: mov      r4, r0
104a790c: ldr      r0, [pc, #0xe0]
104a790e: ldr      r2, [pc, #0xe0]
104a7910: subs     r0, #0x40
104a7912: ldr      r1, [r0, #8]
104a7914: ldr.w    r3, [r2, #0xa4]
104a7918: ldrh     r6, [r0, #0x12]
104a791a: sub.w    r5, r1, #0x300
104a791e: ldr      r2, [r0, #4]
104a7920: subs     r5, #0xe9
104a7922: beq      #0x104a7954
104a7924: movw     r5, #0x5a00
104a7928: udiv     r0, r3, r6
104a792c: mls      r6, r6, r0, r3
104a7930: cbz      r6, #0x104a795a
104a7932: umull    r3, r1, r3, r1
104a7936: movw     r6, #0xbb80
104a793a: movs     r5, #0
104a793c: umull    r0, r7, r3, r6
104a7940: mla      r1, r1, r6, r7
104a7944: mla      r1, r3, r5, r1
104a7948: mov      r3, r5
104a794a: blx      #0x10439580
104a794e: str      r0, [r4]
104a7950: pop.w    {r4, r5, r6, r7, r8, pc}
104a7954: movw     r5, #0x5dd8
104a7958: b        #0x104a7928
104a795a: muls     r0, r5, r0
104a795c: b        #0x104a794e
104a795e: push.w   {r4, r5, r6, r7, r8, sb, sl, lr}
104a7962: ldr      r5, [pc, #0x8c]
104a7964: sub      sp, #0x88
104a7966: movs     r6, #0
104a7968: str      r6, [sp, #0x70]
104a796a: ldr.w    r0, [r5, #0x90]
104a796e: cmp      r0, #0
104a7970: beq      #0x104a7a58
104a7972: movs     r1, #0
104a7974: add      r2, sp, #0x84
104a7976: sub.w    r0, r5, #0xf4
104a797a: bl       #0x10553a00
104a797e: cmp      r0, #0
104a7980: beq      #0x104a7a58
104a7982: ldr      r1, [sp, #0x84]
104a7984: movs     r2, #0x70
104a7986: mov      r0, sp
104a7988: blx      #0x1035d1ec
104a798c: movs     r2, #1
104a798e: movs     r1, #0
104a7990: sub.w    r0, r5, #0xf4
104a7994: bl       #0x105539b2
104a7998: sub.w    r0, r5, #0xd0
104a799c: mov.w    sb, #1
104a79a0: str.w    sb, [r5, #0x9c]
104a79a4: movw     sl, #0x1000
104a79a8: ldrb.w   r0, [r0, #0x69]
104a79ac: cmp      r0, #1
104a79ae: beq      #0x104a79fc
104a79b0: cmp      r0, #2
104a79b2: bne      #0x104a7a58
104a79b4: ldrd     r7, r4, [sp, #8]
104a79b8: add      r0, sp, #0x70
104a79ba: bl       #0x104a7906
104a79be: ldr      r0, [sp, #0x70]
104a79c0: ldr.w    r1, [r5, #0xa8]
104a79c4: add.w    r2, r1, r4, lsl #10
104a79c8: cmp      r2, r0
104a79ca: bls      #0x104a79d2
104a79cc: cbz      r4, #0x104a79d2
104a79ce: subs     r4, r4, #1
104a79d0: bne      #0x104a79c4
104a79d2: ldr      r0, [sp, #0xc]
104a79d4: cmp      r0, r4
104a79d6: bls      #0x104a7a80
104a79d8: ldr.w    r8, [pc, #0xc]
104a79dc: ldr.w    r0, [r8, #0x30]
104a79e0: cmp      r0, #1
104a79e2: b        #0x104a79f8
104a79e4: str      r2, [sp, #0x120]
104a79e6: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a79e8: asrs     r0, r5, #0x1e
104a79ea: stm      r1!, {r0, r7}
104a79ec: ldr      r2, [sp, #0x2c0]
104a79ee: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a79f0: ldr      r1, [sp, #0x260]
104a79f2: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a79f4: ldr      r0, [sp, #0x200]
104a79f6: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a79f8: beq      #0x104a7a74
104a79fa: b        #0x104a7a7c
104a79fc: ldrd     r7, r4, [sp]
104a7a00: add      r0, sp, #0x70
104a7a02: bl       #0x104a7906
104a7a06: ldr.w    r1, [r5, #0xa8]
104a7a0a: ldr      r0, [sp, #0x70]
104a7a0c: add.w    r2, r1, r4, lsr #2
104a7a10: cmp      r2, r0
104a7a12: bls      #0x104a7a20
104a7a14: cmp      r1, r0
104a7a16: bhs      #0x104a7a5a
104a7a18: subs     r0, r0, r1
104a7a1a: lsls     r0, r0, #2
104a7a1c: bic      r4, r0, #0x1f
104a7a20: cmp      r4, #0x20
104a7a22: blo      #0x104a7a5a
104a7a24: lsrs     r0, r4, #2
104a7a26: movs     r1, #4
104a7a28: strd     r6, r0, [sp, #0x7c]
104a7a2c: strd     r7, r1, [sp, #0x74]
104a7a30: ldr      r0, [r5, #0x50]
104a7a32: add      r1, sp, #0x74
104a7a34: add.w    r0, r5, r0, lsl #1
104a7a38: ldrsh.w  r0, [r0, #0x54]
104a7a3c: bl       #0x104c0f54
104a7a40: cbz      r0, #0x104a7a4a
104a7a42: ldr      r0, [pc, #0x3e0]
104a7a44: mov      r1, sl
104a7a46: bl       #0x1035c98c
104a7a4a: ldr.w    r0, [r5, #0xa8]
104a7a4e: add.w    r0, r0, r4, lsr #2
104a7a52: str.w    r0, [r5, #0xa8]
104a7a56: b        #0x104a7a66
104a7a58: b        #0x104a7af6
104a7a5a: movs     r4, #0
104a7a5c: movs     r0, #1
104a7a5e: bl       #0x104a8a5e
104a7a62: str.w    r6, [r5, #0x9c]
104a7a66: ldr      r0, [r5, #0x50]
104a7a68: add.w    r1, r5, r0, lsl #3
104a7a6c: ldrd     r2, r0, [r1, #0xb0]!
104a7a70: adds     r2, r2, r4
104a7a72: b        #0x104a7af0
104a7a74: ldr      r0, [pc, #0x3ac]
104a7a76: mov      r1, sl
104a7a78: bl       #0x1035c98c
104a7a7c: str.w    sb, [r8, #0x30]
104a7a80: cbz      r4, #0x104a7ad8
104a7a82: strd     r7, r6, [sp, #0x74]
104a7a86: ldr      r0, [pc, #0x3a0]
104a7a88: movs     r1, #0x60
104a7a8a: strd     r6, r4, [sp, #0x7c]
104a7a8e: bl       #0x1035d2dc
104a7a92: movs     r7, #0
104a7a94: ldr      r1, [pc, #0x390]
104a7a96: mov      r0, r7
104a7a98: mov      r3, sp
104a7a9a: b        #0x104a7aaa
104a7a9c: add.w    r2, r3, r0, lsl #2
104a7aa0: ldr      r2, [r2, #0x10]
104a7aa2: str.w    r2, [r1, r0, lsl #2]
104a7aa6: adds     r0, r0, #1
104a7aa8: add      r7, r2
104a7aaa: cmp      r0, r4
104a7aac: blo      #0x104a7a9c
104a7aae: str      r1, [sp, #0x7c]
104a7ab0: add      r1, sp, #0x74
104a7ab2: ldr      r0, [r5, #0x50]
104a7ab4: add.w    r0, r5, r0, lsl #1
104a7ab8: ldrsh.w  r0, [r0, #0x54]
104a7abc: bl       #0x104c0f54
104a7ac0: cbz      r0, #0x104a7aca
104a7ac2: ldr      r0, [pc, #0x360]
104a7ac4: mov      r1, sl
104a7ac6: bl       #0x1035c98c
104a7aca: ldr.w    r0, [r5, #0xa8]
104a7ace: add.w    r0, r0, r4, lsl #10
104a7ad2: str.w    r0, [r5, #0xa8]
104a7ad6: b        #0x104a7ae4
104a7ad8: movs     r7, #0
104a7ada: movs     r0, #1
104a7adc: bl       #0x104a8a5e
104a7ae0: str.w    r6, [r5, #0x9c]
104a7ae4: ldr      r0, [r5, #0x50]
104a7ae6: add.w    r1, r5, r0, lsl #3
104a7aea: ldrd     r2, r0, [r1, #0xb0]!
104a7aee: adds     r2, r2, r7
104a7af0: adcs     r0, r6
104a7af2: strd     r2, r0, [r1]
104a7af6: add      sp, #0x88
104a7af8: pop.w    {r4, r5, r6, r7, r8, sb, sl, pc}
104a7afc: push.w   {r4, r5, r6, r7, r8, sb, sl, lr}
104a7b00: movs     r6, #0
104a7b02: mov      r5, r0
104a7b04: b        #0x104a7b74
104a7b06: ldr.w    r0, [r5, #0x3d0]
104a7b0a: add.w    r4, r5, r6, lsl #4
104a7b0e: adds     r4, #0xc
104a7b10: cmp      r0, #1
104a7b12: bne      #0x104a7b16
104a7b14: cbz      r6, #0x104a7b7e
104a7b16: ldr      r1, [r4, #0xc]
104a7b18: movs     r2, #0
104a7b1a: ldr      r0, [r4, #4]
104a7b1c: adds     r7, r0, r1
104a7b1e: mov      r1, r2
104a7b20: subs     r7, #0xa
104a7b22: mov      r0, r4
104a7b24: bl       #0x104a8a84
104a7b28: movs     r2, #0
104a7b2a: mov      r0, r4
104a7b2c: movs     r1, #1
104a7b2e: bl       #0x104a8a84
104a7b32: movs     r2, #0
104a7b34: mov      r0, r4
104a7b36: movs     r1, #2
104a7b38: bl       #0x104a8a84
104a7b3c: movs     r2, #2
104a7b3e: mov      r0, r4
104a7b40: movs     r1, #3
104a7b42: bl       #0x104a8a84
104a7b46: lsrs     r2, r7, #0x18
104a7b48: mov      r0, r4
104a7b4a: movs     r1, #6
104a7b4c: bl       #0x104a8a84
104a7b50: movs     r1, #7
104a7b52: mov      r0, r4
104a7b54: ubfx     r2, r7, #0x10, #8
104a7b58: bl       #0x104a8a84
104a7b5c: movs     r1, #8
104a7b5e: mov      r0, r4
104a7b60: ubfx     r2, r7, #8, #8
104a7b64: bl       #0x104a8a84
104a7b68: movs     r1, #9
104a7b6a: mov      r0, r4
104a7b6c: uxtb     r2, r7
104a7b6e: bl       #0x104a8a84
104a7b72: adds     r6, r6, #1
104a7b74: ldr.w    r0, [r5, #0x3cc]
104a7b78: cmp      r0, r6
104a7b7a: bhi      #0x104a7b06
104a7b7c: b        #0x104a7af8
104a7b7e: b        #0x104a7b80
104a7b80: movs     r1, #4
104a7b82: mov      r0, r4
104a7b84: bl       #0x104a8aa0
104a7b88: movs     r1, #5
104a7b8a: mov      sl, r0
104a7b8c: mov      r0, r4
104a7b8e: bl       #0x104a8aa0
104a7b92: ldr.w    r2, [r5, #0x3e0]
104a7b96: mov      sb, r0
104a7b98: ldr.w    r1, [r5, #0x3d8]
104a7b9c: ldr.w    r7, [r5, #0x3f0]
104a7ba0: ldr.w    r3, [r5, #0x3e8]
104a7ba4: add      r1, r2
104a7ba6: ldr.w    ip, [r4, #0xc]
104a7baa: ldr      r0, [r4, #4]
104a7bac: adds     r2, r3, r7
104a7bae: add      r1, r2
104a7bb0: add      r0, ip
104a7bb2: mov      r7, r1
104a7bb4: subs     r0, r0, #6
104a7bb6: subs     r0, r0, r1
104a7bb8: sub.w    r8, r0, #4
104a7bbc: mov      r0, r4
104a7bbe: movs     r2, #0
104a7bc0: bl       #0x104a8a84
104a7bc4: movs     r2, #0
104a7bc6: mov      r0, r4
104a7bc8: adds     r1, r7, #1
104a7bca: bl       #0x104a8a84
104a7bce: movs     r2, #0
104a7bd0: mov      r0, r4
104a7bd2: adds     r1, r7, #2
104a7bd4: bl       #0x104a8a84
104a7bd8: movs     r2, #2
104a7bda: mov      r0, r4
104a7bdc: adds     r1, r7, #3
104a7bde: bl       #0x104a8a84
104a7be2: adds     r1, r7, #4
104a7be4: mov      r2, sl
104a7be6: mov      r0, r4
104a7be8: bl       #0x104a8a84
104a7bec: adds     r1, r7, #5
104a7bee: mov      r2, sb
104a7bf0: mov      r0, r4
104a7bf2: bl       #0x104a8a84
104a7bf6: adds     r1, r7, #6
104a7bf8: mov      r0, r4
104a7bfa: lsr.w    r2, r8, #0x18
104a7bfe: bl       #0x104a8a84
104a7c02: adds     r1, r7, #7
104a7c04: mov      r0, r4
104a7c06: ubfx     r2, r8, #0x10, #8
104a7c0a: bl       #0x104a8a84
104a7c0e: add.w    r1, r7, #8
104a7c12: mov      r0, r4
104a7c14: ubfx     r2, r8, #8, #8
104a7c18: bl       #0x104a8a84
104a7c1c: and      r2, r8, #0xff
104a7c20: mov      r0, r4
104a7c22: add.w    r1, r7, #9
104a7c26: bl       #0x104a8a84
104a7c2a: ldr      r1, [r4, #0xc]
104a7c2c: ldr      r0, [r4, #4]
104a7c2e: adds     r2, r0, r1
104a7c30: mov      r1, r7
104a7c32: cmp      r2, r1
104a7c34: bls      #0x104a7b72
104a7c36: cmp      r0, r1
104a7c38: bls      #0x104a7c44
104a7c3a: ldrd     r0, r2, [r4]
104a7c3e: add      r0, r1
104a7c40: subs     r1, r2, r7
104a7c42: b        #0x104a7c5a
104a7c44: ldrd     r3, r7, [r4, #8]
104a7c48: mov      ip, r0
104a7c4a: subs     r0, r1, r0
104a7c4c: movs     r2, #0
104a7c4e: str      r2, [r4, #8]
104a7c50: sub.w    r1, r1, ip
104a7c54: str      r2, [r4, #0xc]
104a7c56: subs     r1, r7, r1
104a7c58: add      r0, r3
104a7c5a: strd     r0, r1, [r4]
104a7c5e: b        #0x104a7b72
104a7c60: push     {r4, r5, lr}
104a7c62: sub      sp, #0x1c
104a7c64: movs     r1, #0
104a7c66: str      r1, [sp, #8]
104a7c68: str      r1, [sp, #0xc]
104a7c6a: str      r1, [sp, #0x10]
104a7c6c: str      r1, [sp, #4]
104a7c6e: ldr.w    r2, [r0, #0x3d8]
104a7c72: cmp      r2, #4
104a7c74: bls      #0x104a7ca6
104a7c76: ldr.w    r3, [r0, #0x3e0]
104a7c7a: cbnz     r3, #0x104a7ca6
104a7c7c: ldr.w    r3, [r0, #0x3e8]
104a7c80: cmp      r3, #4
104a7c82: bls      #0x104a7ca6
104a7c84: ldr.w    r4, [r0, #0x3f0]
104a7c88: cbnz     r4, #0x104a7ca6
104a7c8a: ldr      r4, [pc, #0x1a0]
104a7c8c: subs     r3, r3, #4
104a7c8e: subs     r2, r2, #4
104a7c90: str      r3, [r4, #0x14]
104a7c92: str      r2, [r4, #8]
104a7c94: ldr      r5, [r4, #4]
104a7c96: cmp      r2, r5
104a7c98: bls      #0x104a7c9e
104a7c9a: str      r1, [r4, #8]
104a7c9c: b        #0x104a7ca6
104a7c9e: ldr      r5, [r4, #0x10]
104a7ca0: cmp      r3, r5
104a7ca2: bls      #0x104a7cac
104a7ca4: str      r1, [r4, #0x14]
104a7ca6: movs     r0, #0
104a7ca8: add      sp, #0x1c
104a7caa: pop      {r4, r5, pc}
104a7cac: ldr.w    r1, [r0, #0x3d4]
104a7cb0: adds     r1, r1, #4
104a7cb2: strd     r1, r2, [sp, #8]
104a7cb6: ldr.w    r1, [r0, #0x3e4]
104a7cba: ldr      r0, [pc, #0x170]
104a7cbc: adds     r1, r1, #4
104a7cbe: str      r3, [sp, #4]
104a7cc0: subs     r0, #0xb0
104a7cc2: str      r1, [sp, #0x10]
104a7cc4: ldrb.w   r1, [r0, #0x66]
104a7cc8: cmp      r1, #1
104a7cca: bne      #0x104a7d06
104a7ccc: ldrb.w   r0, [r0, #0x67]
104a7cd0: add      r1, sp, #4
104a7cd2: cmp      r0, #7
104a7cd4: beq      #0x104a7ce0
104a7cd6: cmp      r0, #8
104a7cd8: beq      #0x104a7cec
104a7cda: cmp      r0, #9
104a7cdc: beq      #0x104a7cf8
104a7cde: b        #0x104a7d06
104a7ce0: movs     r0, #0
104a7ce2: str      r1, [sp]
104a7ce4: add      r3, sp, #0x10
104a7ce6: add      r2, sp, #0xc
104a7ce8: add      r1, sp, #8
104a7cea: b        #0x104a7d02
104a7cec: movs     r0, #1
104a7cee: str      r1, [sp]
104a7cf0: add      r3, sp, #0x10
104a7cf2: add      r2, sp, #0xc
104a7cf4: add      r1, sp, #8
104a7cf6: b        #0x104a7d02
104a7cf8: movs     r0, #2
104a7cfa: str      r1, [sp]
104a7cfc: add      r3, sp, #0x10
104a7cfe: add      r2, sp, #0xc
104a7d00: add      r1, sp, #8
104a7d02: bl       #0x104a5218
104a7d06: ldr      r0, [r4]
104a7d08: ldrd     r1, r2, [sp, #8]
104a7d0c: blx      #0x1035d254
104a7d10: ldr      r0, [r4, #0xc]
104a7d12: ldr      r2, [sp, #4]
104a7d14: ldr      r1, [sp, #0x10]
104a7d16: blx      #0x1035d254
104a7d1a: movs     r0, #1
104a7d1c: b        #0x104a7ca8
104a7d1e: ldr      r0, [pc, #0x10c]
104a7d20: push.w   {r4, r5, r6, r7, r8, sb, sl, lr}
104a7d24: subs     r0, #0xb0
104a7d26: movw     r8, #0x3f8
104a7d2a: movs     r5, #1
104a7d2c: movs     r7, #0
104a7d2e: ldr      r0, [r0, #0x70]
104a7d30: sub.w    sp, sp, #0x410
104a7d34: mov      r4, r7
104a7d36: cbz      r0, #0x104a7d6c
104a7d38: ldr      r6, [pc, #0xf4]
104a7d3a: ldrb     r0, [r6, #3]
104a7d3c: cbz      r0, #0x104a7d98
104a7d3e: cmp      r0, #2
104a7d40: beq      #0x104a7d98
104a7d42: ldr      r0, [pc, #0xe4]
104a7d44: movs     r1, #1
104a7d46: add.w    r2, sp, #0x408
104a7d4a: adds     r0, #0x6c
104a7d4c: bl       #0x10553a00
104a7d50: cmp      r0, #0
104a7d52: beq      #0x104a7e22
104a7d54: ldr.w    r1, [sp, #0x408]
104a7d58: mov      r2, r8
104a7d5a: mov      r0, sp
104a7d5c: blx      #0x1035d1ec
104a7d60: ldr      r0, [sp, #0x3f4]
104a7d62: ldr      r1, [r6, #0x44]
104a7d64: cmp      r0, r1
104a7d66: blo      #0x104a7dee
104a7d68: str      r5, [r6, #0x40]
104a7d6a: b        #0x104a7e38
104a7d6c: ldr      r0, [pc, #0xb8]
104a7d6e: movs     r1, #0
104a7d70: add.w    r2, sp, #0x408
104a7d74: adds     r0, #0x6c
104a7d76: bl       #0x10553a00
104a7d7a: cmp      r0, #0
104a7d7c: beq      #0x104a7e22
104a7d7e: ldr.w    r1, [sp, #0x408]
104a7d82: mov      r2, r8
104a7d84: mov      r0, sp
104a7d86: blx      #0x1035d1ec
104a7d8a: ldr      r0, [pc, #0x9c]
104a7d8c: movs     r2, #2
104a7d8e: movs     r1, #0
104a7d90: adds     r0, #0x6c
104a7d92: bl       #0x105539b2
104a7d96: b        #0x104a7e02
104a7d98: ldr      r0, [pc, #0x8c]
104a7d9a: movs     r1, #0
104a7d9c: add.w    r2, sp, #0x408
104a7da0: adds     r0, #0x6c
104a7da2: bl       #0x10553a00
104a7da6: cmp      r0, #0
104a7da8: beq      #0x104a7e8c
104a7daa: ldr.w    r1, [sp, #0x408]
104a7dae: mov      r2, r8
104a7db0: mov      r0, sp
104a7db2: blx      #0x1035d1ec
104a7db6: ldr      r0, [sp, #0x3f4]
104a7db8: ldr      r1, [r6, #0x44]
104a7dba: cmp      r0, r1
104a7dbc: blo      #0x104a7dc2
104a7dbe: str      r5, [r6, #0x40]
104a7dc0: b        #0x104a7de2
104a7dc2: ldr      r0, [r6, #0x40]
104a7dc4: cmp      r0, #1
104a7dc6: beq      #0x104a7de2
104a7dc8: ldr      r0, [sp]
104a7dca: cmp      r0, #1
104a7dcc: beq      #0x104a7de2
104a7dce: ldr      r0, [sp, #4]
104a7dd0: movs     r2, #2
104a7dd2: str      r0, [r6, #0x3c]
104a7dd4: movs     r1, #0
104a7dd6: ldr      r0, [pc, #0x50]
104a7dd8: adds     r0, #0x6c
104a7dda: bl       #0x105539b2
104a7dde: strb     r5, [r6, #3]
104a7de0: b        #0x104a7e02
104a7de2: movs     r0, #0
104a7de4: str      r5, [r6, #0x40]
104a7de6: bl       #0x104a7628
104a7dea: strb     r5, [r6, #3]
104a7dec: b        #0x104a7e8a
104a7dee: ldr      r0, [r6, #0x40]
104a7df0: cmp      r0, #1
104a7df2: beq      #0x104a7e38
104a7df4: ldr      r0, [pc, #0x30]
104a7df6: movs     r2, #2
104a7df8: movs     r1, #1
104a7dfa: adds     r0, #0x6c
104a7dfc: bl       #0x105539b2
104a7e00: strb     r4, [r6, #3]
104a7e02: ldr      r0, [sp]
104a7e04: cmp      r0, #1
104a7e06: beq      #0x104a7e1a
104a7e08: ldr      r0, [pc, #0x20]
104a7e0a: ldr      r1, [sp, #0x3cc]
104a7e0c: adds     r0, #0x20
104a7e0e: ldr      r2, [pc, #0x24]
104a7e10: ldr.w    r3, [r0, #0xa4]
104a7e14: add      r1, r3
104a7e16: cmp      r1, r2
104a7e18: bls      #0x104a7e42
104a7e1a: movs     r0, #2
104a7e1c: bl       #0x104a7628
104a7e20: b        #0x104a7e8a
104a7e22: b        #0x104a7e8c
104a7e24: str      r2, [sp, #0x120]
104a7e26: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a7e28: ldr      r0, [sp, #0x50]
104a7e2a: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a7e2c: ldr      r1, [sp, #0x1e0]
104a7e2e: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a7e30: asrs     r0, r5, #0x1e
104a7e32: stm      r1!, {r0, r7}
104a7e34: ldr      r2, [pc, #0x3a0]
104a7e36: movs     r3, r0
104a7e38: movs     r0, #1
104a7e3a: bl       #0x104a7628
104a7e3e: strb     r4, [r6, #3]
104a7e40: b        #0x104a7e8a
104a7e42: str.w    r5, [r0, #0x98]
104a7e46: mov      r8, r0
104a7e48: movw     r1, #0x5a0
104a7e4c: str      r4, [sp, #0x3f8]
104a7e4e: str      r4, [sp, #0x3fc]
104a7e50: str.w    r4, [sp, #0x400]
104a7e54: ldr      r0, [pc, #0x3f8]
104a7e56: str.w    r4, [sp, #0x404]
104a7e5a: bl       #0x1035d2dc
104a7e5e: ldr      r0, [sp, #0x3d0]
104a7e60: movw     sl, #0x1000
104a7e64: ldr      r6, [pc, #0x3ec]
104a7e66: cmp      r0, #1
104a7e68: bne      #0x104a7e78
104a7e6a: ldr      r0, [r6, #0x18]
104a7e6c: cbnz     r0, #0x104a7e78
104a7e6e: mov      r0, sp
104a7e70: str      r5, [r6, #0x18]
104a7e72: bl       #0x104a7c60
104a7e76: cbz      r0, #0x104a7e80
104a7e78: ldr      r0, [r6, #0x1c]
104a7e7a: cmp      r0, #1
104a7e7c: beq      #0x104a7e92
104a7e7e: b        #0x104a7eb0
104a7e80: ldr      r0, [pc, #0x3cc]
104a7e82: mov      r1, sl
104a7e84: subs     r0, #0x2c
104a7e86: bl       #0x1035c98c
104a7e8a: movs     r0, #0
104a7e8c: add.w    sp, sp, #0x410
104a7e90: b        #0x104a7af8
104a7e92: ldr      r0, [r6, #0x18]
104a7e94: cmp      r0, #1
104a7e96: bne      #0x104a7eb0
104a7e98: str      r4, [r6, #0x1c]
104a7e9a: add      r7, sp, #0x3f8
104a7e9c: ldr      r0, [r6]
104a7e9e: str      r0, [sp, #0x3f8]
104a7ea0: ldr      r0, [r6, #8]
104a7ea2: str      r0, [sp, #0x3fc]
104a7ea4: ldr      r0, [r6, #0xc]
104a7ea6: str.w    r0, [sp, #0x400]
104a7eaa: ldr      r0, [r6, #0x14]
104a7eac: str.w    r0, [sp, #0x404]
104a7eb0: mov      r0, sp
104a7eb2: bl       #0x104a7afc
104a7eb6: ldr      r2, [pc, #0x398]
104a7eb8: movs     r1, #0
104a7eba: ldr      r6, [sp, #0x3cc]
104a7ebc: mov.w    sb, #3
104a7ec0: b        #0x104a7f18
104a7ec2: mov      r0, sp
104a7ec4: add.w    r3, r0, r1, lsl #4
104a7ec8: add.w    ip, r1, r1, lsl #1
104a7ecc: ldr.w    lr, [r3, #0xc]
104a7ed0: add.w    r0, r2, ip, lsl #3
104a7ed4: str.w    lr, [r2, ip, lsl #3]
104a7ed8: ldr.w    ip, [r3, #0x10]
104a7edc: str.w    ip, [r0, #4]
104a7ee0: ldr.w    ip, [r3, #0x14]
104a7ee4: str.w    ip, [r0, #0x10]
104a7ee8: ldr      r3, [r3, #0x18]
104a7eea: str      r3, [r0, #0x14]
104a7eec: cbz      r1, #0x104a7f00
104a7eee: str      r4, [r0, #8]
104a7ef0: ldrb.w   r3, [r8, #0x94]
104a7ef4: cbz      r3, #0x104a7f14
104a7ef6: cmp      r3, #1
104a7ef8: beq      #0x104a7f04
104a7efa: cmp      r3, #2
104a7efc: beq      #0x104a7f14
104a7efe: b        #0x104a7f16
104a7f00: str      r5, [r2, #8]
104a7f02: b        #0x104a7ef0
104a7f04: mov      r3, sb
104a7f06: sdiv     ip, r1, r3
104a7f0a: mls      ip, sb, ip, r1
104a7f0e: cmp.w    ip, #0
104a7f12: beq      #0x104a7f62
104a7f14: strb     r4, [r0, #0xc]
104a7f16: adds     r1, r1, #1
104a7f18: cmp      r1, r6
104a7f1a: blo      #0x104a7ec2
104a7f1c: ldr.w    r0, [r8, #0x50]
104a7f20: mov      r5, r8
104a7f22: ldr      r3, [pc, #0x32c]
104a7f24: mov      r2, r6
104a7f26: mov      r1, r7
104a7f28: add.w    r0, r8, r0, lsl #1
104a7f2c: ldrsh.w  r0, [r0, #0x54]
104a7f30: bl       #0x104c0f50
104a7f34: cbz      r0, #0x104a7f40
104a7f36: ldr      r0, [pc, #0x318]
104a7f38: mov      r1, sl
104a7f3a: subs     r0, #0x2c
104a7f3c: bl       #0x1035c98c
104a7f40: ldr.w    r0, [r5, #0xa4]
104a7f44: add      r0, r6
104a7f46: str.w    r0, [r5, #0xa4]
104a7f4a: ldr      r0, [r5, #0x50]
104a7f4c: ldr      r2, [sp, #8]
104a7f4e: add.w    r0, r5, r0, lsl #3
104a7f52: ldrd     r3, r1, [r0, #0xb0]!
104a7f56: adds     r2, r3, r2
104a7f58: adcs     r1, r4
104a7f5a: strd     r2, r1, [r0]
104a7f5e: movs     r0, #1
104a7f60: b        #0x104a7e8c
104a7f62: strb.w   sb, [r0, #0xc]
104a7f66: b        #0x104a7f16
104a7f68: push.w   {r4, r5, r6, r7, r8, lr}
104a7f6c: ldr      r0, [pc, #0x2e4]
104a7f6e: movs     r5, #0
104a7f70: mov      r1, r5
104a7f72: subs     r0, #0xf8
104a7f74: bl       #0x10553a52
104a7f78: ldr      r4, [pc, #0x2d8]
104a7f7a: mov      r7, r0
104a7f7c: subs     r4, #0xb0
104a7f7e: ldr      r0, [r4, #0x70]
104a7f80: cbz      r0, #0x104a7f90
104a7f82: movs     r1, #1
104a7f84: sub.w    r0, r4, #0x48
104a7f88: bl       #0x10553a52
104a7f8c: mov      r6, r0
104a7f8e: b        #0x104a7f92
104a7f90: movs     r6, #0
104a7f92: ldr      r0, [pc, #0x2c0]
104a7f94: movs     r1, #0
104a7f96: subs     r0, #0xd4
104a7f98: bl       #0x10553a52
104a7f9c: mov      r2, r0
104a7f9e: ldr      r0, [pc, #0x2b4]
104a7fa0: ldr.w    lr, [r4, #0x70]
104a7fa4: movs     r3, #0
104a7fa6: ldr      r4, [pc, #0x2b0]
104a7fa8: adds     r0, #0x20
104a7faa: cmp.w    lr, #0
104a7fae: mov.w    ip, #1
104a7fb2: movw     r1, #0x800
104a7fb6: beq      #0x104a7fc2
104a7fb8: ldrb.w   lr, [r4, #3]
104a7fbc: cmp.w    lr, #1
104a7fc0: beq      #0x104a7fd4
104a7fc2: ldr.w    r6, [r0, #0x90]
104a7fc6: cmp      r6, #1
104a7fc8: beq      #0x104a7ff8
104a7fca: cbz      r7, #0x104a8014
104a7fcc: ldr.w    r0, [r0, #0x98]
104a7fd0: cbz      r0, #0x104a8016
104a7fd2: b        #0x104a8018
104a7fd4: ldr.w    r7, [r0, #0x90]
104a7fd8: cmp      r7, #1
104a7fda: beq      #0x104a7fe2
104a7fdc: cmp      r6, #0
104a7fde: bne      #0x104a7fcc
104a7fe0: b        #0x104a8018
104a7fe2: cbz      r6, #0x104a8014
104a7fe4: cbz      r2, #0x104a7ffe
104a7fe6: ldr.w    r1, [r0, #0x98]
104a7fea: cbnz     r1, #0x104a7ff4
104a7fec: ldr.w    r0, [r0, #0x9c]
104a7ff0: cbnz     r0, #0x104a7ff4
104a7ff2: movs     r5, #1
104a7ff4: str      r3, [r4, #0x24]
104a7ff6: b        #0x104a8018
104a7ff8: cmp      r7, #0
104a7ffa: bne      #0x104a7fe4
104a7ffc: b        #0x104a8018
104a7ffe: ldr      r0, [r4, #0x24]
104a8000: adds     r0, r0, #1
104a8002: str      r0, [r4, #0x24]
104a8004: cmp      r0, #0x3c
104a8006: blo      #0x104a8018
104a8008: ldr      r0, [pc, #0x244]
104a800a: str.w    ip, [r4, #0x28]
104a800e: subs     r0, #0x2c
104a8010: bl       #0x1035c98c
104a8014: b        #0x104a8018
104a8016: movs     r5, #1
104a8018: ldrb     r0, [r4, #1]
104a801a: cmp      r0, #3
104a801c: bne      #0x104a8020
104a801e: movs     r5, #0
104a8020: mov      r0, r5
104a8022: b        #0x104a7950
104a8024: push     {r3, r4, r5, lr}
104a8026: mov      r4, r1
104a8028: movs     r1, #0
104a802a: cmp      r0, #1
104a802c: strb.w   r1, [sp]
104a8030: beq      #0x104a8038
104a8032: bl       #0x104a7656
104a8036: pop      {r3, r4, r5, pc}
104a8038: mov      r0, sp
104a803a: bl       #0x104a8abe
104a803e: ldrb.w   r0, [sp]
104a8042: cbz      r0, #0x104a804e
104a8044: cmp      r0, #1
104a8046: beq      #0x104a8070
104a8048: cmp      r0, #2
104a804a: beq      #0x104a806c
104a804c: b        #0x104a8070
104a804e: bl       #0x104a7f68
104a8052: cmp      r0, #1
104a8054: bne      #0x104a8070
104a8056: bl       #0x104a7d1e
104a805a: cmp      r0, #1
104a805c: beq      #0x104a8066
104a805e: movs     r0, #0
104a8060: bl       #0x104a8a5e
104a8064: b        #0x104a8070
104a8066: bl       #0x104a795e
104a806a: b        #0x104a8070
104a806c: bl       #0x104a783e
104a8070: mov      r0, r4
104a8072: bl       #0x104a7696
104a8076: pop      {r3, r4, r5, pc}
104a8078: ldr      r0, [pc, #0x1dc]
104a807a: mov.w    r1, #-1
104a807e: push     {r4, r5, r6, lr}
104a8080: adds     r0, #0x10
104a8082: bl       #0x1035d37a
104a8086: ldr      r0, [pc, #0x1cc]
104a8088: subs     r0, #0xf8
104a808a: bl       #0x10553852
104a808e: ldr      r0, [pc, #0x1c4]
104a8090: subs     r0, #0xd4
104a8092: bl       #0x10553852
104a8096: ldr      r5, [pc, #0x1c0]
104a8098: movs     r4, #0
104a809a: movs     r0, #1
104a809c: movs     r1, #2
104a809e: str      r4, [r5, #0x1c]
104a80a0: str      r4, [r5, #0x20]
104a80a2: strb     r4, [r5, #1]
104a80a4: strb     r4, [r5, #2]
104a80a6: str      r4, [r5, #0x24]
104a80a8: str      r4, [r5, #0x28]
104a80aa: str      r4, [r5, #0x2c]
104a80ac: str      r4, [r5, #0x30]
104a80ae: str      r0, [r5, #0x38]
104a80b0: strb     r1, [r5, #3]
104a80b2: movs     r1, #0x80
104a80b4: str      r4, [r5, #0x3c]
104a80b6: str      r4, [r5, #0x40]
104a80b8: ldr      r0, [pc, #0x198]
104a80ba: str      r4, [r5, #0x44]
104a80bc: str      r4, [r5, #0x48]
104a80be: subs     r0, #0xb0
104a80c0: str      r4, [r5, #0x4c]
104a80c2: bl       #0x1035d2dc
104a80c6: ldr      r0, [pc, #0x18c]
104a80c8: movs     r1, #0x20
104a80ca: subs     r0, #0x30
104a80cc: str      r4, [r0]
104a80ce: str      r4, [r0, #4]
104a80d0: str      r4, [r0, #8]
104a80d2: str      r4, [r0, #0xc]
104a80d4: adds     r0, #0x10
104a80d6: bl       #0x1035d2dc
104a80da: ldr      r0, [pc, #0x178]
104a80dc: movs     r1, #0x20
104a80de: bl       #0x1035d2dc
104a80e2: ldr      r0, [pc, #0x170]
104a80e4: movw     r1, #0x100
104a80e8: adds     r0, #0x20
104a80ea: bl       #0x1035d2dc
104a80ee: ldr      r0, [pc, #0x164]
104a80f0: str      r4, [r5, #0x50]
104a80f2: adds     r0, #0xd0
104a80f4: str      r4, [r5, #0x54]
104a80f6: str      r4, [r0, #0x50]
104a80f8: str      r4, [r0, #0x54]
104a80fa: str      r4, [r0, #0x58]
104a80fc: str      r4, [r0, #0x5c]
104a80fe: str      r4, [r0, #0x60]
104a8100: str      r4, [r0, #0x64]
104a8102: str      r4, [r5, #0x58]
104a8104: str      r4, [r5, #0x5c]
104a8106: str      r4, [r5, #0x60]
104a8108: str      r4, [r5, #0x64]
104a810a: str      r4, [r5, #0x68]
104a810c: str      r4, [r5, #0x6c]
104a810e: str      r4, [r0, #0x68]
104a8110: str      r4, [r0, #0x6c]
104a8112: str      r4, [r0, #0x70]
104a8114: str      r4, [r0, #0x74]
104a8116: str      r4, [r0, #0x78]
104a8118: str      r4, [r0, #0x7c]
104a811a: str.w    r4, [r0, #0x80]
104a811e: pop      {r4, r5, r6, pc}
104a8120: push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
104a8124: ldr.w    fp, [pc, #0x130]
104a8128: sub      sp, #0x34
104a812a: ldr      r6, [pc, #0x128]
104a812c: mov.w    r8, #0
104a8130: mov      r7, r8
104a8132: mov      r4, fp
104a8134: subs     r6, #0xb0
104a8136: str.w    r8, [sp, #0x20]
104a813a: adds     r0, r6, #4
104a813c: str.w    r8, [fp, #0x18]
104a8140: bl       #0x105b098e
104a8144: movs     r1, #6
104a8146: movs     r0, #4
104a8148: add      r3, sp, #0x1c
104a814a: add      r2, sp, #0x14
104a814c: bl       #0x104a757e
104a8150: ldr      r0, [pc, #0x100]
104a8152: movw     r2, #0x400
104a8156: ldr      r1, [sp, #0x14]
104a8158: movs     r5, #1
104a815a: add      r3, sp, #0x1c
104a815c: str      r5, [r0, #0x1c]
104a815e: strd     r1, r2, [r0]
104a8162: add.w    r1, r1, #0x400
104a8166: strd     r1, r2, [r0, #0xc]
104a816a: movs     r1, #6
104a816c: mov      r0, r5
104a816e: add      r2, sp, #0x14
104a8170: bl       #0x104a757e
104a8174: ldr      r0, [sp, #0x14]
104a8176: movs     r1, #0x14
104a8178: str      r0, [r4, #0x34]
104a817a: add.w    r0, r6, #0xd0
104a817e: bl       #0x1035d2dc
104a8182: movs     r1, #0x38
104a8184: add.w    r0, r6, #0xe8
104a8188: str      r0, [sp, #4]
104a818a: bl       #0x1035d2dc
104a818e: ldr      r0, [r6, #0x1c]
104a8190: movs     r1, #6
104a8192: add      r3, sp, #0x1c
104a8194: str      r0, [sp, #0x24]
104a8196: movs     r0, #5
104a8198: add      r2, sp, #0x14
104a819a: bl       #0x104a757e
104a819e: add.w    r4, r6, #0xd0
104a81a2: ldr      r0, [sp, #0x14]
104a81a4: lsls     r1, r5, #0x17
104a81a6: movs     r2, #0xb
104a81a8: stm.w    r4, {r0, r1, r2}
104a81ac: ldr      r0, [r6, #0x50]
104a81ae: str      r0, [r4, #0xc]
104a81b0: ldr      r0, [r6, #0x70]
104a81b2: cmp      r0, #1
104a81b4: bne      #0x104a81ba
104a81b6: movs     r0, #0x14
104a81b8: str      r0, [r4, #8]
104a81ba: ldr      r0, [r6, #0x54]
104a81bc: cmp      r0, #1
104a81be: beq      #0x104a82b8
104a81c0: str.w    r8, [r4, #0x10]
104a81c4: movs     r1, #6
104a81c6: movs     r0, #4
104a81c8: add      r3, sp, #0x1c
104a81ca: add      r2, sp, #0x14
104a81cc: bl       #0x104a757e
104a81d0: ldr      r1, [sp, #0x14]
104a81d2: mov      sl, r6
104a81d4: add.w    r1, r1, #0x800
104a81d8: str      r1, [r4, #0x14]
104a81da: str.w    r8, [sp, #0x18]
104a81de: ldrb.w   r0, [r6, #0x66]
104a81e2: strb.w   r0, [sp, #0x18]
104a81e6: ldrb.w   r0, [r6, #0x67]
104a81ea: ldr      r1, [pc, #0x68]
104a81ec: strb.w   r0, [sp, #0x19]
104a81f0: ldrb.w   r0, [r6, #0x68]
104a81f4: subs     r1, #0x20
104a81f6: adds     r6, #0x66
104a81f8: strb.w   r0, [sp, #0x1a]
104a81fc: add      r0, sp, #0x18
104a81fe: bl       #0x10523e0a
104a8202: ldrb     r0, [r6, #4]
104a8204: mov.w    sb, #2
104a8208: cmp      r0, #1
104a820a: beq      #0x104a82ca
104a820c: cmp      r0, #2
104a820e: beq      #0x104a82ce
104a8210: str.w    r8, [r4, #0x4c]
104a8214: mov      r6, r8
104a8216: ldr      r0, [pc, #0x3c]
104a8218: subs     r0, #0x20
104a821a: ldrh     r1, [r0]
104a821c: str      r1, [r4, #0x18]
104a821e: ldrh     r1, [r0, #2]
104a8220: str      r1, [r4, #0x1c]
104a8222: ldr      r1, [r0, #8]
104a8224: str      r1, [sp, #0x30]
104a8226: str      r1, [r4, #0x20]
104a8228: ldr      r1, [r0, #4]
104a822a: strd     r1, r6, [r4, #0x24]
104a822e: ldrh     r0, [r0, #0x12]
104a8230: mov      r8, r1
104a8232: str      r0, [sp]
104a8234: str      r0, [r4, #0x2c]
104a8236: ldr.w    r0, [sl, #0x70]
104a823a: cbz      r0, #0x104a82b6
104a823c: ldr.w    r1, [sl, #0x5c]
104a8240: movs     r3, #0
104a8242: ldr      r2, [sp, #0x30]
104a8244: add.w    r1, r1, #0x3e8
104a8248: str      r1, [sp, #0xc]
104a824a: umull    r0, r1, r1, r8
104a824e: b        #0x104a825c
104a8250: str      r2, [sp, #0x1d0]
104a8252: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a8254: ldr      r1, [sp, #0x1e0]
104a8256: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a8258: asrs     r0, r5, #0x1e
104a825a: stm      r1!, {r0, r7}
104a825c: blx      #0x10439580
104a8260: ldr      r2, [sp]
104a8262: movs     r3, #0
104a8264: blx      #0x10439580
104a8268: movs     r3, #0
104a826a: movw     r2, #0x3e8
104a826e: blx      #0x10439580
104a8272: str      r0, [sp, #0x10]
104a8274: str.w    r0, [fp, #0x44]
104a8278: ldr      r1, [sp]
104a827a: umull    r1, r2, r0, r1
104a827e: ldr      r0, [sp, #0x30]
104a8280: umull    r3, ip, r1, r0
104a8284: mla      r0, r2, r0, ip
104a8288: mla      r2, r1, r6, r0
104a828c: movw     ip, #0x3e8
104a8290: movs     r1, #0
104a8292: umull    r0, lr, r3, ip
104a8296: mla      r2, r2, ip, lr
104a829a: mla      r1, r3, r1, r2
104a829e: movs     r3, #0
104a82a0: mov      r2, r8
104a82a2: blx      #0x10439580
104a82a6: ldr      r1, [sp, #0xc]
104a82a8: cmp      r1, r0
104a82aa: bls      #0x104a82b4
104a82ac: ldr      r0, [sp, #0x10]
104a82ae: adds     r0, r0, #1
104a82b0: str.w    r0, [fp, #0x44]
104a82b4: b        #0x104a82ba
104a82b6: b        #0x104a82ea
104a82b8: b        #0x104a82c6
104a82ba: ldrb.w   r0, [sl, #0x67]
104a82be: cbz      r0, #0x104a82d4
104a82c0: cmp      r0, #1
104a82c2: bne      #0x104a82de
104a82c4: b        #0x104a82da
104a82c6: str      r5, [r4, #0x10]
104a82c8: b        #0x104a81c4
104a82ca: str      r5, [r4, #0x4c]
104a82cc: b        #0x104a8214
104a82ce: str.w    sb, [r4, #0x4c]
104a82d2: b        #0x104a8214
104a82d4: movw     r7, #0xe0c
104a82d8: b        #0x104a82de
104a82da: movw     r7, #0xea5
104a82de: ldr.w    r1, [fp, #0x44]
104a82e2: cmp      r1, r7
104a82e4: bls      #0x104a82ea
104a82e6: str.w    r7, [fp, #0x44]
104a82ea: mov      r0, sl
104a82ec: ldrb.w   r1, [sl, #0x67]
104a82f0: movw     r2, #0x3e9
104a82f4: cmp      r1, #7
104a82f6: beq      #0x104a8302
104a82f8: cmp      r1, #8
104a82fa: beq      #0x104a8308
104a82fc: cmp      r1, #9
104a82fe: beq      #0x104a8316
104a8300: b        #0x104a831e
104a8302: movw     r1, #0x7530
104a8306: b        #0x104a831a
104a8308: movw     r2, #0x61a8
104a830c: movw     r1, #0x3e8
104a8310: strd     r1, r2, [r4, #0x20]
104a8314: b        #0x104a831e
104a8316: movw     r1, #0x5dc0
104a831a: strd     r2, r1, [r4, #0x20]
104a831e: ldrb.w   r1, [r0, #0x69]
104a8322: cmp      r1, #1
104a8324: beq      #0x104a8358
104a8326: cmp      r1, #2
104a8328: beq      #0x104a835c
104a832a: str.w    sb, [r4, #0x30]
104a832e: str.w    r6, [r4, #0x90]
104a8332: ldr      r1, [r0, #0x54]
104a8334: cmp      r1, #0
104a8336: mov.w    r1, #-1
104a833a: beq      #0x104a8364
104a833c: movs     r2, #0xff
104a833e: lsls     r3, r1, #0x10
104a8340: mov      r7, r2
104a8342: add.w    r0, r4, #0x38
104a8346: stm.w    r0, {r1, r2, r3, r7}
104a834a: ldr      r1, [pc, #0x3f8]
104a834c: ldr      r2, [r1, #0x1c]
104a834e: cbz      r2, #0x104a836c
104a8350: str      r6, [r4, #0x48]
104a8352: strb.w   sb, [r4, #0x94]
104a8356: b        #0x104a837e
104a8358: str      r5, [r4, #0x30]
104a835a: b        #0x104a835e
104a835c: str      r6, [r4, #0x30]
104a835e: str.w    r5, [r4, #0x90]
104a8362: b        #0x104a8332
104a8364: movs     r2, #0
104a8366: ldr      r3, [pc, #0x3e0]
104a8368: mov      r7, r2
104a836a: b        #0x104a8342
104a836c: ldrh     r1, [r1, #0x10]
104a836e: cmp      r1, #1
104a8370: beq      #0x104a839c
104a8372: cmp      r1, #3
104a8374: bne      #0x104a83d8
104a8376: str.w    sb, [r4, #0x48]
104a837a: strb.w   r5, [r4, #0x94]
104a837e: ldrb.w   r0, [sl, #0x6b]
104a8382: cbz      r0, #0x104a8388
104a8384: cmp      r0, #1
104a8386: bne      #0x104a83d8
104a8388: ldr      r1, [pc, #0x3b8]
104a838a: str      r0, [sp]
104a838c: ldr      r2, [r4, #0x14]
104a838e: adds     r1, #0x40
104a8390: ldr      r3, [sp, #4]
104a8392: ldr      r0, [sp, #0x24]
104a8394: bl       #0x104c0f44
104a8398: cbz      r0, #0x104a83a4
104a839a: b        #0x104a83c4
104a839c: str      r5, [r4, #0x48]
104a839e: strb.w   r6, [r4, #0x94]
104a83a2: b        #0x104a837e
104a83a4: ldr      r0, [pc, #0x3a4]
104a83a6: mov.w    r1, #0x10000
104a83aa: add      r2, sp, #0x20
104a83ac: bl       #0x1035d382
104a83b0: ldr      r0, [sp, #0x20]
104a83b2: and      r1, r0, #0x10000
104a83b6: ldr      r0, [pc, #0x394]
104a83b8: bl       #0x1035d37a
104a83bc: ldr      r0, [pc, #0x38c]
104a83be: adds     r0, #0x40
104a83c0: ldr      r1, [r0, #4]
104a83c2: cbz      r1, #0x104a83de
104a83c4: ldr      r0, [pc, #0x388]
104a83c6: movw     r1, #0x1000
104a83ca: bl       #0x1035c98c
104a83ce: ldr      r0, [pc, #0x374]
104a83d0: movs     r1, #0
104a83d2: subs     r0, #0xe4
104a83d4: bl       #0x103d7fe6
104a83d8: add      sp, #0x34
104a83da: pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
104a83de: movs     r2, #0
104a83e0: str      r6, [r4, #0x50]
104a83e2: ldrh     r0, [r0]
104a83e4: mov.w    r1, #0x3200000
104a83e8: strh.w   r0, [r4, #0x54]
104a83ec: strd     r1, r2, [r4, #0xb0]
104a83f0: b        #0x104a83ce
104a83f2: push.w   {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
104a83f6: ldr      r4, [pc, #0x354]
104a83f8: mov      r5, r0
104a83fa: lsls     r0, r0, #0x1f
104a83fc: mov.w    r7, #0
104a8400: sub.w    r4, r4, #0x10
104a8404: mov.w    r6, #1
104a8408: str      r7, [sp]
104a840a: beq      #0x104a841e
104a840c: ldrb     r0, [r4]
104a840e: cbnz     r0, #0x104a8416
104a8410: bl       #0x104a8120
104a8414: strb     r6, [r4]
104a8416: movs     r1, #1
104a8418: ldr      r0, [pc, #0x330]
104a841a: bl       #0x1035d374
104a841e: lsls     r0, r5, #0x1e
104a8420: bpl      #0x104a8432
104a8422: ldrb     r0, [r4]
104a8424: cbz      r0, #0x104a842a
104a8426: cmp      r0, #1
104a8428: beq      #0x104a8444
104a842a: ldr      r0, [pc, #0x320]
104a842c: movs     r1, #2
104a842e: bl       #0x1035d374
104a8432: lsls     r0, r5, #0x1d
104a8434: bpl      #0x104a845a
104a8436: ldrb     r0, [r4]
104a8438: cbz      r0, #0x104a8452
104a843a: cmp      r0, #1
104a843c: beq      #0x104a8452
104a843e: cmp      r0, #2
104a8440: bne      #0x104a8452
104a8442: b        #0x104a844e
104a8444: ldrb     r0, [r4, #1]
104a8446: cmp      r0, #0
104a8448: bne      #0x104a8432
104a844a: strb     r6, [r4, #1]
104a844c: b        #0x104a8432
104a844e: bl       #0x104a8b94
104a8452: ldr      r0, [pc, #0x2f8]
104a8454: movs     r1, #4
104a8456: bl       #0x1035d374
104a845a: lsls     r0, r5, #0x1c
104a845c: bpl      #0x104a8478
104a845e: ldrb     r0, [r4]
104a8460: cbz      r0, #0x104a8470
104a8462: cmp      r0, #1
104a8464: beq      #0x104a8470
104a8466: cmp      r0, #2
104a8468: bne      #0x104a8470
104a846a: bl       #0x104a8b1e
104a846e: strb     r7, [r4]
104a8470: movs     r1, #8
104a8472: ldr      r0, [pc, #0x2d8]
104a8474: bl       #0x1035d374
104a8478: ldr.w    r8, [pc, #0x2c8]
104a847c: lsls     r0, r5, #0x19
104a847e: sub.w    r8, r8, #0x90
104a8482: bpl      #0x104a84aa
104a8484: ldrb     r0, [r4]
104a8486: cbz      r0, #0x104a84aa
104a8488: cmp      r0, #1
104a848a: bne      #0x104a84aa
104a848c: ldrb.w   r1, [r8, #0x6a]
104a8490: movs     r0, #0
104a8492: cmp      r1, #1
104a8494: beq      #0x104a849c
104a8496: cmp      r1, #2
104a8498: beq      #0x104a84a0
104a849a: b        #0x104a84a2
104a849c: movs     r0, #1
104a849e: b        #0x104a84a2
104a84a0: movs     r0, #2
104a84a2: ldrd     r1, r2, [r4, #0x1c]
104a84a6: bl       #0x104c0f70
104a84aa: lsls     r0, r5, #0x17
104a84ac: mov.w    sb, #2
104a84b0: bpl      #0x104a84fc
104a84b2: ldrb     r0, [r4]
104a84b4: cbz      r0, #0x104a84fc
104a84b6: cmp      r0, #1
104a84b8: beq      #0x104a84c0
104a84ba: cmp      r0, #2
104a84bc: bne      #0x104a84fc
104a84be: b        #0x104a84f4
104a84c0: movs     r0, #1
104a84c2: mov      r1, sp
104a84c4: bl       #0x104a8024
104a84c8: ldr      r0, [sp]
104a84ca: cmp      r0, #1
104a84cc: beq      #0x104a84e6
104a84ce: ldr.w    r0, [r8, #0x70]
104a84d2: cbz      r0, #0x104a84fc
104a84d4: ldr      r0, [r4, #0x4c]
104a84d6: cbz      r0, #0x104a84fc
104a84d8: ldr      r0, [pc, #0x274]
104a84da: movw     r1, #0x2000
104a84de: bl       #0x1035c98c
104a84e2: str      r7, [r4, #0x4c]
104a84e4: b        #0x104a84fc
104a84e6: ldr      r0, [pc, #0x264]
104a84e8: movs     r1, #2
104a84ea: strb.w   sb, [r4]
104a84ee: bl       #0x1035d374
104a84f2: b        #0x104a84fc
104a84f4: movs     r1, #0
104a84f6: mov      r0, r1
104a84f8: bl       #0x104a8024
104a84fc: ldr.w    r8, [pc, #0x244]
104a8500: lsls     r0, r5, #0x16
104a8502: movw     fp, #0x800
104a8506: movw     sl, #0x1000
104a850a: add.w    r8, r8, #0x40
104a850e: bpl      #0x104a8542
104a8510: ldrb     r0, [r4]
104a8512: cbz      r0, #0x104a8542
104a8514: cmp      r0, #1
104a8516: bne      #0x104a8542
104a8518: movs     r0, #2
104a851a: bl       #0x104a7628
104a851e: add.w    r0, r8, #0x100
104a8522: str.w    r7, [r8, #0x98]
104a8526: ldr      r0, [r0, #4]
104a8528: cbz      r0, #0x104a8542
104a852a: cmp      r0, #3
104a852c: beq      #0x104a8550
104a852e: cmp      r0, #5
104a8530: beq      #0x104a8550
104a8532: cmp      r0, #6
104a8534: beq      #0x104a8550
104a8536: cmp      r0, #7
104a8538: beq      #0x104a8550
104a853a: mov      r1, sl
104a853c: ldr      r0, [pc, #0x210]
104a853e: bl       #0x1035c98c
104a8542: lsls     r0, r5, #0x15
104a8544: bpl      #0x104a857c
104a8546: ldrb     r0, [r4]
104a8548: cbz      r0, #0x104a857c
104a854a: cmp      r0, #1
104a854c: bne      #0x104a857c
104a854e: b        #0x104a8554
104a8550: mov      r1, fp
104a8552: b        #0x104a853c
104a8554: movs     r0, #1
104a8556: bl       #0x104a8a5e
104a855a: ldr      r0, [pc, #0x1f8]
104a855c: str.w    r7, [r8, #0x9c]
104a8560: ldr      r0, [r0, #4]
104a8562: cbz      r0, #0x104a857c
104a8564: cmp      r0, #3
104a8566: beq      #0x104a858a
104a8568: cmp      r0, #5
104a856a: beq      #0x104a858a
104a856c: cmp      r0, #6
104a856e: beq      #0x104a858a
104a8570: cmp      r0, #7
104a8572: beq      #0x104a858a
104a8574: mov      r1, sl
104a8576: ldr      r0, [pc, #0x1d8]
104a8578: bl       #0x1035c98c
104a857c: lsls     r0, r5, #0x14
104a857e: bpl      #0x104a85a0
104a8580: ldrb     r0, [r4]
104a8582: cbz      r0, #0x104a8596
104a8584: cmp      r0, #1
104a8586: bne      #0x104a8596
104a8588: b        #0x104a858e
104a858a: mov      r1, fp
104a858c: b        #0x104a8576
104a858e: ldrb     r0, [r4, #1]
104a8590: cbnz     r0, #0x104a8596
104a8592: strb.w   sb, [r4, #1]
104a8596: ldr      r2, [r4, #4]
104a8598: cbz      r2, #0x104a85a0
104a859a: movs     r1, #0
104a859c: movs     r0, #3
104a859e: blx      r2
104a85a0: lsls     r0, r5, #0x13
104a85a2: bpl      #0x104a85bc
104a85a4: ldrb     r0, [r4]
104a85a6: cbz      r0, #0x104a85b2
104a85a8: cmp      r0, #1
104a85aa: bne      #0x104a85b2
104a85ac: str      r6, [r4, #0x18]
104a85ae: movs     r0, #3
104a85b0: strb     r0, [r4, #1]
104a85b2: ldr      r2, [r4, #4]
104a85b4: cbz      r2, #0x104a85bc
104a85b6: movs     r1, #0
104a85b8: movs     r0, #4
104a85ba: blx      r2
104a85bc: lsls     r0, r5, #0x12
104a85be: bpl      #0x104a85d0
104a85c0: ldrb     r0, [r4]
104a85c2: cbz      r0, #0x104a85d0
104a85c4: cmp      r0, #1
104a85c6: beq      #0x104a85cc
104a85c8: cmp      r0, #2
104a85ca: bne      #0x104a85d0
104a85cc: bl       #0x104a8a18
104a85d0: lsls     r0, r5, #0x11
104a85d2: bpl      #0x104a85e6
104a85d4: ldrb     r0, [r4]
104a85d6: cmp      r0, #0
104a85d8: beq      #0x104a85e6
104a85da: cmp      r0, #1
104a85dc: beq      #0x104a85e2
104a85de: cmp      r0, #2
104a85e0: bne      #0x104a85e6
104a85e2: bl       #0x104a89ca
104a85e6: pop.w    {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
104a85ea: push     {r4, lr}
104a85ec: movs     r0, #0x24
104a85ee: movw     r4, #0x7f7f
104a85f2: bl       #0x103d6546
104a85f6: ldr      r1, [pc, #0x160]
104a85f8: mov      r3, r0
104a85fa: ldr      r0, [pc, #0x154]
104a85fc: mov      r2, r4
104a85fe: bl       #0x1035c95e
104a8602: ldr      r0, [pc, #0x148]
104a8604: adr      r1, #0x154
104a8606: bl       #0x1035d32a
104a860a: ldr      r0, [pc, #0x140]
104a860c: adr      r1, #0x158
104a860e: adds     r0, r0, #4
104a8610: bl       #0x1035d164
104a8614: ldr      r0, [pc, #0x12c]
104a8616: movs     r2, #0x32
104a8618: ldr      r1, [pc, #0x164]
104a861a: adr      r3, #0x158
104a861c: subs     r0, #0xe4
104a861e: bl       #0x103d7fb8
104a8622: ldr      r0, [pc, #0x120]
104a8624: movs     r2, #0x14
104a8626: movs     r1, #3
104a8628: movw     r3, #0x3f8
104a862c: subs     r0, #0xd8
104a862e: bl       #0x105537a4
104a8632: ldr      r0, [pc, #0x110]
104a8634: movs     r3, #0x70
104a8636: movs     r2, #0x14
104a8638: movs     r1, #2
104a863a: pop.w    {r4, lr}
104a863e: subs     r0, #0xb4
104a8640: b.w      #0x105537a4
104a8644: ldr      r2, [pc, #0x13c]
104a8646: push     {r4, r5}
104a8648: cmp      r0, r2
104a864a: bne      #0x104a8680
104a864c: ldr      r0, [pc, #0x104]
104a864e: ldr      r2, [r1]
104a8650: subs     r0, #0x5c
104a8652: cmp      r2, #9
104a8654: beq      #0x104a8670
104a8656: cmp      r2, #0xc
104a8658: bne      #0x104a8680
104a865a: adds     r1, #8
104a865c: adds     r0, #0x78
104a865e: ldm      r1, {r1, r2, r3}
104a8660: stm.w    r0, {r1, r2, r3}
104a8664: movw     r1, #0x4000
104a8668: ldr      r0, [pc, #0xe4]
104a866a: pop      {r4, r5}
104a866c: b.w      #0x1035c98c
104a8670: adds     r1, #8
104a8672: adds     r0, #0x68
104a8674: ldm      r1, {r1, r2, r3, r4}
104a8676: stm.w    r0, {r1, r2, r3, r4}
104a867a: movw     r1, #0x2000
104a867e: b        #0x104a8668
104a8680: pop      {r4, r5}
104a8682: bx       lr
104a8684: ldr      r1, [pc, #0x100]
104a8686: adds     r0, r0, r1
104a8688: beq      #0x104a86a0
104a868a: cmp      r0, #1
104a868c: beq      #0x104a869a
104a868e: cmp      r0, #2
104a8690: bne      #0x104a86a0
104a8692: lsls     r1, r0, #0xa
104a8694: ldr      r0, [pc, #0xb8]
104a8696: b.w      #0x1035c98c
104a869a: movw     r1, #0x1000
104a869e: b        #0x104a8694
104a86a0: bx       lr
104a86a2: push     {r4, r5}
104a86a4: ldr      r4, [pc, #0xe0]
104a86a6: ldr      r2, [pc, #0xa4]
104a86a8: ldr      r3, [pc, #0xa8]
104a86aa: add      r0, r4
104a86ac: subs     r2, #0x10
104a86ae: subs     r3, #0x5c
104a86b0: cmp      r0, #6
104a86b2: bhs      #0x104a8680
104a86b4: tbb      [pc, r0]
104a86b8: lsrs     r3, r0, #8
104a86ba: subs     r1, r2, r4
104a86bc: cmp      r1, #0x22
104a86be: ldrd     r0, r1, [r1]
104a86c2: strd     r0, r1, [r2, #0x50]
104a86c6: mov.w    r1, #0x10000
104a86ca: b        #0x104a8716
104a86cc: ldm      r1, {r0, r1, r2}
104a86ce: adds     r3, #0x50
104a86d0: stm.w    r3, {r0, r1, r2}
104a86d4: movw     r1, #0x200
104a86d8: b        #0x104a86e6
104a86da: ldm      r1, {r0, r1, r2}
104a86dc: adds     r3, #0x5c
104a86de: stm.w    r3, {r0, r1, r2}
104a86e2: movw     r1, #0x400
104a86e6: ldr      r0, [pc, #0x68]
104a86e8: pop      {r4, r5}
104a86ea: b.w      #0x1035c98c
104a86ee: ldrd     r0, r1, [r1]
104a86f2: strd     r0, r1, [r2, #0x58]
104a86f6: mov.w    r1, #0x20000
104a86fa: b        #0x104a8716
104a86fc: ldrd     r0, r1, [r1]
104a8700: strd     r0, r1, [r2, #0x60]
104a8704: mov.w    r1, #0x40000
104a8708: b        #0x104a8716
104a870a: ldrd     r0, r1, [r1]
104a870e: strd     r0, r1, [r2, #0x68]
104a8712: mov.w    r1, #0x80000
104a8716: ldr      r0, [pc, #0x34]
104a8718: pop      {r4, r5}
104a871a: b.w      #0x1035d374
104a871e: b        #0x104a8680
104a8720: ldr      r0, [pc, #0x28]
104a8722: movs     r1, #0
104a8724: push     {r4, lr}
104a8726: subs     r0, #0x10
104a8728: strb     r1, [r0]
104a872a: str      r1, [r0, #0x18]
104a872c: bl       #0x104a8078
104a8730: ldr      r0, [pc, #0x58]
104a8732: bl       #0x104c0f38
104a8736: ldr      r0, [pc, #0x58]
104a8738: bl       #0x104c0f3c
104a873c: pop.w    {r4, lr}
104a8740: ldr      r0, [pc, #0x50]
104a8742: b        #0x104a8798
104a8744: ldr      r1, [sp, #0x160]
104a8746: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a8748: movs     r0, r0
104a874a: vqshl.u64 d17, d24, #0x3f
104a874e: stm      r1!, {r0, r7}
104a8750: str      r2, [sp, #0x120]
104a8752: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a8754: ldr      r2, [sp, #0x290]
104a8756: stm      r1!, {r0, r2, r4, r5, r6, r7}
104a8758: strh     r3, [r6, #0x1e]
104a875a: asrs     r2, r1, #1
104a875c: ldr      r7, [pc, #0x134]
104a875e: strh     r6, [r2, r5]
104a8760: cmp      r2, sl
104a8762: adds     r3, #0x56
104a8764: movs     r0, r0
104a8766: movs     r0, r0
104a8768: ldr      r7, [pc, #0x134]
104a876a: strh     r6, [r2, r5]
104a876c: ldr      r5, [pc, #0x148]
104a876e: adds     r2, #0x58
104a8770: movs     r0, r0
104a8772: movs     r0, r0
104a8774: ldr      r7, [pc, #0x134]
104a8776: strh     r6, [r2, r5]
104a8778: muls     r2, r2, r2
104a877a: adds     r2, #0x59
104a877c: movs     r0, r0
104a877e: movs     r0, r0
104a8780: strb     r5, [r4, #0x17]
104a8782: asrs     r2, r1, #1
104a8784: movs     r1, r0
104a8786: tst      r7, r0
104a8788: .byte    0xff, 0xff
104a878a: pop      {r0, r3, r4, r5, r6, r7}
104a878c: strh     r3, [r4, #0x34]
104a878e: asrs     r2, r1, #1
104a8790: strh     r5, [r0, #0x34]
104a8792: asrs     r2, r1, #1
104a8794: strh     r5, [r0, #0x32]
104a8796: asrs     r2, r1, #1
104a8798: b.w      #0x104c0ffa
104a879c: ldr      r0, [pc, #0x3e4]
104a879e: b.w      #0x1035c986
104a87a2: bx       lr