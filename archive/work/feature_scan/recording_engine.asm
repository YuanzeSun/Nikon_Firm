10487562: mov      r3, r2
10487564: mov      r2, r1
10487566: mov      r1, r0
10487568: movs     r0, #0
1048756a: b.w      #0x10580a4c
1048756e: mov      r3, r2
10487570: mov      r2, r1
10487572: mov      r1, r0
10487574: movs     r0, #0
10487576: b.w      #0x10580aac
1048757a: movs     r0, r0
1048757c: ldrsb    r2, [r5, r3]
1048757e: lsls     r2, r7, #3
10487580: cdp      p0, #0, c0, c0, c2, #0
10487584: .byte    0xe0, 0xf7
10487586: lsls     r5, r0, #0x10
10487588: strh     r7, [r0, #0x3e]
1048758a: movs     r5, r0
1048758c: strb     r0, [r0]
1048758e: movs     r7, r2
10487590: ldr      r0, [pc, #0x3e4]
10487592: movs     r1, #0x10
10487594: b.w      #0x1035c98c
10487598: push     {r3, r4, r5, lr}
1048759a: mov      r5, r0
1048759c: mov      r1, r0
1048759e: ldr      r0, [pc, #0x3d8]
104875a0: mov      r2, sp
104875a2: adds     r0, #0x5c
104875a4: bl       #0x10553a00
104875a8: ldr      r3, [sp]
104875aa: movs     r2, #0
104875ac: mov      r4, r2
104875ae: str      r2, [r3]
104875b0: str      r2, [r3, #0xc]
104875b2: str      r2, [r3, #0x10]
104875b4: str      r2, [r3, #0x1c]
104875b6: add.w    r0, r3, r4, lsl #2
104875ba: adds     r4, r4, #1
104875bc: cmp      r4, #0x18
104875be: str      r2, [r0, #0x20]
104875c0: blt      #0x104875b6
104875c2: ldr      r0, [pc, #0x3b4]
104875c4: movs     r2, #0
104875c6: mov      r1, r5
104875c8: adds     r0, #0x5c
104875ca: bl       #0x105539b2
104875ce: pop      {r3, r4, r5, pc}
104875d0: push.w   {r4, r5, r6, r7, r8, lr}
104875d4: ldr.w    r8, [pc, #0x3a4]
104875d8: sub      sp, #0xe8
104875da: mov      r6, sp
104875dc: ldr      r0, [pc, #0x398]
104875de: movs     r1, #4
104875e0: adds     r0, #0x5c
104875e2: add      r2, sp, #0xe0
104875e4: bl       #0x10553a00
104875e8: cmp      r0, #0
104875ea: beq      #0x10487658
104875ec: ldr      r5, [sp, #0xe0]
104875ee: movs     r1, #0x60
104875f0: mov      r0, sp
104875f2: ldr      r7, [r5, #0x14]
104875f4: ldr      r4, [r5, #0x1c]
104875f6: bl       #0x1035d2dc
104875fa: movs     r0, #0
104875fc: b        #0x1048760a
104875fe: add.w    r1, r5, r0, lsl #2
10487602: ldr      r1, [r1, #0x20]
10487604: str.w    r1, [r6, r0, lsl #2]
10487608: adds     r0, r0, #1
1048760a: cmp      r0, r4
1048760c: blo      #0x104875fe
1048760e: ldr      r0, [pc, #0x368]
10487610: movs     r2, #5
10487612: movs     r1, #4
10487614: adds     r0, #0x5c
10487616: bl       #0x105539b2
1048761a: ldr.w    r1, [r8, #0x18]
1048761e: cbz      r1, #0x10487632
10487620: movs     r1, #0x70
10487622: add      r0, sp, #0x68
10487624: bl       #0x1035d2dc
10487628: movs     r0, #0
1048762a: strd     r7, r4, [sp, #0x70]
1048762e: add      r1, sp, #0x68
10487630: b        #0x1048764c
10487632: movs     r1, #1
10487634: str.w    r1, [r8, #0x18]
10487638: movs     r0, #5
1048763a: bl       #0x10487598
1048763e: b        #0x104875dc
10487640: add.w    r3, r1, r0, lsl #2
10487644: ldr.w    r2, [r6, r0, lsl #2]
10487648: adds     r0, r0, #1
1048764a: str      r2, [r3, #0x10]
1048764c: cmp      r0, r4
1048764e: blo      #0x10487640
10487650: mov      r0, r1
10487652: bl       #0x104a88c2
10487656: b        #0x104875dc
10487658: add      sp, #0xe8
1048765a: pop.w    {r4, r5, r6, r7, r8, pc}
1048765e: push     {r4, lr}
10487660: sub      sp, #0x70
10487662: movs     r2, #0x68
10487664: add      r0, sp, #4
10487666: blx      #0x1035d1ec
1048766a: ldr      r0, [pc, #0x30c]
1048766c: movs     r1, #3
1048766e: mov      r2, sp
10487670: adds     r0, #0x5c
10487672: bl       #0x10553a00
10487676: ldr      r1, [sp]
10487678: movs     r0, #0
1048767a: ldr      r3, [sp, #8]
1048767c: add      r2, sp, #4
1048767e: str      r3, [r1, #0x1c]
10487680: b        #0x10487690
10487682: add.w    r4, r2, r0, lsl #2
10487686: add.w    r3, r1, r0, lsl #2
1048768a: adds     r0, r0, #1
1048768c: ldr      r4, [r4, #8]
1048768e: str      r4, [r3, #0x20]
10487690: ldr      r3, [sp, #8]
10487692: cmp      r3, r0
10487694: bhi      #0x10487682
10487696: ldr      r0, [pc, #0x2e0]
10487698: movs     r2, #4
1048769a: movs     r1, #3
1048769c: adds     r0, #0x5c
1048769e: bl       #0x105539b2
104876a2: ldr      r0, [pc, #0x2d4]
104876a4: movs     r1, #0x20
104876a6: bl       #0x1035c98c
104876aa: add      sp, #0x70
104876ac: pop      {r4, pc}
104876ae: ldr      r0, [pc, #0x2c8]
104876b0: movs     r1, #2
104876b2: push     {r4, r5, r6, lr}
104876b4: adds     r0, #0x5c
104876b6: sub      sp, #0x80
104876b8: bl       #0x10553a52
104876bc: cmp      r0, #0
104876be: beq      #0x1048770c
104876c0: ldr      r0, [pc, #0x2b4]
104876c2: adds     r0, #0x80
104876c4: ldrb.w   r0, [r0, #0x69]
104876c8: cmp      r0, #1
104876ca: beq      #0x10487710
104876cc: cmp      r0, #2
104876ce: bne      #0x1048770c
104876d0: ldr      r0, [pc, #0x2a4]
104876d2: movs     r1, #3
104876d4: adds     r0, #0x5c
104876d6: bl       #0x10553a52
104876da: cmp      r0, #0
104876dc: bne      #0x1048770c
104876de: ldr      r0, [pc, #0x298]
104876e0: movs     r1, #2
104876e2: add      r2, sp, #0x70
104876e4: adds     r0, #0x5c
104876e6: bl       #0x10553a00
104876ea: ldr      r0, [sp, #0x70]
104876ec: movs     r2, #3
104876ee: movs     r1, #2
104876f0: ldr      r6, [r0, #0xc]
104876f2: ldr      r5, [r0, #0x14]
104876f4: ldr      r4, [r0, #4]
104876f6: ldr      r0, [pc, #0x280]
104876f8: adds     r0, #0x5c
104876fa: bl       #0x105539b2
104876fe: add      r2, sp, #0x74
10487700: ldr      r1, [pc, #0x27c]
10487702: add      r0, sp, #0x74
10487704: stm.w    r2, {r4, r5, r6}
10487708: bl       #0x1056c392
1048770c: add      sp, #0x80
1048770e: pop      {r4, r5, r6, pc}
10487710: ldr      r0, [pc, #0x264]
10487712: movs     r1, #2
10487714: add      r2, sp, #0x70
10487716: adds     r0, #0x5c
10487718: bl       #0x10553a00
1048771c: cmp      r0, #0
1048771e: beq      #0x1048770c
10487720: ldr      r0, [sp, #0x70]
10487722: movs     r2, #5
10487724: movs     r1, #2
10487726: ldr      r5, [r0, #0xc]
10487728: ldr      r4, [r0, #4]
1048772a: ldr      r0, [pc, #0x24c]
1048772c: adds     r0, #0x5c
1048772e: bl       #0x105539b2
10487732: movs     r1, #0x70
10487734: mov      r0, sp
10487736: bl       #0x1035d2dc
1048773a: strd     r4, r5, [sp]
1048773e: mov      r0, sp
10487740: bl       #0x104a88c2
10487744: b        #0x10487710
10487746: push.w   {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, lr}
1048774a: ldr      r7, [pc, #0x230]
1048774c: movs     r0, #0
1048774e: mov      sb, r0
10487750: str      r0, [sp]
10487752: movs     r1, #0
10487754: ldr      r0, [pc, #0x220]
10487756: add      r2, sp, #4
10487758: adds     r0, #0x38
1048775a: bl       #0x10553938
1048775e: cbz      r0, #0x104877d0
10487760: ldrd     r8, r5, [sp, #4]
10487764: ldrb.w   sl, [sp, #0xc]
10487768: cbz      r5, #0x104877d2
1048776a: ldr      r0, [pc, #0x20c]
1048776c: movs     r1, #1
1048776e: mov      r2, sp
10487770: adds     r0, #0x5c
10487772: bl       #0x10553a00
10487776: cbnz     r0, #0x1048779a
10487778: ldr      r0, [pc, #0x1fc]
1048777a: movs     r1, #0
1048777c: mov      r2, sp
1048777e: adds     r0, #0x5c
10487780: bl       #0x10553a00
10487784: cbz      r0, #0x104877d4
10487786: bl       #0x10487a9e
1048778a: ldr      r1, [sp]
1048778c: movs     r2, #1
1048778e: str      r0, [r1, #0xc]
10487790: movs     r1, #0
10487792: ldr      r0, [pc, #0x1e4]
10487794: adds     r0, #0x5c
10487796: bl       #0x105539b2
1048779a: ldr      r1, [sp]
1048779c: ldrd     r6, r0, [r1, #0xc]
104877a0: ldrd     r3, r2, [r1, #4]
104877a4: cmp      r0, r2
104877a6: bhi      #0x10487804
104877a8: cmp      r0, r6
104877aa: bhi      #0x10487804
104877ac: subs     r1, r6, r0
104877ae: mov      r4, r5
104877b0: cmp      r1, r4
104877b2: add      r0, r3
104877b4: bhs      #0x104877b8
104877b6: mov      r4, r1
104877b8: mov      r1, r8
104877ba: mov      r2, r4
104877bc: bl       #0x10553c30
104877c0: ldr      r0, [sp]
104877c2: cmp.w    sl, #2
104877c6: ldr      r1, [r0, #0x10]
104877c8: add      r1, r4
104877ca: str      r1, [r0, #0x10]
104877cc: beq      #0x104877e0
104877ce: b        #0x104877e8
104877d0: b        #0x10487804
104877d2: b        #0x104877fe
104877d4: ldr      r2, [r7, #4]
104877d6: cbz      r2, #0x10487804
104877d8: movs     r1, #0
104877da: movs     r0, #1
104877dc: blx      r2
104877de: b        #0x10487804
104877e0: cmp      r5, r4
104877e2: bne      #0x104877e8
104877e4: movs     r2, #1
104877e6: str      r2, [r0]
104877e8: cmp      r1, r6
104877ea: blo      #0x104877f8
104877ec: ldr      r0, [pc, #0x188]
104877ee: movs     r2, #2
104877f0: movs     r1, #1
104877f2: adds     r0, #0x5c
104877f4: bl       #0x105539b2
104877f8: subs     r5, r5, r4
104877fa: add      r8, r4
104877fc: b        #0x10487768
104877fe: cmp.w    sb, #0
10487802: beq      #0x10487752
10487804: ldr      r0, [pc, #0x170]
10487806: movs     r1, #0
10487808: adds     r0, #0x5c
1048780a: bl       #0x10553a52
1048780e: cmp      r0, #4
10487810: bhi      #0x1048781e
10487812: ldr      r2, [r7, #4]
10487814: cmp      r2, #0
10487816: beq      #0x1048781e
10487818: movs     r1, #0
1048781a: movs     r0, #1
1048781c: blx      r2
1048781e: pop.w    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, pc}
10487822: ldr      r0, [pc, #0x158]
10487824: mov.w    r1, #-1
10487828: push     {r4, lr}
1048782a: adds     r0, #8
1048782c: bl       #0x1035d37a
10487830: ldr      r0, [pc, #0x144]
10487832: adds     r0, #0x38
10487834: bl       #0x10553852
10487838: ldr      r0, [pc, #0x13c]
1048783a: adds     r0, #0x5c
1048783c: bl       #0x10553852
10487840: ldr      r0, [pc, #0x138]
10487842: movs     r1, #0
10487844: str      r1, [r0, #0xc]
10487846: str      r1, [r0, #0x10]
10487848: str      r1, [r0, #0x14]
1048784a: str      r1, [r0, #0x18]
1048784c: movs     r1, #0x80
1048784e: ldr      r0, [pc, #0x128]
10487850: pop.w    {r4, lr}
10487854: adds     r0, #0x80
10487856: b.w      #0x1035d2dc
1048785a: push     {r4, r5, r6, lr}
1048785c: ldr      r4, [pc, #0x11c]
1048785e: mov      r5, r0
10487860: lsls     r0, r0, #0x1f
10487862: beq      #0x1048787a
10487864: ldrb     r0, [r4]
10487866: cbnz     r0, #0x10487870
10487868: bl       #0x10487b84
1048786c: movs     r0, #1
1048786e: strb     r0, [r4]
10487870: ldr      r0, [pc, #0x108]
10487872: movs     r1, #1
10487874: adds     r0, #8
10487876: bl       #0x1035d374
1048787a: lsls     r0, r5, #0x1e
1048787c: bpl      #0x1048789c
1048787e: ldrb     r0, [r4]
10487880: cbz      r0, #0x10487892
10487882: cmp      r0, #1
10487884: bne      #0x10487892
10487886: bl       #0x10487746
1048788a: bl       #0x10487b02
1048788e: movs     r0, #2
10487890: strb     r0, [r4]
10487892: ldr      r0, [pc, #0xe8]
10487894: movs     r1, #2
10487896: adds     r0, #8
10487898: bl       #0x1035d374
1048789c: lsls     r0, r5, #0x1d
1048789e: bpl      #0x104878f2
104878a0: ldrb     r0, [r4]
104878a2: cbz      r0, #0x104878e8
104878a4: cmp      r0, #1
104878a6: beq      #0x104878e8
104878a8: cmp      r0, #2
104878aa: bne      #0x104878e8
104878ac: movs     r6, #0
104878ae: ldr      r0, [pc, #0xc8]
104878b0: movs     r1, #5
104878b2: adds     r0, #0x5c
104878b4: bl       #0x10553a52
104878b8: cbz      r0, #0x104878c6
104878ba: movs     r0, #0x1e
104878bc: bl       #0x103dec94
104878c0: adds     r6, r6, #1
104878c2: cmp      r6, #0x64
104878c4: blt      #0x104878ae
104878c6: ldr      r0, [pc, #0xb0]
104878c8: movs     r1, #0
104878ca: adds     r0, #0x5c
104878cc: bl       #0x10553a52
104878d0: ldr      r0, [pc, #0xa4]
104878d2: adds     r0, #0x80
104878d4: ldrb.w   r0, [r0, #0x69]
104878d8: cmp      r0, #2
104878da: bne      #0x104878e0
104878dc: bl       #0x1056c36c
104878e0: bl       #0x10487822
104878e4: movs     r0, #0
104878e6: strb     r0, [r4]
104878e8: ldr      r0, [pc, #0x90]
104878ea: movs     r1, #4
104878ec: adds     r0, #8
104878ee: bl       #0x1035d374
104878f2: lsls     r0, r5, #0x1c
104878f4: bpl      #0x10487902
104878f6: ldrb     r0, [r4]
104878f8: cbz      r0, #0x10487902
104878fa: cmp      r0, #1
104878fc: bne      #0x10487902
104878fe: bl       #0x10487746
10487902: lsls     r0, r5, #0x1b
10487904: bpl      #0x10487912
10487906: ldrb     r0, [r4]
10487908: cbz      r0, #0x10487912
1048790a: cmp      r0, #1
1048790c: bne      #0x10487912
1048790e: bl       #0x104876ae
10487912: lsls     r0, r5, #0x1a
10487914: bpl      #0x10487926
10487916: ldrb     r0, [r4]
10487918: cmp      r0, #0
1048791a: beq      #0x10487926
1048791c: cmp      r0, #1
1048791e: bne      #0x10487926
10487920: pop.w    {r4, r5, r6, lr}
10487924: b        #0x104875d0
10487926: pop      {r4, r5, r6, pc}
10487928: push     {r4, lr}
1048792a: movs     r4, #0x3f
1048792c: movs     r0, #0x23
1048792e: bl       #0x103d6546
10487932: ldr      r1, [pc, #0x50]
10487934: mov      r3, r0
10487936: ldr      r0, [pc, #0x40]
10487938: mov      r2, r4
1048793a: bl       #0x1035c95e
1048793e: ldr      r0, [pc, #0x3c]
10487940: adr      r1, #0x44
10487942: adds     r0, #8
10487944: bl       #0x1035d32a
10487948: ldr      r0, [pc, #0x2c]
1048794a: movs     r2, #0x1e
1048794c: ldr      r1, [pc, #0x50]
1048794e: adr      r3, #0x44
10487950: adds     r0, #0x2c
10487952: bl       #0x103d7fb8
10487956: ldr      r0, [pc, #0x20]
10487958: movs     r3, #0xc
1048795a: movs     r2, #0x14
1048795c: movs     r1, #1
1048795e: adds     r0, #0x38
10487960: bl       #0x105537a4
10487964: ldr      r0, [pc, #0x10]
10487966: movs     r3, #0x80
10487968: movs     r2, #0x14
1048796a: movs     r1, #6
1048796c: pop.w    {r4, lr}
10487970: adds     r0, #0x5c
10487972: b.w      #0x105537a4
10487976: movs     r0, r0
10487978: ldrh     r0, [r5, #0x24]
1048797a: stm      r1!, {r0, r2, r4, r5, r6, r7}
1048797c: asrs     r0, r4, #0x1d
1048797e: stm      r1!, {r0, r7}
10487980: strb     r7, [r3, #0x19]
10487982: asrs     r0, r1, #1
10487984: ldrb     r3, [r3, #1]
10487986: asrs     r0, r1, #1
10487988: ldr      r7, [pc, #0x134]
1048798a: strh     r6, [r2, r5]
1048798c: cmp      r2, sl
1048798e: adds     r2, #0x56
10487990: movs     r0, r0
10487992: movs     r0, r0
10487994: ldr      r7, [pc, #0x134]
10487996: strh     r6, [r2, r5]
10487998: muls     r2, r2, r2
1048799a: adds     r1, #0x59
1048799c: movs     r0, r0
1048799e: movs     r0, r0
104879a0: strb     r1, [r2, #0x16]
104879a2: asrs     r0, r1, #1
104879a4: cmp      r0, #2
104879a6: bne      #0x104879ac
104879a8: movs     r0, #5
104879aa: b        #0x10487598
104879ac: bx       lr
104879ae: ldr      r1, [pc, #0x24c]
104879b0: movs     r0, #0
104879b2: push     {r4, lr}
104879b4: strb     r0, [r1]
104879b6: bl       #0x10487822
104879ba: pop.w    {r4, lr}
104879be: ldr      r0, [pc, #0x240]
104879c0: b.w      #0x104a87b0
104879c4: ldr      r0, [pc, #0x23c]
104879c6: b.w      #0x1035c986
104879ca: bx       lr
104879cc: ldr      r1, [pc, #0x22c]
104879ce: str      r0, [r1, #4]
104879d0: bx       lr
104879d2: push     {r3, lr}
104879d4: movs     r1, #0
104879d6: movs     r2, #0x80
104879d8: str      r1, [sp]
104879da: mov      r1, r0
104879dc: ldr      r0, [pc, #0x224]
104879de: adds     r0, #0x80
104879e0: blx      #0x1035d1ec
104879e4: ldr      r0, [pc, #0x21c]
104879e6: movs     r1, #1
104879e8: bl       #0x1035c98c
104879ec: ldr      r0, [pc, #0x20c]
104879ee: movs     r1, #1
104879f0: mov      r2, sp
104879f2: adds     r0, #8
104879f4: bl       #0x1035d382
104879f8: ldr      r0, [sp]
104879fa: and      r1, r0, #1
104879fe: ldr      r0, [pc, #0x1fc]
10487a00: adds     r0, #8
10487a02: bl       #0x1035d37a
10487a06: pop      {r3, pc}
10487a08: push     {r3, lr}
10487a0a: movs     r0, #0
10487a0c: movs     r1, #2
10487a0e: str      r0, [sp]
10487a10: ldr      r0, [pc, #0x1f0]
10487a12: bl       #0x1035c98c
10487a16: ldr      r0, [pc, #0x1e4]
10487a18: movs     r1, #2
10487a1a: mov      r2, sp
10487a1c: adds     r0, #8
10487a1e: bl       #0x1035d382
10487a22: ldr      r0, [sp]
10487a24: and      r1, r0, #2
10487a28: ldr      r0, [pc, #0x1d0]
10487a2a: adds     r0, #8
10487a2c: bl       #0x1035d37a
10487a30: pop      {r3, pc}
10487a32: push     {r3, lr}
10487a34: movs     r0, #0
10487a36: movs     r1, #4
10487a38: str      r0, [sp]
10487a3a: ldr      r0, [pc, #0x1c8]
10487a3c: bl       #0x1035c98c
10487a40: ldr      r0, [pc, #0x1b8]
10487a42: movs     r1, #4
10487a44: mov      r2, sp
10487a46: adds     r0, #8
10487a48: bl       #0x1035d382
10487a4c: ldr      r0, [sp]
10487a4e: and      r1, r0, #4
10487a52: ldr      r0, [pc, #0x1a8]
10487a54: adds     r0, #8
10487a56: bl       #0x1035d37a
10487a5a: pop      {r3, pc}
10487a5c: push     {r1, r2, r3, r4, r5, lr}
10487a5e: ldr      r4, [pc, #0x19c]
10487a60: ldrb     r3, [r4]
10487a62: cmp      r3, #1
10487a64: bne      #0x10487a8e
10487a66: cmp      r0, #0
10487a68: beq      #0x10487a8e
10487a6a: cmp      r1, #0
10487a6c: beq      #0x10487a8e
10487a6e: movs     r3, #0
10487a70: stm.w    sp, {r0, r1, r3}
10487a74: ldr      r0, [pc, #0x18c]
10487a76: mov      r1, r3
10487a78: strb.w   r2, [sp, #8]
10487a7c: mov      r2, sp
10487a7e: adds     r0, #0x38
10487a80: bl       #0x105538c2
10487a84: cbz      r0, #0x10487a90
10487a86: ldr      r0, [pc, #0x17c]
10487a88: movs     r1, #8
10487a8a: bl       #0x1035c98c
10487a8e: pop      {r1, r2, r3, r4, r5, pc}
10487a90: ldr      r2, [r4, #4]
10487a92: cmp      r2, #0
10487a94: beq      #0x10487a8e
10487a96: movs     r1, #0
10487a98: movs     r0, #1
10487a9a: blx      r2
10487a9c: pop      {r1, r2, r3, r4, r5, pc}
10487a9e: ldr      r3, [pc, #0x164]
10487aa0: movs     r0, #0
10487aa2: push     {r4, r5, lr}
10487aa4: adds     r3, #0x80
10487aa6: ldr      r1, [pc, #0x160]
10487aa8: mov.w    r2, #0x16800
10487aac: ldrb.w   r4, [r3, #0x67]
10487ab0: cmp      r4, #7
10487ab2: bhs      #0x10487ac6
10487ab4: tbb      [pc, r4]
10487ab8: lsls     r4, r0, #0x18
10487aba: lsls     r4, r0, #0x18
10487abc: lsls     r4, r0, #0x10
10487abe: movs     r6, r0
10487ac0: mov      r0, r1
10487ac2: b        #0x10487ac6
10487ac4: mov      r0, r2
10487ac6: ldrb.w   r1, [r3, #0x69]
10487aca: cmp      r1, #2
10487acc: bne      #0x10487af8
10487ace: ldr      r1, [pc, #0x12c]
10487ad0: movw     r2, #0x1000
10487ad4: ldr      r3, [r1, #0x14]
10487ad6: cbz      r3, #0x10487afa
10487ad8: udiv     r2, r0, r2
10487adc: ldrd     r4, r3, [r1, #0xc]
10487ae0: adds     r4, r4, #1
10487ae2: muls     r0, r4, r0
10487ae4: adds     r5, r3, r2
10487ae6: adds     r5, r5, #1
10487ae8: lsls     r5, r5, #0xc
10487aea: cmp      r5, r0
10487aec: bhi      #0x10487af0
10487aee: adds     r2, r2, #1
10487af0: add      r3, r2
10487af2: lsls     r0, r2, #0xc
10487af4: strd     r4, r3, [r1, #0xc]
10487af8: pop      {r4, r5, pc}
10487afa: movs     r3, #1
10487afc: mov      r0, r2
10487afe: str      r3, [r1, #0x14]
10487b00: pop      {r4, r5, pc}
10487b02: push     {r3, r4, r5, r6, r7, lr}
10487b04: ldr      r0, [pc, #0xfc]
10487b06: movs     r1, #1
10487b08: mov      r2, sp
10487b0a: adds     r0, #0x5c
10487b0c: bl       #0x10553a00
10487b10: cmp      r0, #1
10487b12: bne      #0x10487b40
10487b14: ldr      r1, [sp]
10487b16: ldrd     r3, r0, [r1, #0xc]
10487b1a: ldrd     r4, r2, [r1, #4]
10487b1e: cmp      r0, r2
10487b20: bhi      #0x10487b82
10487b22: cmp      r0, r3
10487b24: bhi      #0x10487b82
10487b26: subs     r2, r3, r0
10487b28: str      r3, [r1, #0x10]
10487b2a: add      r0, r4
10487b2c: beq      #0x10487b34
10487b2e: movs     r1, #0
10487b30: bl       #0x10553c6a
10487b34: ldr      r0, [pc, #0xcc]
10487b36: movs     r2, #2
10487b38: movs     r1, #1
10487b3a: adds     r0, #0x5c
10487b3c: bl       #0x105539b2
10487b40: movs     r4, #0
10487b42: ldr      r0, [pc, #0xc0]
10487b44: movs     r1, #2
10487b46: adds     r0, #0x5c
10487b48: bl       #0x10553a52
10487b4c: mov      r6, r0
10487b4e: ldr      r0, [pc, #0xb4]
10487b50: movs     r1, #3
10487b52: adds     r0, #0x5c
10487b54: bl       #0x10553a52
10487b58: mov      r5, r0
10487b5a: ldr      r0, [pc, #0xa8]
10487b5c: movs     r1, #4
10487b5e: adds     r0, #0x5c
10487b60: bl       #0x10553a52
10487b64: mov      r1, r0
10487b66: orr.w    r0, r6, r5
10487b6a: orrs     r0, r1
10487b6c: beq      #0x10487b82
10487b6e: bl       #0x104876ae
10487b72: bl       #0x104875d0
10487b76: movs     r0, #0x1e
10487b78: bl       #0x103dec94
10487b7c: adds     r4, r4, #1
10487b7e: cmp      r4, #0x64
10487b80: blt      #0x10487b42
10487b82: pop      {r3, r4, r5, r6, r7, pc}
10487b84: push     {r4, r5, r6, r7, lr}
10487b86: sub      sp, #0x8c
10487b88: mov.w    r4, #0x18000
10487b8c: movs     r7, #0x14
10487b8e: lsls     r6, r4, #1
10487b90: movs     r1, #6
10487b92: movs     r0, #2
10487b94: add      r3, sp, #0x88
10487b96: add      r2, sp, #0x80
10487b98: bl       #0x104a757e
10487b9c: movs     r5, #0
10487b9e: mov      r0, sp
10487ba0: movs     r1, #0x80
10487ba2: bl       #0x1035d2dc
10487ba6: ldr      r0, [sp, #0x80]
10487ba8: mov      r2, sp
10487baa: mla      r0, r6, r5, r0
10487bae: strd     r0, r4, [sp, #4]
10487bb2: ldr      r1, [sp, #4]
10487bb4: adds     r0, r1, r4
10487bb6: strd     r0, r4, [sp, #0x14]
10487bba: ldr      r0, [pc, #0x48]
10487bbc: movs     r1, #0
10487bbe: adds     r0, #0x5c
10487bc0: bl       #0x105538c2
10487bc4: adds     r5, r5, #1
10487bc6: cmp      r5, r7
10487bc8: blo      #0x10487b9e
10487bca: ldr      r1, [pc, #0x30]
10487bcc: movs     r0, #0
10487bce: str      r0, [r1, #0xc]
10487bd0: str      r0, [r1, #0x10]
10487bd2: str      r0, [r1, #0x14]
10487bd4: str      r0, [r1, #0x18]
10487bd6: ldr      r0, [pc, #0x2c]
10487bd8: adds     r0, #0x80
10487bda: ldrb.w   r0, [r0, #0x69]
10487bde: cmp      r0, #2
10487be0: bne      #0x10487bec
10487be2: ldr      r0, [pc, #0x28]
10487be4: str      r0, [sp, #0x84]
10487be6: add      r0, sp, #0x84
10487be8: bl       #0x1056c340
10487bec: ldr      r0, [pc, #0x14]
10487bee: movs     r1, #0
10487bf0: adds     r0, #0x2c
10487bf2: bl       #0x103d7fe6
10487bf6: add      sp, #0x8c
10487bf8: pop      {r4, r5, r6, r7, pc}
10487bfa: movs     r0, r0
10487bfc: asrs     r0, r4, #0x1d
10487bfe: stm      r1!, {r0, r7}
10487c00: ldrb     r5, [r4, #6]
10487c02: asrs     r0, r1, #1
10487c04: ldrh     r0, [r5, #0x24]
10487c06: stm      r1!, {r0, r2, r4, r5, r6, r7}
10487c08: strb     r0, [r4, #0x1d]
10487c0a: movs     r1, r0
10487c0c: subs     r4, #0x31
10487c0e: asrs     r5, r2, #1
10487c10: ldr      r0, [pc, #0x3e4]
10487c12: ldr      r1, [r0, #8]
10487c14: adds     r1, r1, #1
10487c16: str      r1, [r0, #8]
10487c18: ldr.w    r2, [r0, #0xc4]
10487c1c: add.w    r2, r0, r2, lsl #2
10487c20: ldr.w    r3, [r2, #0xcc]
10487c24: cmp      r1, r3
10487c26: blo      #0x10487c30
10487c28: ldr      r0, [r2, #0x10]
10487c2a: adds     r0, r0, #1
10487c2c: str      r0, [r2, #0x10]
10487c2e: bx       lr
10487c30: ldr.w    r1, [r0, #0xc0]
10487c34: add.w    r0, r0, r1, lsl #2
10487c38: ldr      r1, [r0, #0x10]
10487c3a: adds     r1, r1, #1
10487c3c: str      r1, [r0, #0x10]
10487c3e: bx       lr
10487c40: push     {r4, r5, r6, lr}
10487c42: ldr      r4, [pc, #0x3b4]
10487c44: movs     r5, #1
10487c46: subs     r4, #0x24
10487c48: ldr      r0, [r4, #0xc]
10487c4a: cmp      r0, #1
10487c4c: beq      #0x10487c5e
10487c4e: bl       #0x104a520c
10487c52: cmp      r0, #1
10487c54: bne      #0x10487c82
10487c56: str      r5, [r4, #0xc]
10487c58: pop.w    {r4, r5, r6, lr}
10487c5c: b        #0x10487c10
10487c5e: ldr      r1, [pc, #0x398]
10487c60: str      r5, [r4, #0x10]
10487c62: ldr      r0, [r4, #0x14]
10487c64: subs     r1, #0xe8
10487c66: adds     r0, r0, #1
10487c68: str      r0, [r4, #0x14]
10487c6a: ldr      r1, [r1, #0x70]
10487c6c: cmp      r1, #1
10487c6e: bne      #0x10487c82
10487c70: ldr      r1, [r4, #0x18]
10487c72: cmp      r1, #1
10487c74: bne      #0x10487c82
10487c76: cmp      r0, #2
10487c78: blo      #0x10487c82
10487c7a: pop.w    {r4, r5, r6, lr}
10487c7e: b.w      #0x104a5200
10487c82: pop      {r4, r5, r6, pc}
10487c84: ldr      r0, [pc, #0x370]
10487c86: push     {r3, lr}
10487c88: subs     r0, #0xe8
10487c8a: movs     r1, #0
10487c8c: str      r1, [sp]
10487c8e: ldrb.w   r1, [r0, #0x58]
10487c92: cbz      r1, #0x10487c9a
10487c94: cmp      r1, #1
10487c96: beq      #0x10487ca0
10487c98: b        #0x10487cac
10487c9a: ldr      r0, [r0, #0x5c]
10487c9c: str      r0, [sp]
10487c9e: b        #0x10487cac
10487ca0: ldrb.w   r1, [r0, #0x67]
10487ca4: mov      r2, sp
10487ca6: ldr      r0, [r0, #0x60]
10487ca8: bl       #0x10553b4e
10487cac: ldr      r0, [sp]
10487cae: pop      {r3, pc}
10487cb0: push.w   {r0, r4, r5, r6, r7, r8, sb, sl, fp, lr}
10487cb4: subw     sp, sp, #0x828
10487cb8: ldr.w    sl, [pc, #0x340]
10487cbc: movs     r5, #0
10487cbe: movs     r6, #2
10487cc0: ldr.w    r0, [sp, #0x828]
10487cc4: str.w    r5, [sp, #0x808]
10487cc8: strb     r5, [r0]
10487cca: str.w    r5, [sp, #0x810]
10487cce: str.w    r5, [sp, #0x80c]
10487cd2: str.w    r5, [sp, #0x814]
10487cd6: movs     r1, #0
10487cd8: ldr      r0, [pc, #0x324]
10487cda: addw     r2, sp, #0x818
10487cde: bl       #0x10553a00
10487ce2: cmp      r0, #1
10487ce4: bne      #0x10487d1c
10487ce6: ldr.w    r1, [sp, #0x818]
10487cea: add.w    r0, sp, #0x400
10487cee: movw     r2, #0x3f0
10487cf2: blx      #0x1035d1ec
10487cf6: ldr      r7, [pc, #0x308]
10487cf8: adds     r7, #0x28
10487cfa: ldr      r0, [r7, #0x70]
10487cfc: cmp      r0, #1
10487cfe: bne      #0x10487d24
10487d00: add.w    r1, r7, #0x80
10487d04: ldr.w    r0, [sp, #0x7c8]
10487d08: ldrh     r1, [r1, #4]
10487d0a: cmp      r0, r1
10487d0c: bhs      #0x10487d24
10487d0e: movs     r2, #0
10487d10: ldr      r0, [pc, #0x2ec]
10487d12: mov      r1, r2
10487d14: bl       #0x10553938
10487d18: strb.w   r6, [sl, #3]
10487d1c: addw     sp, sp, #0x82c
10487d20: pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
10487d24: ldr      r0, [pc, #0x2d8]
10487d26: movs     r2, #1
10487d28: movs     r1, #0
10487d2a: bl       #0x105539b2
10487d2e: ldr      r0, [pc, #0x2d0]
10487d30: movs     r1, #0
10487d32: bl       #0x10553a52
10487d36: movs     r1, #1
10487d38: mov      r4, r0
10487d3a: ldr      r0, [pc, #0x2c4]
10487d3c: bl       #0x10553a52
10487d40: add      r0, r4
10487d42: adds     r0, r0, #4
10487d44: cmp      r0, #0x14
10487d46: blo      #0x10487d54
10487d48: ldr      r0, [pc, #0x2b4]
10487d4a: movw     r1, #0x800
10487d4e: subs     r0, #0x50
10487d50: bl       #0x1035c98c
10487d54: ldr      r4, [pc, #0x2a0]
10487d56: addw     r2, sp, #0x808
10487d5a: ldr.w    r0, [sp, #0x7c8]
10487d5e: ldr      r1, [r4, #0x68]
10487d60: add      r0, r1
10487d62: str      r0, [r4, #0x68]
10487d64: ldrb.w   r1, [r7, #0x67]
10487d68: bl       #0x10553b4e
10487d6c: ldr      r0, [r7, #0x70]
10487d6e: cbz      r0, #0x10487d7a
10487d70: ldr.w    r0, [sp, #0x808]
10487d74: lsls     r0, r0, #1
10487d76: str.w    r0, [sp, #0x808]
10487d7a: bl       #0x10487c84
10487d7e: ldr.w    r1, [sp, #0x808]
10487d82: add.w    r0, r0, #0x3e8
10487d86: cmp      r0, r1
10487d88: bhi      #0x10487d98
10487d8a: movs     r0, #1
10487d8c: str      r0, [r4, #0x6c]
10487d8e: lsls     r1, r0, #9
10487d90: ldr      r0, [pc, #0x26c]
10487d92: subs     r0, #0x50
10487d94: bl       #0x1035c98c
10487d98: ldr      r0, [r4, #0x6c]
10487d9a: cbnz     r0, #0x10487ddc
10487d9c: ldrb.w   r0, [r4, #0xf4]
10487da0: cmp      r0, #3
10487da2: bne      #0x10487ddc
10487da4: ldr.w    r0, [r4, #0xc4]
10487da8: ldr      r1, [r4, #0x68]
10487daa: add.w    r2, r4, r0, lsl #2
10487dae: ldr.w    r2, [r2, #0xcc]
10487db2: cmp      r1, r2
10487db4: blo      #0x10487ddc
10487db6: movs     r2, #0
10487db8: str.w    r0, [r4, #0xc0]
10487dbc: add.w    r0, r4, r0, lsl #3
10487dc0: strb.w   r5, [r4, #0xf4]
10487dc4: mov.w    r1, #0x3200000
10487dc8: mov.w    ip, #1
10487dcc: str.w    ip, [sp, #0x810]
10487dd0: movs     r3, #3
10487dd2: strd     r1, r2, [r0, #0x70]
10487dd6: ldr.w    r0, [sp, #0x828]
10487dda: strb     r3, [r0]
10487ddc: ldrb.w   r1, [r7, #0x69]
10487de0: ldr.w    r0, [sp, #0x404]
10487de4: cmp      r1, #1
10487de6: beq      #0x10487dee
10487de8: cmp      r1, #2
10487dea: beq      #0x10487df4
10487dec: b        #0x10487df8
10487dee: ldr      r1, [pc, #0x214]
10487df0: add      r0, r1
10487df2: b        #0x10487df8
10487df4: add.w    r0, r0, #0x4b00
10487df8: ldr.w    lr, [r4, #0xc0]
10487dfc: mov.w    r7, #0
10487e00: mov      r3, r7
10487e02: add.w    r1, r4, lr, lsl #3
10487e06: str.w    r1, [sp, #0x820]
10487e0a: ldrd     r2, r1, [r1, #0x70]
10487e0e: adds.w   fp, r2, r0
10487e12: mov      r2, r7
10487e14: adcs     r1, r5
10487e16: str.w    r1, [sp, #0x7f0]
10487e1a: str.w    r1, [sp, #0x7fc]
10487e1e: b        #0x10487e30
10487e20: add.w    r1, r4, r2, lsl #3
10487e24: adds     r2, r2, #1
10487e26: ldrd     ip, r1, [r1, #0x70]
10487e2a: adds.w   r7, ip, r7
10487e2e: adcs     r3, r1
10487e30: cmp      lr, r2
10487e32: bhs      #0x10487e20
10487e34: ldr      r1, [pc, #0x1c8]
10487e36: mov      r8, r5
10487e38: ldr.w    ip, [pc, #0x1cc]
10487e3c: adds     r1, #0x28
10487e3e: adds     r0, r7, r0
10487e40: adc.w    r3, r3, r8
10487e44: ldr      r1, [r1, #0x54]
10487e46: cbz      r1, #0x10487e72
10487e48: ldr.w    r2, [sp, #0x7f0]
10487e4c: movs     r7, #0xff
10487e4e: subs.w   r1, ip, fp
10487e52: sbcs     r7, r2
10487e54: blo      #0x10487e9c
10487e56: ldr      r1, [pc, #0x1a8]
10487e58: adds     r1, #0x28
10487e5a: ldrd     r2, r1, [r1, #0x48]
10487e5e: subs     r0, r2, r0
10487e60: sbcs     r1, r3
10487e62: blo      #0x10487e9c
10487e64: ldr.w    r2, [sp, #0x820]
10487e68: ldr.w    r0, [sp, #0x7fc]
10487e6c: strd     fp, r0, [r2, #0x70]
10487e70: b        #0x10487fd2
10487e72: ldr.w    r7, [sp, #0x7f0]
10487e76: movs     r2, #0
10487e78: subs.w   r1, ip, fp
10487e7c: sbcs     r2, r7
10487e7e: blo      #0x10487e9c
10487e80: ldr      r1, [pc, #0x17c]
10487e82: adds     r1, #0x28
10487e84: ldrd     r2, r1, [r1, #0x48]
10487e88: subs     r0, r2, r0
10487e8a: sbcs     r1, r3
10487e8c: blo      #0x10487e9c
10487e8e: ldr.w    r2, [sp, #0x820]
10487e92: ldr.w    r0, [sp, #0x7fc]
10487e96: strd     fp, r0, [r2, #0x70]
10487e9a: b        #0x10487eb2
10487e9c: movs     r0, #1
10487e9e: str      r0, [r4, #0x6c]
10487ea0: lsls     r1, r0, #0xb
10487ea2: ldr      r0, [pc, #0x15c]
10487ea4: subs     r0, #0x50
10487ea6: bl       #0x1035c98c
10487eaa: ldr      r0, [pc, #0x154]
10487eac: adds     r0, #0x28
10487eae: ldr      r0, [r0, #0x54]
10487eb0: cbnz     r0, #0x10487f30
10487eb2: ldr      r0, [r4, #0x6c]
10487eb4: cbnz     r0, #0x10487f30
10487eb6: ldr      r0, [pc, #0x148]
10487eb8: mov      r7, r4
10487eba: adds     r0, #0x28
10487ebc: ldr      r1, [r0]
10487ebe: ldr.w    r0, [r4, #0xc4]
10487ec2: adds     r0, r0, #1
10487ec4: cmp      r0, r1
10487ec6: bhs      #0x10487f30
10487ec8: ldr.w    r0, [r7, #0xf8]
10487ecc: mov      r2, fp
10487ece: ldr.w    r1, [sp, #0x7f0]
10487ed2: subs.w   r0, fp, r0
10487ed6: sbcs.w   r1, r1, r8
10487eda: blo      #0x10487ee6
10487edc: ldrb.w   r0, [r7, #0xf4]
10487ee0: cmp      r0, #3
10487ee2: bne      #0x10487f8c
10487ee4: b        #0x10487f94
10487ee6: ldrb.w   r0, [r4, #0xf4]
10487eea: mov      sb, r4
10487eec: cbz      r0, #0x10487ef8
10487eee: cmp      r0, #1
10487ef0: beq      #0x10487f36
10487ef2: cmp      r0, #2
10487ef4: beq      #0x10487f7e
10487ef6: b        #0x10487f94
10487ef8: ldr.w    r1, [sb, #0xfc]
10487efc: ldr.w    r0, [sp, #0x7f0]
10487f00: subs     r1, r2, r1
10487f02: sbcs.w   r0, r0, r8
10487f06: blo      #0x10487f94
10487f08: bl       #0x10487c84
10487f0c: ldr.w    r2, [sb, #0xc]
10487f10: movw     r1, #0x7530
10487f14: add      r1, r2
10487f16: cmp      r0, r1
10487f18: blo      #0x10487f94
10487f1a: ldr.w    r0, [sp, #0x810]
10487f1e: cbnz     r0, #0x10487f7c
10487f20: str.w    r8, [sb, #0x104]
10487f24: movs     r0, #1
10487f26: strb.w   r0, [sb, #0xf4]
10487f2a: ldr.w    r1, [sp, #0x828]
10487f2e: b        #0x10487f32
10487f30: b        #0x10487fd2
10487f32: strb     r0, [r1]
10487f34: b        #0x10487f94
10487f36: ldr.w    r0, [sb, #0x104]
10487f3a: mov      r3, r2
10487f3c: ldr.w    r1, [sp, #0x7f0]
10487f40: adds     r0, r0, #1
10487f42: str.w    r0, [sb, #0x104]
10487f46: ldr.w    r2, [sb, #0x100]
10487f4a: subs     r2, r3, r2
10487f4c: sbcs.w   r1, r1, r8
10487f50: bhs      #0x10487f56
10487f52: cmp      r0, #0x28
10487f54: blo      #0x10487f94
10487f56: bl       #0x10487c84
10487f5a: ldr.w    r2, [sb, #0xc]
10487f5e: movw     r1, #0x2710
10487f62: add      r1, r2
10487f64: cmp      r0, r1
10487f66: blo      #0x10487f94
10487f68: ldr.w    r0, [sp, #0x810]
10487f6c: cbnz     r0, #0x10487f7c
10487f6e: str.w    r8, [sb, #0x104]
10487f72: strb.w   r6, [sb, #0xf4]
10487f76: ldr.w    r0, [sp, #0x828]
10487f7a: strb     r6, [r0]
10487f7c: b        #0x10487f94
10487f7e: ldr.w    r0, [sb, #0x104]
10487f82: adds     r0, r0, #1
10487f84: str.w    r0, [r4, #0x104]
10487f88: cmp      r0, #0x14
10487f8a: blo      #0x10487f94
10487f8c: movs     r0, #1
10487f8e: str.w    r0, [sp, #0x80c]
10487f92: b        #0x10487f9c
10487f94: ldr.w    r0, [sp, #0x80c]
10487f98: cmp      r0, #1
10487f9a: bne      #0x10487fd2
10487f9c: str.w    r8, [r7, #0x104]
10487fa0: ldr.w    r1, [r7, #0xc4]
10487fa4: adds     r1, r1, #1
10487fa6: str.w    r1, [r7, #0xc4]
10487faa: ldr.w    r0, [r7, #0xc8]
10487fae: cbz      r0, #0x10487fc0
10487fb0: ldr      r2, [r7, #8]
10487fb2: udiv     r2, r2, r0
10487fb6: adds     r2, r2, #2
10487fb8: muls     r2, r0, r2
10487fba: adds     r2, r2, #1
10487fbc: str.w    r2, [sp, #0x814]
10487fc0: add.w    r2, r7, r1, lsl #2
10487fc4: ldr.w    r1, [sp, #0x814]
10487fc8: movs     r0, #3
10487fca: str.w    r1, [r2, #0xcc]
10487fce: strb.w   r0, [r7, #0xf4]
10487fd2: add      r0, sp, #8
10487fd4: movw     r1, #0x3f8
10487fd8: bl       #0x1035d2dc
10487fdc: ldr      r1, [r4, #0x6c]
10487fde: movs     r0, #0
10487fe0: str      r1, [sp, #8]
10487fe2: add.w    r3, sp, #0x400
10487fe6: ldr.w    r1, [r4, #0xc0]
10487fea: add      r7, sp, #8
10487fec: str      r1, [sp, #0xc]
10487fee: ldr.w    r1, [sp, #0x404]
10487ff2: str      r1, [sp, #0x10]
10487ff4: b        #0x1048802c
10487ff6: movs     r0, r0
10487ff8: ldrh     r0, [r7, #0x38]
10487ffa: stm      r1!, {r0, r2, r4, r5, r6, r7}
10487ffc: asrs     r4, r7, #0x1d
10487ffe: stm      r1!, {r0, r7}
10488000: ldrh     r0, [r5, #0x30]
10488002: stm      r1!, {r0, r2, r4, r5, r6, r7}
10488004: strb     r0, [r0, #0x1c]
10488006: movs     r1, r0
10488008: movs     r0, r0
1048800a: vtbl.8   d30, {d15, d16, d17, d18}, d3
1048800e: asrs     r0, r0, #8
10488010: add.w    r1, r7, r0, lsl #4
10488014: ldr      r4, [r2, #8]
10488016: str      r4, [r1, #0xc]
10488018: ldr      r4, [r2, #0xc]
1048801a: str      r4, [r1, #0x10]
1048801c: ldr      r4, [r2, #0x10]
1048801e: str      r4, [r1, #0x14]
10488020: ldr      r2, [r2, #0x14]
10488022: str      r2, [r1, #0x18]
10488024: ldr      r1, [sp, #0x3d4]
10488026: adds     r1, r1, #1
10488028: str      r1, [sp, #0x3d4]
1048802a: adds     r0, r0, #1
1048802c: ldr.w    r1, [sp, #0x7c8]
10488030: cmp      r1, r0
10488032: bhi      #0x1048800c
10488034: ldr.w    r0, [sp, #0x7cc]
10488038: cmp      r0, #1
1048803a: bne      #0x1048806e
1048803c: str      r0, [sp, #0x3d8]
1048803e: ldr.w    r0, [sp, #0x7d0]
10488042: str      r0, [sp, #0x3dc]
10488044: ldr.w    r0, [sp, #0x7d4]
10488048: str      r0, [sp, #0x3e0]
1048804a: ldr.w    r0, [sp, #0x7d8]
1048804e: str      r0, [sp, #0x3e4]
10488050: ldr.w    r0, [sp, #0x7dc]
10488054: str      r0, [sp, #0x3e8]
10488056: ldr.w    r0, [sp, #0x7e0]
1048805a: str      r0, [sp, #0x3ec]
1048805c: ldr.w    r0, [sp, #0x7e4]
10488060: str      r0, [sp, #0x3f0]
10488062: ldr.w    r0, [sp, #0x7e8]
10488066: str      r0, [sp, #0x3f4]
10488068: ldr.w    r0, [sp, #0x7ec]
1048806c: str      r0, [sp, #0x3f8]
1048806e: mov      r0, r7
10488070: bl       #0x104a8896
10488074: ldr      r0, [pc, #0x3f8]
10488076: ldr      r0, [r0, #0x70]
10488078: cmp      r0, #1
1048807a: bne.w    #0x10487cd6
1048807e: ldrb.w   r1, [sl, #3]
10488082: cmp      r1, #1
10488084: bne      #0x1048807a
10488086: strb.w   r6, [sl, #3]
1048808a: b        #0x10487cd6
1048808c: push.w   {r4, r5, r6, r7, r8, lr}
10488090: mov      r5, r0
10488092: ldr      r0, [pc, #0x3e0]
10488094: movs     r1, #0
10488096: mov      r4, r1
10488098: str      r1, [r5]
1048809a: ldrb     r2, [r0, #1]
1048809c: cmp      r2, #0
1048809e: beq      #0x1048810e
104880a0: ldr      r7, [pc, #0x3cc]
104880a2: movs     r3, #1
104880a4: ldr      r6, [r7, #0x70]
104880a6: cmp      r6, #1
104880a8: bne      #0x104880b0
104880aa: ldrb     r1, [r0, #3]
104880ac: cmp      r1, #2
104880ae: beq      #0x1048814e
104880b0: ldr      r1, [pc, #0x3bc]
104880b2: adds     r1, #0xe8
104880b4: ldr.w    ip, [r1, #0x60]
104880b8: cmp.w    ip, #0
104880bc: bne      #0x104880c6
104880be: ldr.w    ip, [r1, #4]
104880c2: str.w    ip, [r1, #0x60]
104880c6: ldrb.w   r7, [r7, #0x64]
104880ca: cmp      r7, #1
104880cc: bne      #0x104880d2
104880ce: ldr      r7, [r1]
104880d0: cbz      r7, #0x1048810c
104880d2: ldr.w    r7, [r1, #0xc0]
104880d6: add.w    r7, r1, r7, lsl #2
104880da: ldr.w    ip, [r7, #0x38]
104880de: cmp.w    ip, #0x3e8
104880e2: bls      #0x10488136
104880e4: ldrb.w   ip, [r1, #0xf4]
104880e8: cmp.w    ip, #3
104880ec: beq      #0x10488136
104880ee: ldr.w    ip, [r1, #8]
104880f2: ldr      r1, [r1, #0x60]
104880f4: cmp      ip, r1
104880f6: blo      #0x10488120
104880f8: cmp      r6, #1
104880fa: beq      #0x10488112
104880fc: ldr      r1, [r7, #0x10]
104880fe: movs     r6, #3
10488100: udiv     r7, r1, r6
10488104: mls      r1, r6, r7, r1
10488108: cbz      r1, #0x10488116
1048810a: b        #0x10488136
1048810c: str      r3, [r1]
1048810e: pop.w    {r4, r5, r6, r7, r8, pc}
10488112: strb     r3, [r0, #3]
10488114: b        #0x10488136
10488116: cmp      r2, #5
10488118: mov.w    r4, #1
1048811c: beq      #0x1048814e
1048811e: b        #0x10488140
10488120: cmp      r6, #1
10488122: bne      #0x10488136
10488124: ldrb     r1, [r0, #2]
10488126: cmp      r1, #4
10488128: beq      #0x1048812e
1048812a: cmp      r1, #3
1048812c: bne      #0x10488136
1048812e: cmp      r2, #1
10488130: bne      #0x10488134
10488132: strb     r1, [r0, #1]
10488134: movs     r4, #1
10488136: ldrb     r2, [r0, #1]
10488138: cmp      r2, #5
1048813a: beq      #0x1048814e
1048813c: cbz      r4, #0x10488152
1048813e: cbz      r4, #0x1048814a
10488140: ldr      r0, [pc, #0x32c]
10488142: adds     r0, #0xc4
10488144: str      r3, [r0, #0x18]
10488146: bl       #0x104a51fc
1048814a: str      r4, [r5]
1048814c: b        #0x1048810e
1048814e: movs     r4, #1
10488150: b        #0x10488140
10488152: ldr      r1, [r0, #0x14]
10488154: adds     r1, r1, #1
10488156: str      r1, [r0, #0x14]
10488158: cmp      r1, #0xc8
1048815a: bhs      #0x1048814e
1048815c: b        #0x1048814a
1048815e: push     {r3, r4, r5, r6, r7, lr}
10488160: ldr      r5, [pc, #0x30c]
10488162: mov      r7, r0
10488164: movs     r0, #0
10488166: add.w    r4, r5, #0xe8
1048816a: str      r0, [sp]
1048816c: mov      r6, r0
1048816e: ldr      r1, [r5, #0x70]
10488170: ldr      r0, [r4, #8]
10488172: cbz      r1, #0x10488176
10488174: lsls     r0, r0, #1
10488176: ldrb.w   r1, [r5, #0x67]
1048817a: mov      r2, sp
1048817c: bl       #0x10553b4e
10488180: ldr      r0, [sp]
10488182: str      r0, [r4, #0xc]
10488184: ldr.w    r0, [r4, #0xc0]
10488188: ldr      r1, [r5, #0x70]
1048818a: add.w    r0, r4, r0, lsl #2
1048818e: ldr      r0, [r0, #0x10]
10488190: cbz      r1, #0x10488194
10488192: lsls     r0, r0, #1
10488194: ldrb.w   r1, [r5, #0x67]
10488198: mov      r2, sp
1048819a: bl       #0x10553b4e
1048819e: ldr.w    r0, [r4, #0xc0]
104881a2: add.w    r1, r4, r0, lsl #2
104881a6: ldr      r0, [sp]
104881a8: str      r0, [r1, #0x38]
104881aa: ldrd     r1, r0, [r4, #0xc0]
104881ae: cmp      r1, r0
104881b0: beq      #0x104881ce
104881b2: add.w    r0, r4, r0, lsl #2
104881b6: ldrb.w   r1, [r5, #0x67]
104881ba: mov      r2, sp
104881bc: ldr      r0, [r0, #0x10]
104881be: bl       #0x10553b4e
104881c2: ldr.w    r0, [r4, #0xc4]
104881c6: add.w    r1, r4, r0, lsl #2
104881ca: ldr      r0, [sp]
104881cc: str      r0, [r1, #0x38]
104881ce: bl       #0x10487c84
104881d2: ldr      r1, [r4, #0xc]
104881d4: cmp      r0, r1
104881d6: bhi      #0x104881da
104881d8: movs     r6, #1
104881da: str      r6, [r7]
104881dc: pop      {r3, r4, r5, r6, r7, pc}
104881de: push.w   {r4, r5, r6, r7, r8, lr}
104881e2: ldr      r0, [pc, #0x290]
104881e4: movs     r6, #0
104881e6: sub      sp, #0x90
104881e8: mov      r7, r6
104881ea: adds     r0, #0xc
104881ec: bl       #0x1035d1c0
104881f0: ldr      r5, [pc, #0x27c]
104881f2: movw     r8, #0x400
104881f6: add.w    r4, r5, #0xe8
104881fa: ldrb.w   r0, [r5, #0x64]
104881fe: cmp      r0, #1
10488200: bne      #0x10488214
10488202: ldr      r0, [r4]
10488204: cbnz     r0, #0x10488214
10488206: ldr      r0, [pc, #0x268]
10488208: movs     r1, #0
1048820a: subs     r0, #0x4c
1048820c: bl       #0x10553a52
10488210: cmp      r0, #1
10488212: bls      #0x104882c4
10488214: ldr      r0, [pc, #0x258]
10488216: movs     r1, #0
10488218: add      r2, sp, #0x88
1048821a: subs     r0, #0x4c
1048821c: bl       #0x10553a00
10488220: cbz      r0, #0x10488282
10488222: ldr      r1, [sp, #0x88]
10488224: movs     r2, #0x20
10488226: add      r0, sp, #0x28
10488228: blx      #0x1035d1ec
1048822c: ldr      r0, [pc, #0x240]
1048822e: movs     r2, #1
10488230: movs     r1, #0
10488232: subs     r0, #0x4c
10488234: bl       #0x105539b2
10488238: movs     r1, #0x14
1048823a: add      r0, sp, #0xc
1048823c: bl       #0x1035d2dc
10488240: ldrh.w   r1, [sp, #0x32]
10488244: strh.w   r1, [sp, #0xc]
10488248: ldrh.w   r0, [sp, #0x34]
1048824c: strh.w   r0, [sp, #0xe]
10488250: ldrh.w   r2, [sp, #0x36]
10488254: ldr      r0, [sp, #0x3c]
10488256: ldr      r3, [sp, #0x40]
10488258: add      r0, r2
1048825a: str      r0, [sp, #0x10]
1048825c: ldrh.w   r0, [sp, #0x2a]
10488260: add      r2, r3
10488262: str      r2, [sp, #0x18]
10488264: ldrh.w   r2, [sp, #0x2c]
10488268: cmp      r1, r0
1048826a: strh.w   r0, [sp, #0x14]
1048826e: strh.w   r2, [sp, #0x1c]
10488272: bhi      #0x1048827c
10488274: cmp      r1, r2
10488276: bhi      #0x1048827c
10488278: cmp      r0, r2
1048827a: beq      #0x10488284
1048827c: movw     r1, #0x1000
10488280: b        #0x104882bc
10488282: b        #0x104882c4
10488284: add      r0, sp, #0xc
10488286: bl       #0x104a5210
1048828a: cbz      r0, #0x104882ba
1048828c: ldr      r0, [r4, #4]
1048828e: movs     r6, #1
10488290: adds     r0, r0, #1
10488292: str      r0, [r4, #4]
10488294: ldr.w    r1, [r4, #0xc4]
10488298: add.w    r1, r4, r1, lsl #2
1048829c: ldr.w    r1, [r1, #0xcc]
104882a0: cmp      r0, r1
104882a2: bne      #0x104882b0
104882a4: movs     r7, #1
104882a6: movs     r2, #0x20
104882a8: add      r1, sp, #0x28
104882aa: add      r0, sp, #0x48
104882ac: blx      #0x1035d1ec
104882b0: ldrb.w   r0, [r5, #0x64]
104882b4: cmp      r0, #1
104882b6: beq      #0x104882c8
104882b8: b        #0x104882ce
104882ba: mov      r1, r8
104882bc: ldr      r0, [pc, #0x1b0]
104882be: subs     r0, #0x78
104882c0: bl       #0x1035c98c
104882c4: cbz      r6, #0x10488342
104882c6: b        #0x10488302
104882c8: ldr      r0, [r4]
104882ca: cmp      r0, #1
104882cc: beq      #0x104882d6
104882ce: ldr      r0, [sp, #0x44]
104882d0: cmp      r0, #1
104882d2: bne      #0x104881fa
104882d4: b        #0x10488302
104882d6: ldr      r0, [pc, #0x198]
104882d8: movs     r2, #0
104882da: mov      r1, r2
104882dc: subs     r0, #0x4c
104882de: bl       #0x10553938
104882e2: cmp      r0, #0
104882e4: bne      #0x104882d6
104882e6: movs     r0, #1
104882e8: str      r0, [sp, #0x44]
104882ea: ldr      r0, [pc, #0x184]
104882ec: movs     r1, #0
104882ee: add      r2, sp, #0x28
104882f0: subs     r0, #0x4c
104882f2: bl       #0x105538c2
104882f6: cbnz     r0, #0x10488302
104882f8: ldr      r0, [pc, #0x174]
104882fa: mov      r1, r8
104882fc: subs     r0, #0x78
104882fe: bl       #0x1035c98c
10488302: ldr      r0, [pc, #0x16c]
10488304: movs     r1, #0
10488306: subs     r0, #0x4c
10488308: bl       #0x10553a52
1048830c: mov      r4, r0
1048830e: ldr      r0, [pc, #0x160]
10488310: movs     r1, #1
10488312: subs     r0, #0x4c
10488314: bl       #0x10553a52
10488318: ldr      r1, [pc, #0x158]
1048831a: ldr      r1, [r1, #0x18]
1048831c: cbz      r1, #0x10488364
1048831e: add      r0, r4
10488320: cmp      r0, #0x32
10488322: blo      #0x1048832e
10488324: ldr      r0, [pc, #0x148]
10488326: mov      r1, r8
10488328: subs     r0, #0x78
1048832a: bl       #0x1035c98c
1048832e: ldr      r0, [pc, #0x144]
10488330: adds     r0, #0xc
10488332: bl       #0x1035d1ba
10488336: cmp      r7, #1
10488338: bne      #0x10488356
1048833a: movs     r2, #0x1c
1048833c: add      r1, sp, #0x48
1048833e: add      r0, sp, #0x68
10488340: b        #0x10488344
10488342: b        #0x1048835a
10488344: blx      #0x1035d1ec
10488348: ldr      r1, [pc, #0x12c]
1048834a: movs     r0, #0
1048834c: add      r2, sp, #0x68
1048834e: strb.w   r0, [sp, #0x84]
10488352: bl       #0x10580b44
10488356: add      sp, #0x90
10488358: b        #0x1048810e
1048835a: ldr      r0, [pc, #0x118]
1048835c: adds     r0, #0xc
1048835e: bl       #0x1035d1ba
10488362: b        #0x10488356
10488364: ldr      r1, [r5, #0x70]
10488366: add      r0, r4
10488368: cbz      r1, #0x10488370
1048836a: cmp      r0, #0x1b
1048836c: bhs      #0x10488324
1048836e: b        #0x1048832e
10488370: cmp      r0, #0x14
10488372: bhs      #0x10488324
10488374: b        #0x1048832e
10488376: push     {r2, r3, r4, r5, r6, lr}
10488378: mov      r5, r0
1048837a: mov      r4, r1
1048837c: movs     r0, #0
1048837e: str      r0, [sp]
10488380: str      r0, [sp, #4]
10488382: bl       #0x104881de
10488386: ldr      r0, [pc, #0xe8]
10488388: ldrb.w   r0, [r0, #0x65]
1048838c: cbnz     r0, #0x10488392
1048838e: bl       #0x10487c40
10488392: mov      r0, sp
10488394: bl       #0x1048815e
10488398: ldr      r0, [sp]
1048839a: cmp      r0, #1
1048839c: bne      #0x104883a8
1048839e: ldr      r0, [pc, #0xd4]
104883a0: ldrb     r1, [r0, #1]
104883a2: cbnz     r1, #0x104883a8
104883a4: movs     r1, #2
104883a6: strb     r1, [r0, #1]
104883a8: cmp      r5, #1
104883aa: bne      #0x104883ba
104883ac: add      r0, sp, #4
104883ae: bl       #0x1048808c
104883b2: cmp      r4, #0
104883b4: beq      #0x104883ba
104883b6: ldr      r0, [sp, #4]
104883b8: str      r0, [r4]
104883ba: pop      {r2, r3, r4, r5, r6, pc}
104883bc: ldr      r0, [pc, #0xb4]
104883be: mov.w    r1, #-1
104883c2: push     {r4, lr}
104883c4: adds     r0, #8
104883c6: bl       #0x1035d37a
104883ca: ldr      r0, [pc, #0xa4]
104883cc: subs     r0, #0x4c
104883ce: bl       #0x10553852
104883d2: ldr      r0, [pc, #0x9c]
104883d4: subs     r0, #0x28
104883d6: bl       #0x10553852
104883da: ldr      r0, [pc, #0x98]
104883dc: movs     r1, #0
104883de: strb     r1, [r0, #1]
104883e0: strb     r1, [r0, #2]
104883e2: strb     r1, [r0, #3]
104883e4: str      r1, [r0, #0x14]
104883e6: str      r1, [r0, #0x18]
104883e8: movs     r1, #0x80
104883ea: ldr      r0, [pc, #0x84]
104883ec: bl       #0x1035d2dc
104883f0: ldr      r0, [pc, #0x7c]
104883f2: movs     r1, #0x24
104883f4: adds     r0, #0x80
104883f6: bl       #0x1035d2dc
104883fa: ldr      r0, [pc, #0x74]
104883fc: movs     r1, #0x20
104883fe: adds     r0, #0xa4
10488400: bl       #0x1035d2dc
10488404: ldr      r0, [pc, #0x68]
10488406: movs     r1, #0x24
10488408: adds     r0, #0xc4
1048840a: bl       #0x1035d2dc
1048840e: ldr      r0, [pc, #0x60]
10488410: movw     r1, #0x110
10488414: pop.w    {r4, lr}
10488418: adds     r0, #0xe8
1048841a: b.w      #0x1035d2dc
1048841e: cmp      r0, #1
10488420: bne      #0x1048842c
10488422: ldr      r0, [pc, #0x4c]
10488424: movs     r1, #0x10
10488426: subs     r0, #0x78
10488428: b.w      #0x1035c98c
1048842c: bx       lr
1048842e: push     {r2, r3, r4, r5, r6, lr}
10488430: mov      r4, r1
10488432: ldrb.w   r1, [r0, #0x6c]
10488436: mov      r6, r0
10488438: cmp      r1, #6
1048843a: bhs      #0x104884e0
1048843c: tbb      [pc, r1]
10488440: lsls     r3, r0, #0xc
10488442: lsls     r3, r0, #0xc
10488444: lsls     r5, r0, #0x14
10488446: movs     r5, #3
10488448: b        #0x1048844c
1048844a: movs     r5, #2
1048844c: mov      r2, sp
1048844e: movs     r0, #0
10488450: add      r3, sp, #4
10488452: bl       #0x104a757e
10488456: ldr      r0, [sp, #4]
10488458: cmp.w    r0, r5, lsl #26
1048845c: blo      #0x104884e0
1048845e: lsls     r1, r5, #0x1a
10488460: ldr      r0, [sp]
10488462: add      r3, sp, #4
10488464: mov      r2, sp
10488466: strd     r0, r1, [r4]
1048846a: ldrb.w   r1, [r6, #0x6c]
1048846e: b        #0x1048847c
10488470: ldrh     r0, [r2, #0x32]
10488472: stm      r1!, {r0, r2, r4, r5, r6, r7}
10488474: asrs     r4, r7, #0x1d
10488476: stm      r1!, {r0, r7}
10488478: lsls     r0, r0, #8
1048847a: orrs     r4, r0
1048847c: movs     r0, #3
1048847e: adds     r6, #0x66
10488480: bl       #0x104a757e
10488484: ldrb     r0, [r6]
10488486: movw     r1, #0x8000
1048848a: cbz      r0, #0x104884b6
1048848c: ldr      r2, [pc, #0x3dc]
1048848e: ldr      r0, [sp, #4]
10488490: cmp      r0, r2
10488492: blo      #0x104884e0
10488494: ldr      r2, [pc, #0x3d8]
10488496: ldr      r3, [pc, #0x3dc]
10488498: ldr      r0, [sp]
1048849a: lsls     r5, r2, #1
1048849c: str      r1, [r4, #0x1c]
1048849e: adds     r1, r0, r2
104884a0: strd     r0, r2, [r4, #8]
104884a4: add      r0, r3
104884a6: str      r1, [r4, #0x10]
104884a8: strd     r5, r0, [r4, #0x14]
104884ac: ldrb     r0, [r4]
104884ae: tst.w    r0, #0xff
104884b2: bne      #0x104884e0
104884b4: b        #0x104884c8
104884b6: ldr      r2, [pc, #0x3c0]
104884b8: ldr      r0, [sp, #4]
104884ba: cmp      r0, r2
104884bc: blo      #0x104884e0
104884be: ldr      r2, [pc, #0x3bc]
104884c0: ldr      r3, [pc, #0x3bc]
104884c2: ldr      r0, [sp]
104884c4: lsls     r5, r2, #1
104884c6: b        #0x1048849c
104884c8: ldrb     r0, [r4, #8]
104884ca: tst.w    r0, #0xff
104884ce: bne      #0x104884e0
104884d0: ldrb     r0, [r4, #0x10]
104884d2: tst.w    r0, #0xff
104884d6: bne      #0x104884e0
104884d8: ldrb     r0, [r4, #0x18]
104884da: tst.w    r0, #0xff
104884de: beq      #0x104884e4
104884e0: movs     r0, #0
104884e2: pop      {r2, r3, r4, r5, r6, pc}
104884e4: movs     r0, #1
104884e6: pop      {r2, r3, r4, r5, r6, pc}
104884e8: push     {r4, r5, r6, r7, lr}
104884ea: sub      sp, #0x24
104884ec: mov      r4, r1
104884ee: movs     r6, #0
104884f0: mov      r5, r0
104884f2: movs     r1, #0x20
104884f4: add      r0, sp, #4
104884f6: str      r6, [sp]
104884f8: bl       #0x1035d2dc
104884fc: ldrb.w   r0, [r5, #0x66]
10488500: add      r1, sp, #4
10488502: strb.w   r0, [sp]
10488506: ldrb.w   r0, [r5, #0x67]
1048850a: strb.w   r0, [sp, #1]
1048850e: ldrb.w   r0, [r5, #0x68]
10488512: adds     r5, #0x66
10488514: strb.w   r0, [sp, #2]
10488518: mov      r0, sp
1048851a: bl       #0x10523e0a
1048851e: ldrb     r1, [r5], #-0x66
10488522: movs     r2, #2
10488524: movs     r0, #1
10488526: cbz      r1, #0x1048854c
10488528: cmp      r1, #1
1048852a: beq      #0x10488550
1048852c: cmp      r1, #2
1048852e: bne      #0x104885d0
10488530: strb     r2, [r4]
10488532: movs     r3, #6
10488534: ldrb.w   r7, [r5, #0x67]
10488538: movs     r1, #5
1048853a: cmp      r7, #0xa
1048853c: bhs      #0x104885d0
1048853e: tbb      [pc, r7]
10488542: lsrs     r1, r1, #0xc
10488544: lsrs     r5, r1, #0x1c
10488546: asrs     r1, r2, #8
10488548: asrs     r4, r2, #8
1048854a: asrs     r4, r2, #8
1048854c: strb     r6, [r4]
1048854e: b        #0x10488532
10488550: strb     r0, [r4]
10488552: b        #0x10488532
10488554: strb     r6, [r4, #1]
10488556: b        #0x1048856c
10488558: strb     r0, [r4, #1]
1048855a: b        #0x1048856c
1048855c: strb     r2, [r4, #1]
1048855e: b        #0x1048856c
10488560: movs     r1, #3
10488562: b        #0x10488566
10488564: movs     r1, #4
10488566: strb     r1, [r4, #1]
10488568: b        #0x1048856c
1048856a: strb     r3, [r4, #1]
1048856c: ldrh.w   r1, [sp, #0x14]
10488570: ldrb     r2, [r4]
10488572: strh     r1, [r4, #2]
10488574: ldrh.w   r1, [sp, #0x16]
10488578: strh     r1, [r4, #4]
1048857a: ldr      r1, [sp, #0x20]
1048857c: str      r1, [r4, #0x14]
1048857e: cbnz     r2, #0x10488588
10488580: ldrb     r1, [r4, #1]
10488582: cbz      r1, #0x104885a0
10488584: cmp      r1, #1
10488586: beq      #0x104885a0
10488588: ldr      r1, [sp, #0x18]
1048858a: str      r1, [r4, #8]
1048858c: ldr      r1, [sp, #0x1c]
1048858e: str      r1, [r4, #0xc]
10488590: ldr      r2, [r5, #0x70]
10488592: str      r2, [r4, #0x18]
10488594: ldrb.w   r1, [r5, #0x65]
10488598: cbz      r1, #0x104885ac
1048859a: cmp      r1, #1
1048859c: beq      #0x104885b0
1048859e: b        #0x104885b2
104885a0: ldr      r1, [sp, #0x18]
104885a2: lsrs     r1, r1, #1
104885a4: str      r1, [r4, #8]
104885a6: ldr      r1, [sp, #0x1c]
104885a8: lsrs     r1, r1, #1
104885aa: b        #0x1048858e
104885ac: strb     r6, [r4, #0x10]
104885ae: b        #0x104885b2
104885b0: strb     r0, [r4, #0x10]
104885b2: ldrb.w   r0, [r5, #0x64]
104885b6: cbz      r0, #0x104885c0
104885b8: ldrb     r0, [r4, #0x10]
104885ba: cmp      r0, #1
104885bc: beq      #0x104885c4
104885be: b        #0x104885c6
104885c0: cmp      r2, #1
104885c2: bne      #0x104885c6
104885c4: strb     r6, [r4, #0x10]
104885c6: ldr      r0, [r5, #0x74]
104885c8: str      r0, [r4, #0x1c]
104885ca: ldrh.w   r0, [r5, #0x78]
104885ce: strh     r0, [r4, #0x20]
104885d0: add      sp, #0x24
104885d2: pop      {r4, r5, r6, r7, pc}
104885d4: push     {r1, r2, r3, r4, r5, r6, r7, lr}
104885d6: bl       #0x105ae1a4
104885da: ldr      r1, [pc, #0x2a8]
104885dc: sub.w    r0, r1, #0x80
104885e0: bl       #0x104884e8
104885e4: ldr      r1, [pc, #0x29c]
104885e6: adds     r1, #0x24
104885e8: sub.w    r0, r1, #0xa4
104885ec: bl       #0x1048842e
104885f0: cbnz     r0, #0x104885fe
104885f2: ldr      r0, [pc, #0x290]
104885f4: movw     r1, #0x1000
104885f8: subs     r0, #0xf8
104885fa: bl       #0x1035c98c
104885fe: ldr      r1, [pc, #0x284]
10488600: ldr      r0, [pc, #0x280]
10488602: adds     r1, #0x24
10488604: bl       #0x104a51f8
10488608: ldr      r4, [pc, #0x278]
1048860a: subs     r4, #0x80
1048860c: sub.w    r5, r4, #0x58
10488610: ldrb.w   r0, [r4, #0x65]
10488614: cmp      r0, #1
10488616: beq      #0x10488620
10488618: ldr      r0, [r4, #0x70]
1048861a: cmp      r0, #1
1048861c: beq      #0x1048863a
1048861e: b        #0x10488652
10488620: movs     r3, #0x32
10488622: mov      r0, r5
10488624: movs     r2, #0
10488626: movs     r1, #0x20
10488628: bl       #0x1035d3be
1048862c: movs     r3, #0x32
1048862e: mov      r0, r5
10488630: movs     r2, #0
10488632: movs     r1, #0x20
10488634: bl       #0x1035d3be
10488638: b        #0x10488652
1048863a: movs     r3, #0x32
1048863c: mov      r0, r5
1048863e: movs     r2, #0
10488640: movs     r1, #0x20
10488642: bl       #0x1035d3de
10488646: movs     r3, #0x32
10488648: mov      r0, r5
1048864a: movs     r2, #0
1048864c: movs     r1, #0x20
1048864e: bl       #0x1035d3de
10488652: ldrb.w   r0, [r4, #0x64]
10488656: movs     r5, #0
10488658: cmp      r0, #1
1048865a: bne      #0x10488662
1048865c: ldrb.w   r0, [r4, #0x65]
10488660: cbz      r0, #0x10488674
10488662: ldr      r0, [r4, #0x70]
10488664: cmp      r0, #0
10488666: ldrb.w   r0, [r4, #0x67]
1048866a: beq      #0x10488710
1048866c: cbz      r0, #0x1048867c
1048866e: cmp      r0, #1
10488670: beq      #0x10488706
10488672: b        #0x1048868a
10488674: movs     r1, #0
10488676: ldr      r2, [pc, #0x210]
10488678: movs     r0, #4
1048867a: b        #0x10488682
1048867c: ldr      r2, [pc, #0x208]
1048867e: movs     r1, #0
10488680: movs     r0, #2
10488682: bl       #0x1055360c
10488686: ldr      r0, [r4, #0x70]
10488688: cbz      r0, #0x10488696
1048868a: mov      r0, sp
1048868c: str      r5, [sp]
1048868e: str      r5, [sp, #4]
10488690: str      r5, [sp, #8]
10488692: bl       #0x104c1024
10488696: ldr      r0, [pc, #0x1ec]
10488698: ldr      r1, [pc, #0x1e8]
1048869a: adds     r0, #0x24
1048869c: ldr      r3, [pc, #0x1ec]
1048869e: adds     r1, #0x44
104886a0: ldr      r2, [pc, #0x1ec]
104886a2: ldr      r0, [r0, #4]
104886a4: str      r0, [r1]
104886a6: ldrb.w   r0, [r4, #0x66]
104886aa: cbz      r0, #0x1048870e
104886ac: ldrb.w   r0, [r4, #0x67]
104886b0: cmp      r0, #5
104886b2: beq      #0x10488716
104886b4: cmp      r0, #6
104886b6: beq      #0x10488716
104886b8: cmp      r0, #7
104886ba: beq      #0x10488716
104886bc: cmp      r0, #8
104886be: beq      #0x10488716
104886c0: cmp      r0, #9
104886c2: beq      #0x10488716
104886c4: ldr      r2, [pc, #0x1d0]
104886c6: ldr      r0, [pc, #0x1cc]
104886c8: strd     r0, r2, [r1, #4]
104886cc: ldr      r0, [pc, #0x1b4]
104886ce: ldr      r2, [pc, #0x1b4]
104886d0: adds     r0, #0x68
104886d2: movs     r6, #1
104886d4: str.w    r5, [r0, #0xc0]
104886d8: str.w    r5, [r0, #0xc4]
104886dc: ldrh     r3, [r2, #4]
104886de: strd     r3, r6, [r0, #0xc8]
104886e2: strb.w   r5, [r0, #0xf4]
104886e6: ldr      r3, [r4, #0x54]
104886e8: cbz      r3, #0x1048871c
104886ea: str.w    r5, [r0, #0xf8]
104886ee: str.w    r5, [r0, #0xfc]
104886f2: str.w    r5, [r0, #0x100]
104886f6: movs     r1, #0
104886f8: mov.w    r2, #0x3200000
104886fc: str.w    r5, [r0, #0x104]
10488700: strd     r2, r1, [r0, #0x70]
10488704: pop      {r1, r2, r3, r4, r5, r6, r7, pc}
10488706: movs     r1, #0
10488708: ldr      r2, [pc, #0x17c]
1048870a: movs     r0, #3
1048870c: b        #0x10488682
1048870e: b        #0x10488716
10488710: ldr      r2, [pc, #0x174]
10488712: movs     r1, #0
10488714: b        #0x10488682
10488716: strd     r3, r2, [r1, #4]
1048871a: b        #0x104886cc
1048871c: ldr      r3, [pc, #0x17c]
1048871e: ldr      r1, [r1, #4]
10488720: cmp      r1, r3
10488722: bhs      #0x10488728
10488724: subs     r1, r3, r1
10488726: b        #0x1048872a
10488728: movs     r1, #0
1048872a: str.w    r1, [r0, #0xf8]
1048872e: ldr      r2, [r2, #0xc]
10488730: movs     r6, #0xa
10488732: ldrb.w   r3, [r4, #0x69]
10488736: lsrs     r2, r2, #3
10488738: cmp      r3, #1
1048873a: add.w    r4, r2, r2, lsl #1
1048873e: add.w    r2, r4, r2, lsl #3
10488742: udiv     r4, r2, r6
10488746: rsb      r2, r4, r4, lsl #4
1048874a: lsl.w    r2, r2, #1
1048874e: beq      #0x10488756
10488750: cmp      r3, #2
10488752: beq      #0x1048875a
10488754: b        #0x1048875e
10488756: ldr      r6, [pc, #0x148]
10488758: b        #0x1048875c
1048875a: ldr      r6, [pc, #0x148]
1048875c: add      r2, r6
1048875e: cmp      r1, r2
10488760: bls      #0x10488766
10488762: subs     r2, r1, r2
10488764: b        #0x10488768
10488766: movs     r2, #0
10488768: str.w    r2, [r0, #0xfc]
1048876c: add.w    r4, r4, r4, lsl #2
10488770: cmp      r3, #1
10488772: lsl.w    r2, r4, #1
10488776: beq      #0x1048877e
10488778: cmp      r3, #2
1048877a: beq      #0x10488782
1048877c: b        #0x10488786
1048877e: ldr      r3, [pc, #0x128]
10488780: b        #0x10488784
10488782: ldr      r3, [pc, #0x128]
10488784: add      r2, r3
10488786: cmp      r1, r2
10488788: bls      #0x1048878e
1048878a: subs     r1, r1, r2
1048878c: b        #0x10488790
1048878e: movs     r1, #0
10488790: str.w    r1, [r0, #0x100]
10488794: b        #0x104886f6
10488796: push.w   {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
1048879a: ldr      r4, [pc, #0x114]
1048879c: mov.w    r8, #0
104887a0: lsls     r1, r0, #0x1f
104887a2: mov      r5, r0
104887a4: mov.w    sb, #1
104887a8: str.w    r8, [sp]
104887ac: strb.w   r8, [sp, #4]
104887b0: beq      #0x104887c8
104887b2: ldrb     r0, [r4]
104887b4: cbnz     r0, #0x104887be
104887b6: bl       #0x104885d4
104887ba: strb.w   sb, [r4]
104887be: movs     r1, #1
104887c0: ldr      r0, [pc, #0xec]
104887c2: adds     r0, #8
104887c4: bl       #0x1035d374
104887c8: lsls     r0, r5, #0x1e
104887ca: bpl      #0x104887e2
104887cc: ldrb     r0, [r4]
104887ce: cbz      r0, #0x104887d8
104887d0: cmp      r0, #1
104887d2: beq      #0x104887fe
104887d4: cmp      r0, #2
104887d6: beq      #0x104887e2
104887d8: ldr      r0, [pc, #0xd4]
104887da: movs     r1, #4
104887dc: adds     r0, #8
104887de: bl       #0x1035d374
104887e2: ldr      r6, [pc, #0xa0]
104887e4: lsls     r0, r5, #0x1d
104887e6: add.w    r6, r6, #0x44
104887ea: bpl      #0x10488856
104887ec: ldrb     r0, [r4]
104887ee: cbz      r0, #0x1048884c
104887f0: cmp      r0, #1
104887f2: beq      #0x1048884c
104887f4: cmp      r0, #2
104887f6: beq      #0x1048884c
104887f8: cmp      r0, #3
104887fa: bne      #0x1048884c
104887fc: b        #0x1048880a
104887fe: ldrb     r0, [r4, #1]
10488800: cmp      r0, #0
10488802: bne      #0x104887e2
10488804: strb.w   sb, [r4, #1]
10488808: b        #0x104887e2
1048880a: bl       #0x104a5204
1048880e: bl       #0x105ae222
10488812: movs     r7, #0
10488814: ldr      r0, [pc, #0x6c]
10488816: movs     r1, #1
10488818: subs     r0, #0xcc
1048881a: bl       #0x10553a52
1048881e: mov      sl, r0
10488820: ldr      r0, [pc, #0x60]
10488822: movs     r1, #1
10488824: subs     r0, #0xa8
10488826: bl       #0x10553a52
1048882a: orrs.w   r1, sl, r0
1048882e: beq      #0x10488844
10488830: ldr      r1, [r6, #0x20]
10488832: cmp      r1, #1
10488834: bne      #0x10488838
10488836: cbz      r0, #0x10488844
10488838: movs     r0, #0x1e
1048883a: bl       #0x103dec94
1048883e: adds     r7, r7, #1
10488840: cmp      r7, #0x64
10488842: blt      #0x10488814
10488844: bl       #0x104883bc
10488848: strb.w   r8, [r4]
1048884c: movs     r1, #8
1048884e: ldr      r0, [pc, #0x60]
10488850: adds     r0, #8
10488852: bl       #0x1035d374
10488856: lsls     r0, r5, #0x1b
10488858: mov.w    sl, #2
1048885c: bpl      #0x10488904
1048885e: ldrb     r0, [r4]
10488860: cbz      r0, #0x104888b4
10488862: cmp      r0, #1
10488864: beq      #0x104888b6
10488866: cmp      r0, #2
10488868: bne      #0x10488904
1048886a: b        #0x104888fc
1048886c: and      r0, r0, #0x8f
10488870: beq      #0x10488874
10488872: movs     r7, r5
10488874: strb     r0, [r0]
10488876: lsls     r7, r1, #2
10488878: lsrs     r0, r0, #0x20
1048887a: lsls     r2, r7, #8
1048887c: bhi      #0x10488880
1048887e: lsls     r5, r7, #2
10488880: ldrh     r0, [r0]
10488882: lsls     r1, r7, #8
10488884: ldrh     r0, [r2, #0x36]
10488886: stm      r1!, {r0, r2, r4, r5, r6, r7}
10488888: strh     r7, [r3, #0x20]
1048888a: asrs     r0, r1, #1
1048888c: ldr      r5, [sp, #0x80]
1048888e: lsls     r4, r6, #0x1a
10488890: .byte    0xe0, 0xf7
10488892: lsls     r5, r0, #0x10
10488894: str      r2, [r0, #0x40]
10488896: lsls     r1, r1, #6
10488898: ldrsb    r2, [r5, r3]
1048889a: lsls     r2, r7, #3
1048889c: movs     r0, r0
1048889e: .byte    0xff, 0xff
104888a0: b        #0x104880a4
104888a2: lsls     r7, r2, #1
104888a4: str      r4, [sp]
104888a6: movs     r1, r2
104888a8: ldr      r4, [pc, #0]
104888aa: movs     r5, r3
104888ac: bgt      #0x104888b0
104888ae: movs     r5, r0
104888b0: asrs     r4, r7, #0x1d
104888b2: stm      r1!, {r0, r7}
104888b4: b        #0x104888da
104888b6: movs     r0, #1
104888b8: mov      r1, sp
104888ba: bl       #0x10488376
104888be: ldr      r0, [sp]
104888c0: cmp      r0, #1
104888c2: bne      #0x10488904
104888c4: strb.w   sl, [r4]
104888c8: ldrb     r0, [r4, #1]
104888ca: cmp      r0, #2
104888cc: beq      #0x104888dc
104888ce: cmp      r0, #3
104888d0: beq      #0x104888e6
104888d2: cmp      r0, #4
104888d4: beq      #0x104888e6
104888d6: cmp      r0, #5
104888d8: beq      #0x104888f2
104888da: b        #0x10488904
104888dc: ldr      r2, [r4, #4]
104888de: cbz      r2, #0x10488904
104888e0: movs     r1, #0
104888e2: movs     r0, #4
104888e4: b        #0x104888ee
104888e6: ldr      r2, [r4, #4]
104888e8: cbz      r2, #0x10488904
104888ea: movs     r1, #0
104888ec: movs     r0, #5
104888ee: blx      r2
104888f0: b        #0x10488904
104888f2: ldr      r2, [r4, #4]
104888f4: cbz      r2, #0x10488904
104888f6: movs     r1, #0
104888f8: movs     r0, #6
104888fa: b        #0x104888ee
104888fc: movs     r1, #0
104888fe: mov      r0, r1
10488900: bl       #0x10488376
10488904: ldr.w    fp, [pc, #0x490]
10488908: lsls     r0, r5, #0x1a
1048890a: bpl      #0x1048892c
1048890c: bl       #0x10488d72
10488910: ldrb     r0, [r4]
10488912: cbz      r0, #0x1048892c
10488914: cmp      r0, #1
10488916: beq      #0x1048891c
10488918: cmp      r0, #2
1048891a: bne      #0x1048892c
1048891c: ldrb.w   r0, [fp, #0x65]
10488920: cmp      r0, #1
10488922: bne      #0x1048892c
10488924: ldr      r0, [r6, #0x1c]
10488926: cbz      r0, #0x1048893e
10488928: bl       #0x10487c10
1048892c: lsls     r0, r5, #0x19
1048892e: bpl      #0x10488982
10488930: ldrb     r0, [r4]
10488932: cbz      r0, #0x10488952
10488934: cmp      r0, #1
10488936: beq      #0x1048894c
10488938: cmp      r0, #2
1048893a: bne      #0x10488952
1048893c: b        #0x1048894c
1048893e: bl       #0x104a5208
10488942: cmp      r0, #1
10488944: bne      #0x1048892c
10488946: str.w    sb, [r6, #0x1c]
1048894a: b        #0x1048892c
1048894c: add      r0, sp, #4
1048894e: bl       #0x10487cb0
10488952: ldrb.w   r0, [sp, #4]
10488956: cmp      r0, #1
10488958: beq      #0x10488964
1048895a: cmp      r0, #2
1048895c: beq      #0x1048896e
1048895e: cmp      r0, #3
10488960: beq      #0x10488978
10488962: b        #0x10488982
10488964: ldr      r2, [r4, #4]
10488966: cbz      r2, #0x10488982
10488968: movs     r1, #0
1048896a: movs     r0, #1
1048896c: b        #0x10488980
1048896e: ldr      r2, [r4, #4]
10488970: cbz      r2, #0x10488982
10488972: movs     r1, #0
10488974: movs     r0, #2
10488976: b        #0x10488980
10488978: ldr      r2, [r4, #4]
1048897a: cbz      r2, #0x10488982
1048897c: movs     r1, #0
1048897e: movs     r0, #3
10488980: blx      r2
10488982: lsls     r0, r5, #0x18
10488984: mov.w    r7, #3
10488988: bpl      #0x104889a8
1048898a: ldrb     r0, [r4]
1048898c: cbz      r0, #0x104889a0
1048898e: cmp      r0, #1
10488990: beq      #0x104889a0
10488992: cmp      r0, #2
10488994: bne      #0x104889a0
10488996: bl       #0x1055361a
1048899a: str.w    r8, [r6, #0x18]
1048899e: strb     r7, [r4]
104889a0: movs     r1, #4
104889a2: ldr      r0, [pc, #0x3f8]
104889a4: bl       #0x1035d374
104889a8: lsls     r0, r5, #0x17
104889aa: bpl      #0x104889d8
104889ac: ldrb     r0, [r4]
104889ae: cbz      r0, #0x104889d8
104889b0: cmp      r0, #1
104889b2: beq      #0x104889bc
104889b4: cmp      r0, #2
104889b6: beq      #0x104889bc
104889b8: cmp      r0, #3
104889ba: bne      #0x104889d8
104889bc: ldrb.w   r0, [fp, #0x65]
104889c0: cbnz     r0, #0x104889d8
104889c2: str.w    r8, [r6, #0xc]
104889c6: mov      r0, r8
104889c8: str.w    r8, [r6, #0x14]
104889cc: ldr      r1, [r6, #0x10]
104889ce: cmp      r1, #1
104889d0: bne      #0x104889d8
104889d2: str      r0, [r6, #0x10]
104889d4: bl       #0x10487c40
104889d8: lsls     r0, r5, #0x16
104889da: bpl      #0x104889ec
104889dc: ldrb     r0, [r4]
104889de: cbz      r0, #0x104889ec
104889e0: cmp      r0, #1
104889e2: bne      #0x104889ec
104889e4: ldrb     r0, [r4, #1]
104889e6: cbz      r0, #0x104889fa
104889e8: strb.w   sl, [r4, #2]
104889ec: lsls     r0, r5, #0x15
104889ee: bpl      #0x10488a06
104889f0: ldrb     r0, [r4]
104889f2: cbz      r0, #0x10488a06
104889f4: cmp      r0, #1
104889f6: bne      #0x10488a06
104889f8: b        #0x10488a00
104889fa: strb.w   sl, [r4, #1]
104889fe: b        #0x104889ec
10488a00: ldrb     r0, [r4, #1]
10488a02: cbz      r0, #0x10488a14
10488a04: strb     r7, [r4, #2]
10488a06: lsls     r0, r5, #0x14
10488a08: bpl      #0x10488a20
10488a0a: ldrb     r0, [r4]
10488a0c: cbz      r0, #0x10488a20
10488a0e: cmp      r0, #1
10488a10: bne      #0x10488a20
10488a12: b        #0x10488a18
10488a14: strb     r7, [r4, #1]
10488a16: b        #0x10488a06
10488a18: ldrb     r1, [r4, #1]
10488a1a: movs     r0, #4
10488a1c: cbz      r1, #0x10488a3e
10488a1e: strb     r0, [r4, #2]
10488a20: lsls     r0, r5, #0x13
10488a22: bpl      #0x10488a3a
10488a24: ldrb     r0, [r4]
10488a26: cmp      r0, #0
10488a28: beq      #0x10488a3a
10488a2a: cmp      r0, #1
10488a2c: beq      #0x10488a36
10488a2e: cmp      r0, #2
10488a30: beq      #0x10488a36
10488a32: cmp      r0, #3
10488a34: bne      #0x10488a3a
10488a36: movs     r0, #5
10488a38: strb     r0, [r4, #1]
10488a3a: pop.w    {r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
10488a3e: strb     r0, [r4, #1]
10488a40: b        #0x10488a20
10488a42: push     {r4, lr}
10488a44: movs     r0, #0x22
10488a46: movw     r4, #0x1fff
10488a4a: bl       #0x103d6546
10488a4e: mov      r3, r0
10488a50: ldr      r0, [pc, #0x344]
10488a52: ldr      r1, [pc, #0x34c]
10488a54: mov      r2, r4
10488a56: subs     r0, #0x78
10488a58: bl       #0x1035c95e
10488a5c: ldr      r0, [pc, #0x33c]
10488a5e: adr      r1, #0x344
10488a60: bl       #0x1035d32a
10488a64: ldr      r0, [pc, #0x334]
10488a66: adr      r1, #0x348
10488a68: adds     r0, r0, #4
10488a6a: bl       #0x1035d164
10488a6e: ldr      r0, [pc, #0x32c]
10488a70: adr      r1, #0x348
10488a72: adds     r0, #8
10488a74: bl       #0x1035d164
10488a78: ldr      r0, [pc, #0x31c]
10488a7a: movs     r3, #0x20
10488a7c: movs     r2, #0x3c
10488a7e: movs     r1, #2
10488a80: subs     r0, #0x4c
10488a82: bl       #0x105537a4
10488a86: ldr      r0, [pc, #0x310]
10488a88: movs     r2, #0x14
10488a8a: movs     r1, #2
10488a8c: movw     r3, #0x3f0
10488a90: pop.w    {r4, lr}
10488a94: subs     r0, #0x28
10488a96: b.w      #0x105537a4
10488a9a: ldr      r2, [pc, #0x32c]
10488a9c: cmp      r0, r2
10488a9e: bne      #0x10488ab2
10488aa0: ldr      r0, [r1]
10488aa2: cmp      r0, #0xa
10488aa4: bne      #0x10488ab2
10488aa6: ldr      r0, [pc, #0x2f0]
10488aa8: movw     r1, #0x1000
10488aac: subs     r0, #0x78
10488aae: b.w      #0x1035c98c
10488ab2: bx       lr
10488ab4: push     {lr}
10488ab6: cmp      r0, #1
10488ab8: sub.w    sp, sp, #0x3f4
10488abc: bne      #0x10488ad4
10488abe: ldr      r0, [pc, #0x2d8]
10488ac0: movs     r1, #1
10488ac2: mov      r2, sp
10488ac4: subs     r0, #0x28
10488ac6: bl       #0x10553938
10488aca: cmp      r0, #1
10488acc: bne      #0x10488ad4
10488ace: ldr      r0, [sp, #4]
10488ad0: bl       #0x104a5214
10488ad4: add.w    sp, sp, #0x3f4
10488ad8: pop      {pc}
10488ada: push     {r4, r5, r6, r7, lr}
10488adc: ldr      r2, [pc, #0x2ec]
10488ade: sub.w    sp, sp, #0x3fc
10488ae2: cmp      r0, r2
10488ae4: bne      #0x10488aea
10488ae6: movs     r1, #0x80
10488ae8: b        #0x10488b02
10488aea: ldr      r2, [pc, #0x2e0]
10488aec: adds     r2, r2, #1
10488aee: cmp      r0, r2
10488af0: bne      #0x10488b10
10488af2: ldr      r0, [pc, #0x2a4]
10488af4: movs     r2, #0
10488af6: movs     r1, #1
10488af8: subs     r0, #0x4c
10488afa: bl       #0x10553938
10488afe: movw     r1, #0x100
10488b02: ldr      r0, [pc, #0x294]
10488b04: subs     r0, #0x78
10488b06: bl       #0x1035c98c
10488b0a: add.w    sp, sp, #0x3fc
10488b0e: pop      {r4, r5, r6, r7, pc}
10488b10: ldr      r2, [pc, #0x2b8]
10488b12: movw     r5, #0x800
10488b16: movw     r6, #0x1000
10488b1a: adds     r2, r2, #2
10488b1c: cmp      r0, r2
10488b1e: bne      #0x10488b62
10488b20: movw     r2, #0x3f0
10488b24: mov      r0, sp
10488b26: blx      #0x1035d1ec
10488b2a: ldr      r7, [pc, #0x26c]
10488b2c: adds     r7, #0xe8
10488b2e: ldr      r0, [r7, #0x64]
10488b30: cmp      r0, #0
10488b32: bne      #0x10488b0a
10488b34: ldr      r0, [sp]
10488b36: movs     r4, #1
10488b38: cmp      r0, #1
10488b3a: bne      #0x10488b58
10488b3c: ldr      r0, [sp, #0x3c8]
10488b3e: cbz      r0, #0x10488b58
10488b40: movs     r1, #0
10488b42: mov      r2, sp
10488b44: sub.w    r0, r7, #0x110
10488b48: bl       #0x105538c2
10488b4c: cmp      r0, #1
10488b4e: beq      #0x10488b54
10488b50: str      r4, [r7, #0x64]
10488b52: b        #0x10488b8e
10488b54: movs     r1, #0x40
10488b56: b        #0x10488b02
10488b58: ldr      r0, [pc, #0x23c]
10488b5a: str      r4, [r7, #0x64]
10488b5c: adds     r0, #0xc4
10488b5e: str      r4, [r0, #0x20]
10488b60: b        #0x10488b82
10488b62: ldr      r1, [pc, #0x268]
10488b64: adds     r1, r1, #3
10488b66: cmp      r0, r1
10488b68: bne      #0x10488b7a
10488b6a: movs     r0, #0
10488b6c: str      r0, [sp, #0x3f0]
10488b6e: str      r0, [sp, #0x3f4]
10488b70: str      r0, [sp, #0x3f8]
10488b72: add      r0, sp, #0x3f0
10488b74: bl       #0x104c1030
10488b78: b        #0x10488b0a
10488b7a: ldr      r1, [pc, #0x250]
10488b7c: adds     r1, #0x81
10488b7e: cmp      r0, r1
10488b80: bne      #0x10488b86
10488b82: mov      r1, r6
10488b84: b        #0x10488b02
10488b86: ldr      r1, [pc, #0x244]
10488b88: adds     r1, #0x80
10488b8a: cmp      r0, r1
10488b8c: bne      #0x10488b0a
10488b8e: mov      r1, r5
10488b90: b        #0x10488b02
10488b92: ldr      r1, [pc, #0x208]
10488b94: movs     r0, #0
10488b96: push     {r4, lr}
10488b98: subs     r1, #8
10488b9a: strb     r0, [r1]
10488b9c: bl       #0x104883bc
10488ba0: ldr      r1, [pc, #0x22c]
10488ba2: mov      r0, r1
10488ba4: bl       #0x104a51f4
10488ba8: ldr      r0, [pc, #0x228]
10488baa: bl       #0x104a87aa
10488bae: pop.w    {r4, lr}
10488bb2: ldr      r0, [pc, #0x224]
10488bb4: b.w      #0x104c0ff4
10488bb8: ldr      r0, [pc, #0x1dc]
10488bba: subs     r0, #0x78
10488bbc: b.w      #0x1035c986
10488bc0: bx       lr
10488bc2: ldr      r1, [pc, #0x1d8]
10488bc4: subs     r1, #8
10488bc6: str      r0, [r1, #4]
10488bc8: bx       lr
10488bca: push     {r3, lr}
10488bcc: movs     r1, #0
10488bce: movs     r2, #0x80
10488bd0: str      r1, [sp]
10488bd2: mov      r1, r0
10488bd4: ldr      r0, [pc, #0x1c0]
10488bd6: blx      #0x1035d1ec
10488bda: ldr      r0, [pc, #0x1bc]
10488bdc: movs     r1, #1
10488bde: subs     r0, #0x78
10488be0: bl       #0x1035c98c
10488be4: ldr      r0, [pc, #0x1b4]
10488be6: movs     r1, #1
10488be8: mov      r2, sp
10488bea: bl       #0x1035d382
10488bee: ldr      r0, [sp]
10488bf0: and      r1, r0, #1
10488bf4: ldr      r0, [pc, #0x1a4]
10488bf6: bl       #0x1035d37a
10488bfa: pop      {r3, pc}
10488bfc: push     {r3, lr}
10488bfe: movs     r0, #0
10488c00: movs     r1, #2
10488c02: str      r0, [sp]
10488c04: ldr      r0, [pc, #0x190]
10488c06: subs     r0, #0x78
10488c08: bl       #0x1035c98c
10488c0c: ldr      r0, [pc, #0x18c]
10488c0e: movs     r1, #4
10488c10: mov      r2, sp
10488c12: bl       #0x1035d382
10488c16: ldr      r0, [sp]
10488c18: and      r1, r0, #4
10488c1c: ldr      r0, [pc, #0x17c]
10488c1e: bl       #0x1035d37a
10488c22: pop      {r3, pc}
10488c24: push     {r3, lr}
10488c26: movs     r0, #0
10488c28: movs     r1, #4
10488c2a: str      r0, [sp]
10488c2c: ldr      r0, [pc, #0x168]
10488c2e: subs     r0, #0x78
10488c30: bl       #0x1035c98c
10488c34: ldr      r0, [pc, #0x164]
10488c36: movs     r1, #8
10488c38: mov      r2, sp
10488c3a: bl       #0x1035d382
10488c3e: ldr      r0, [sp]
10488c40: and      r1, r0, #8
10488c44: ldr      r0, [pc, #0x154]
10488c46: bl       #0x1035d37a
10488c4a: pop      {r3, pc}
10488c4c: ldr      r1, [pc, #0x148]
10488c4e: adds     r1, #0xe8
10488c50: ldr      r1, [r1, #0xc]
10488c52: str      r1, [r0]
10488c54: bx       lr
10488c56: ldr      r1, [pc, #0x140]
10488c58: ldr      r2, [r1, #0x70]
10488c5a: adds     r1, #0xe8
10488c5c: ldr      r1, [r1, #8]
10488c5e: cbz      r2, #0x10488c62
10488c60: lsls     r1, r1, #1
10488c62: str      r1, [r0]
10488c64: bx       lr
10488c66: cmp      r0, #0xa
10488c68: mov.w    r2, #0
10488c6c: bhs      #0x10488c78
10488c6e: ldr      r2, [pc, #0x128]
10488c70: adds     r2, #0xe8
10488c72: add.w    r0, r2, r0, lsl #2
10488c76: ldr      r2, [r0, #0x10]
10488c78: str      r2, [r1]
10488c7a: bx       lr
10488c7c: ldr      r1, [pc, #0x11c]
10488c7e: subs     r1, #8
10488c80: ldrb     r2, [r1]
10488c82: movs     r1, #0
10488c84: cmp      r2, #3
10488c86: bne      #0x10488c92
10488c88: ldr      r1, [pc, #0x10c]
10488c8a: adds     r1, #0xe8
10488c8c: ldr.w    r1, [r1, #0xc0]
10488c90: adds     r1, r1, #1
10488c92: str      r1, [r0]
10488c94: bx       lr
10488c96: push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
10488c9a: ldr      r5, [pc, #0x100]
10488c9c: mov      r8, r0
10488c9e: sub      sp, #0x24
10488ca0: subs     r5, #8
10488ca2: ldrb     r0, [r5]
10488ca4: cmp      r0, #0
10488ca6: beq      #0x10488d20
10488ca8: cmp      r0, #3
10488caa: beq      #0x10488d20
10488cac: ldr.w    r4, [r8, #4]
10488cb0: cmp      r4, #0
10488cb2: beq      #0x10488d20
10488cb4: ldr.w    r7, [r8, #8]
10488cb8: adds     r7, r7, #1
10488cba: mul      r0, r4, r7
10488cbe: cmp      r0, #0x3c
10488cc0: bhi      #0x10488d20
10488cc2: add.w    r0, r5, #0xc
10488cc6: bl       #0x1035d1c0
10488cca: movs     r6, #0
10488ccc: mov      sl, r5
10488cce: mov.w    fp, #1
10488cd2: b        #0x10488d14
10488cd4: movs     r5, #0
10488cd6: rsb      sb, r6, r6, lsl #3
10488cda: b        #0x10488d0e
10488cdc: movs     r1, #0x20
10488cde: mov      r0, sp
10488ce0: bl       #0x1035d2dc
10488ce4: ldr.w    r1, [r8]
10488ce8: movs     r2, #0x1c
10488cea: mov      r0, sp
10488cec: add.w    r1, r1, sb, lsl #2
10488cf0: blx      #0x1035d1ec
10488cf4: cbz      r5, #0x10488cfe
10488cf6: str.w    fp, [sp, #0x1c]
10488cfa: str.w    fp, [sl, #0x18]
10488cfe: movs     r1, #0
10488d00: ldr      r0, [pc, #0x94]
10488d02: mov      r2, sp
10488d04: subs     r0, #0x4c
10488d06: bl       #0x105538c2
10488d0a: cbz      r0, #0x10488d26
10488d0c: adds     r5, r5, #1
10488d0e: cmp      r5, r7
10488d10: blo      #0x10488cdc
10488d12: adds     r6, r6, #1
10488d14: cmp      r6, r4
10488d16: blo      #0x10488cd4
10488d18: ldr      r0, [pc, #0x80]
10488d1a: adds     r0, r0, #4
10488d1c: bl       #0x1035d1ba
10488d20: add      sp, #0x24
10488d22: pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
10488d26: ldr      r0, [pc, #0x70]
10488d28: movw     r1, #0x400
10488d2c: subs     r0, #0x78
10488d2e: bl       #0x1035c98c
10488d32: b        #0x10488d12
10488d34: ldr      r0, [pc, #0x60]
10488d36: push     {r4, lr}
10488d38: ldrb.w   r0, [r0, #0x65]
10488d3c: cmp      r0, #1
10488d3e: bne      #0x10488d70
10488d40: ldr      r0, [pc, #0x58]
10488d42: adds     r0, #8
10488d44: bl       #0x1035d1c0
10488d48: ldr      r0, [pc, #0x4c]
10488d4a: adds     r0, #0xe8
10488d4c: ldr.w    r1, [r0, #0x108]
10488d50: cmp      r1, #1
10488d52: bhi      #0x10488d5a
10488d54: adds     r1, r1, #1
10488d56: str.w    r1, [r0, #0x108]
10488d5a: ldr      r0, [pc, #0x3c]
10488d5c: movs     r1, #0x20
10488d5e: subs     r0, #0x78
10488d60: bl       #0x1035c98c
10488d64: ldr      r0, [pc, #0x34]
10488d66: pop.w    {r4, lr}
10488d6a: adds     r0, #8
10488d6c: b.w      #0x1035d1ba
10488d70: pop      {r4, pc}
10488d72: ldr      r0, [pc, #0x28]
10488d74: push     {r4, lr}
10488d76: subs     r0, #8
10488d78: ldr      r4, [pc, #0x1c]
10488d7a: adds     r4, #0xe8
10488d7c: ldrb     r0, [r0]
10488d7e: cmp      r0, #1
10488d80: beq      #0x10488d86
10488d82: cmp      r0, #2
10488d84: bne      #0x10488d90
10488d86: ldr      r0, [pc, #0x10]
10488d88: adds     r0, #0xc4
10488d8a: ldr      r0, [r0, #0x1c]
10488d8c: cmp      r0, #1
10488d8e: beq      #0x10488de8
10488d90: ldr      r0, [pc, #8]
10488d92: adds     r0, #8
10488d94: b        #0x10488ddc
10488d96: movs     r0, r0
10488d98: ldrh     r0, [r2, #0x32]
10488d9a: stm      r1!, {r0, r2, r4, r5, r6, r7}
10488d9c: asrs     r4, r0, #0x1e
10488d9e: stm      r1!, {r0, r7}
10488da0: strh     r7, [r2, #0x3c]
10488da2: asrs     r0, r1, #1
10488da4: ldr      r7, [pc, #0x134]
10488da6: strh     r6, [r2, r5]
10488da8: cmp      r2, sl
10488daa: adds     r1, #0x56
10488dac: movs     r0, r0
10488dae: movs     r0, r0
10488db0: ldr      r7, [pc, #0x134]
10488db2: strh     r6, [r2, r5]
10488db4: ldr      r5, [pc, #0x148]
10488db6: adds     r1, #0x58
10488db8: movs     r0, r0
10488dba: movs     r0, r0
10488dbc: ldr      r7, [pc, #0x134]
10488dbe: strh     r6, [r2, r5]
10488dc0: ldr      r5, [pc, #0x148]
10488dc2: adds     r3, #0x58
10488dc4: movs     r0, r0
10488dc6: movs     r0, r0
10488dc8: movs     r1, r0
10488dca: tst      r7, r0
10488dcc: movs     r1, r0
10488dce: tst      r4, r1
10488dd0: ldrh     r3, [r3, #0x16]
10488dd2: asrs     r0, r1, #1
10488dd4: ldrh     r5, [r6, #0x14]
10488dd6: asrs     r0, r1, #1
10488dd8: ldrh     r3, [r3, #0x14]
10488dda: asrs     r0, r1, #1
10488ddc: bl       #0x1035d1c0
10488de0: movs     r0, #0
10488de2: str.w    r0, [r4, #0x108]
10488de6: b        #0x10488e04
10488de8: ldr      r0, [pc, #0x24]
10488dea: bl       #0x1035d1c0
10488dee: ldr.w    r0, [r4, #0x108]
10488df2: cbz      r0, #0x10488e04
10488df4: subs     r0, r0, #1
10488df6: str.w    r0, [r4, #0x108]
10488dfa: beq      #0x10488e04
10488dfc: ldr      r0, [pc, #0x14]
10488dfe: movs     r1, #0x20
10488e00: bl       #0x1035c98c
10488e04: pop.w    {r4, lr}
10488e08: ldr      r0, [pc, #4]
10488e0a: b.w      #0x1035d1ba
10488e0e: movs     r0, r0
10488e10: asrs     r4, r1, #0x1e
10488e12: stm      r1!, {r0, r7}
10488e14: ldrh     r0, [r3, #0x2e]
10488e16: stm      r1!, {r0, r2, r4, r5, r6, r7}
10488e18: push     {r0, r1, r2, r3, r4, lr}
10488e1a: movs     r4, #0
10488e1c: str      r4, [sp]
10488e1e: bl       #0x10488bfc
10488e22: ldr      r0, [pc, #0x3f8]
10488e24: ldr      r0, [r0, #0x70]
10488e26: cbz      r0, #0x10488e4a
10488e28: add      r0, sp, #4
10488e2a: str      r4, [sp, #4]
10488e2c: str      r4, [sp, #8]
10488e2e: str      r4, [sp, #0xc]
10488e30: bl       #0x104c100c
10488e34: ldr      r0, [pc, #0x3e8]
10488e36: movs     r1, #2
10488e38: mov      r2, sp
10488e3a: bl       #0x1035d382
10488e3e: ldr      r0, [sp]
10488e40: and      r1, r0, #2
10488e44: ldr      r0, [pc, #0x3d8]
10488e46: bl       #0x1035d37a
10488e4a: movs     r0, #0x64
10488e4c: bl       #0x103dec94
10488e50: ldr      r0, [pc, #0x3cc]
10488e52: subs     r0, r0, #4
10488e54: ldr      r0, [r0]
10488e56: cmp      r0, #1
10488e58: bne      #0x10488e68
10488e5a: movs     r2, #0
10488e5c: ldr      r1, [pc, #0x3c4]
10488e5e: mov      r0, r2
10488e60: bl       #0x10580b0a
10488e64: bl       #0x10487a08
10488e68: pop      {r0, r1, r2, r3, r4, pc}
10488e6a: ldr      r0, [pc, #0x3b0]
10488e6c: movs     r1, #0x80
10488e6e: push     {r4, lr}
10488e70: bl       #0x1035d2dc
10488e74: ldr      r0, [pc, #0x3a4]
10488e76: movw     r1, #0x140
10488e7a: adds     r0, #0x80
10488e7c: bl       #0x1035d2dc
10488e80: ldr      r1, [pc, #0x3a4]
10488e82: movs     r0, #0
10488e84: mov      r2, r0
10488e86: str      r0, [r1, #0x70]
10488e88: str      r0, [r1, #0x74]
10488e8a: str      r0, [r1, #0x78]
10488e8c: str      r0, [r1, #0x7c]
10488e8e: ldr      r1, [pc, #0x390]
10488e90: subs     r1, #0xc
10488e92: str      r0, [r1, #8]
10488e94: mov      r1, r0
10488e96: bl       #0x104a756a
10488e9a: movs     r2, #0
10488e9c: movs     r0, #2
10488e9e: mov      r1, r2
10488ea0: bl       #0x104a756a
10488ea4: movs     r2, #0
10488ea6: movs     r0, #3
10488ea8: mov      r1, r2
10488eaa: bl       #0x104a756a
10488eae: movs     r2, #0
10488eb0: movs     r0, #4
10488eb2: mov      r1, r2
10488eb4: bl       #0x104a756a
10488eb8: movs     r2, #0
10488eba: pop.w    {r4, lr}
10488ebe: movs     r0, #5
10488ec0: mov      r1, r2
10488ec2: b.w      #0x104a756a
10488ec6: cmp      r0, #1
10488ec8: bne      #0x10488ed4
10488eca: lsls     r1, r0, #0xd
10488ecc: ldr      r0, [pc, #0x34c]
10488ece: subs     r0, #0x30
10488ed0: b.w      #0x1035c98c
10488ed4: bx       lr
10488ed6: cmp      r0, #1
10488ed8: beq      #0x10488efa
10488eda: cmp      r0, #2
10488edc: beq      #0x10488f00
10488ede: cmp      r0, #3
10488ee0: beq      #0x10488f06
10488ee2: cmp      r0, #4
10488ee4: beq      #0x10488f0c
10488ee6: cmp      r0, #5
10488ee8: beq      #0x10488f12
10488eea: cmp      r0, #6
10488eec: bne      #0x10488f18
10488eee: movw     r1, #0x4000
10488ef2: ldr      r0, [pc, #0x328]
10488ef4: subs     r0, #0x30
10488ef6: b.w      #0x1035c98c
10488efa: movw     r1, #0x100
10488efe: b        #0x10488ef2
10488f00: movw     r1, #0x200
10488f04: b        #0x10488ef2
10488f06: movw     r1, #0x400
10488f0a: b        #0x10488ef2
10488f0c: movw     r1, #0x1000
10488f10: b        #0x10488ef2
10488f12: movw     r1, #0x2000
10488f16: b        #0x10488ef2
10488f18: bx       lr
10488f1a: cmp      r0, #3
10488f1c: beq      #0x10488f2c
10488f1e: cmp      r0, #4
10488f20: bne      #0x10488f32
10488f22: lsls     r1, r0, #0xc
10488f24: ldr      r0, [pc, #0x2f4]
10488f26: subs     r0, #0x30
10488f28: b.w      #0x1035c98c
10488f2c: movw     r1, #0x2000
10488f30: b        #0x10488f24
10488f32: bx       lr
10488f34: push     {r4, r5, r6, r7, lr}
10488f36: sub      sp, #0x24
10488f38: movs     r7, #0
10488f3a: movs     r0, #1
10488f3c: mov      r6, r7
10488f3e: str      r7, [sp]
10488f40: str      r7, [sp, #4]
10488f42: bl       #0x10553bb2
10488f46: ldr      r1, [pc, #0x2d8]
10488f48: movs     r0, #0
10488f4a: ldr      r5, [pc, #0x2d0]
10488f4c: subs     r1, #0xc
10488f4e: str      r7, [r1, #4]
10488f50: add.w    r1, r5, #0x80
10488f54: b        #0x10488f62
10488f56: add.w    r3, r5, r0, lsl #2
10488f5a: add.w    r2, r1, r0, lsl #5
10488f5e: adds     r0, r0, #1
10488f60: str      r2, [r3, #0x1c]
10488f62: ldr      r2, [r5]
10488f64: cmp      r2, r0
10488f66: bhi      #0x10488f56
10488f68: ldrb.w   r0, [r5, #0x64]
10488f6c: cmp      r0, #1
10488f6e: bne      #0x10488f7c
10488f70: ldrb.w   r0, [r5, #0x69]
10488f74: cbz      r0, #0x10488f7c
10488f76: movs     r6, #1
10488f78: strb.w   r7, [r5, #0x69]
10488f7c: ldr      r4, [pc, #0x2ac]
10488f7e: ldrb.w   r0, [r5, #0x58]
10488f82: cbz      r0, #0x10488f8c
10488f84: cmp      r0, #1
10488f86: mov      r1, r5
10488f88: beq      #0x10488f90
10488f8a: b        #0x10488fb4
10488f8c: ldr      r0, [r5, #0x5c]
10488f8e: b        #0x10488faa
10488f90: ldr      r2, [r1, #0x60]
10488f92: movs     r0, #3
10488f94: udiv     r0, r2, r0
10488f98: mov      r2, sp
10488f9a: add.w    r0, r0, r0, lsl #1
10488f9e: str      r0, [r1, #0x60]
10488fa0: ldrb.w   r1, [r5, #0x67]
10488fa4: bl       #0x10553b4e
10488fa8: ldr      r0, [sp]
10488faa: sub.w    r0, r0, #0x3e8
10488fae: cmp      r0, r4
10488fb0: blo      #0x10488fb4
10488fb2: movs     r6, #1
10488fb4: ldrb.w   r4, [r5, #0x67]
10488fb8: cmp      r4, #7
10488fba: beq      #0x10488fc4
10488fbc: cmp      r4, #8
10488fbe: beq      #0x10488fc4
10488fc0: cmp      r4, #9
10488fc2: bne      #0x10488fdc
10488fc4: ldrb.w   r1, [r5, #0x66]
10488fc8: mov      r0, r5
10488fca: cmp      r1, #1
10488fcc: beq      #0x10488fd0
10488fce: movs     r6, #1
10488fd0: ldrb.w   r1, [r0, #0x69]
10488fd4: cbz      r1, #0x10488fdc
10488fd6: movs     r6, #1
10488fd8: strb.w   r7, [r5, #0x69]
10488fdc: cmp      r4, #1
10488fde: beq      #0x10488ff8
10488fe0: cmp      r4, #3
10488fe2: beq      #0x10488ff8
10488fe4: cmp      r4, #4
10488fe6: beq      #0x10488ff8
10488fe8: cmp      r4, #6
10488fea: beq      #0x10488ff8
10488fec: cmp      r4, #7
10488fee: beq      #0x10488ff8
10488ff0: cmp      r4, #8
10488ff2: beq      #0x10488ff8
10488ff4: cmp      r4, #9
10488ff6: bne      #0x10489000
10488ff8: ldrb.w   r0, [r5, #0x6a]
10488ffc: cmp      r0, #1
10488ffe: beq      #0x10489012
10489000: cbz      r6, #0x10489018
10489002: ldr      r0, [pc, #0x218]
10489004: movw     r1, #0x4000
10489008: subs     r0, #0x30
1048900a: bl       #0x1035c98c
1048900e: add      sp, #0x24
10489010: pop      {r4, r5, r6, r7, pc}
10489012: strb.w   r7, [r5, #0x6a]
10489016: b        #0x10489002
10489018: ldr      r0, [r5, #0x70]
1048901a: cbz      r0, #0x1048904a
1048901c: movs     r1, #0x18
1048901e: add      r0, sp, #8
10489020: bl       #0x1035d2dc
10489024: strb.w   r4, [sp, #0x14]
10489028: ldrb.w   r0, [r5, #0x66]
1048902c: strb.w   r0, [sp, #0x15]
10489030: ldrb.w   r0, [r5, #0x68]
10489034: strb.w   r0, [sp, #0x16]
10489038: ldr      r0, [r5, #0x74]
1048903a: str      r0, [sp, #0x18]
1048903c: ldrh.w   r0, [r5, #0x78]
10489040: strh.w   r0, [sp, #0x1c]
10489044: add      r0, sp, #8
10489046: bl       #0x104c1000
1048904a: ldr      r0, [pc, #0x1e4]
1048904c: bl       #0x104a87a4
10489050: ldr      r0, [pc, #0x1c8]
10489052: bl       #0x104a87b6
10489056: ldr      r0, [pc, #0x1dc]
10489058: bl       #0x10488bc2
1048905c: ldr      r0, [pc, #0x1bc]
1048905e: bl       #0x10488bca
10489062: ldr      r0, [pc, #0x1d4]
10489064: bl       #0x104879cc
10489068: ldrb.w   r0, [r5, #0x69]
1048906c: cbz      r0, #0x1048907c
1048906e: ldr      r1, [pc, #0x1b0]
10489070: movs     r0, #1
10489072: subs     r1, r1, #4
10489074: str      r0, [r1]
10489076: ldr      r0, [pc, #0x1a4]
10489078: bl       #0x104879d2
1048907c: ldr      r0, [r5, #0x70]
1048907e: cmp      r0, #0
10489080: beq      #0x1048900e
10489082: ldr      r0, [pc, #0x19c]
10489084: movs     r1, #1
10489086: add      r2, sp, #4
10489088: bl       #0x1035d382
1048908c: ldr      r0, [sp, #4]
1048908e: and      r1, r0, #1
10489092: ldr      r0, [pc, #0x18c]
10489094: bl       #0x1035d37a
10489098: b        #0x1048900e
1048909a: push.w   {r4, r5, r6, r7, r8, sb, sl, lr}
1048909e: ldr      r4, [pc, #0x180]
104890a0: mov      r5, r0
104890a2: lsls     r0, r0, #0x1f
104890a4: mov.w    r7, #1
104890a8: sub.w    r4, r4, #0xc
104890ac: beq      #0x104890c4
104890ae: ldrb     r0, [r4]
104890b0: cbnz     r0, #0x104890b8
104890b2: bl       #0x10488f34
104890b6: strb     r7, [r4]
104890b8: movs     r2, #0
104890ba: ldr      r1, [pc, #0x168]
104890bc: mov      r0, r2
104890be: subs     r1, #8
104890c0: bl       #0x10580b0a
104890c4: lsls     r0, r5, #0x1e
104890c6: mov.w    r6, #2
104890ca: bpl      #0x104890e6
104890cc: ldrb     r0, [r4]
104890ce: cbz      r0, #0x104890da
104890d0: cmp      r0, #1
104890d2: bne      #0x104890da
104890d4: bl       #0x10488e18
104890d8: strb     r6, [r4]
104890da: movs     r2, #0
104890dc: ldr      r1, [pc, #0x144]
104890de: mov      r0, r2
104890e0: subs     r1, r1, #7
104890e2: bl       #0x10580b0a
104890e6: lsls     r0, r5, #0x1d
104890e8: bpl      #0x1048910a
104890ea: ldrb     r0, [r4]
104890ec: cbz      r0, #0x104890fe
104890ee: cmp      r0, #1
104890f0: beq      #0x104890fe
104890f2: cmp      r0, #2
104890f4: bne      #0x104890fe
104890f6: bl       #0x104a87ee
104890fa: movs     r0, #3
104890fc: strb     r0, [r4]
104890fe: ldr      r1, [pc, #0x124]
10489100: movs     r2, #0
10489102: mov      r0, r2
10489104: subs     r1, r1, #6
10489106: bl       #0x10580b0a
1048910a: lsls     r0, r5, #0x1c
1048910c: bpl      #0x10489132
1048910e: ldrb     r0, [r4]
10489110: cbz      r0, #0x10489126
10489112: cmp      r0, #1
10489114: beq      #0x10489126
10489116: cmp      r0, #2
10489118: beq      #0x10489126
1048911a: cmp      r0, #3
1048911c: bne      #0x10489126
1048911e: ldr      r0, [pc, #0x108]
10489120: adds     r0, #0x70
10489122: bl       #0x104a882e
10489126: ldr      r1, [pc, #0xfc]
10489128: movs     r2, #0
1048912a: mov      r0, r2
1048912c: subs     r1, r1, #5
1048912e: bl       #0x10580b0a
10489132: lsls     r0, r5, #0x1b
10489134: bpl      #0x1048915a
10489136: ldrb     r0, [r4]
10489138: cbz      r0, #0x1048914e
1048913a: cmp      r0, #1
1048913c: beq      #0x1048914e
1048913e: cmp      r0, #2
10489140: beq      #0x1048914e
10489142: cmp      r0, #3
10489144: bne      #0x1048914e
10489146: bl       #0x1048946a
1048914a: movs     r0, #0
1048914c: strb     r0, [r4]
1048914e: ldr      r1, [pc, #0xd4]
10489150: movs     r0, #0
10489152: ldr      r2, [r4, #4]
10489154: subs     r1, r1, #4
10489156: bl       #0x10580b0a
1048915a: lsls     r0, r5, #0x17
1048915c: bpl      #0x10489172
1048915e: ldrb     r0, [r4]
10489160: cbz      r0, #0x10489172
10489162: cmp      r0, #1
10489164: bne      #0x10489172
10489166: ldr      r1, [pc, #0xbc]
10489168: movs     r2, #0
1048916a: mov      r0, r2
1048916c: subs     r1, r1, #3
1048916e: bl       #0x10580b0a
10489172: lsls     r0, r5, #0x16
10489174: bpl      #0x1048918a
10489176: ldrb     r0, [r4]
10489178: cbz      r0, #0x1048918a
1048917a: cmp      r0, #1
1048917c: bne      #0x1048918a
1048917e: ldr      r1, [pc, #0xa4]
10489180: movs     r2, #0
10489182: mov      r0, r2
10489184: subs     r1, r1, #2
10489186: bl       #0x10580b0a
1048918a: lsls     r0, r5, #0x15
1048918c: bpl      #0x104891a2
1048918e: ldrb     r0, [r4]
10489190: cbz      r0, #0x104891a2
10489192: cmp      r0, #1
10489194: bne      #0x104891a2
10489196: ldr      r1, [pc, #0x8c]
10489198: movs     r2, #0
1048919a: mov      r0, r2
1048919c: subs     r1, r1, #1
1048919e: bl       #0x10580b0a
104891a2: ldr.w    r8, [pc, #0x98]
104891a6: lsls     r0, r5, #0x13
104891a8: add.w    sb, r8, #1
104891ac: bpl      #0x104891d6
104891ae: ldrb     r0, [r4]
104891b0: cbz      r0, #0x104891d6
104891b2: cmp      r0, #1
104891b4: bne      #0x104891d6
104891b6: movs     r2, #1
104891b8: mov      r1, r8
104891ba: movs     r0, #0
104891bc: bl       #0x10580b0a
104891c0: movs     r0, #1
104891c2: bl       #0x104a8818
104891c6: bl       #0x10488e18
104891ca: movs     r2, #0
104891cc: mov      r1, sb
104891ce: mov      r0, r2
104891d0: strb     r6, [r4]
104891d2: bl       #0x10580b0a
104891d6: lsls     r0, r5, #0x12
104891d8: bpl      #0x10489202
104891da: ldrb     r0, [r4]
104891dc: cbz      r0, #0x10489202
104891de: cmp      r0, #1
104891e0: bne      #0x10489202
104891e2: movs     r2, #2
104891e4: mov      r1, r8
104891e6: movs     r0, #0
104891e8: bl       #0x10580b0a
104891ec: movs     r0, #2
104891ee: bl       #0x104a8818
104891f2: bl       #0x10488e18
104891f6: movs     r2, #0
104891f8: mov      r1, sb
104891fa: mov      r0, r2
104891fc: strb     r6, [r4]
104891fe: bl       #0x10580b0a
10489202: lsls     r0, r5, #0x11
10489204: bpl      #0x1048925c
10489206: ldrb     r0, [r4]
10489208: cmp      r0, #0
1048920a: beq      #0x1048925c
1048920c: cmp      r0, #1
1048920e: bne      #0x1048925c
10489210: movs     r2, #3
10489212: mov      r1, r8
10489214: movs     r0, #0
10489216: bl       #0x10580b0a
1048921a: b        #0x10489240
1048921c: str      r0, [sp, #0x1e0]
1048921e: stm      r1!, {r0, r2, r4, r5, r6, r7}
10489220: asrs     r4, r4, #0x1e
10489222: stm      r1!, {r0, r7}
10489224: lsls     r0, r1, #4
10489226: orrs     r4, r0
10489228: str      r1, [sp, #0x320]
1048922a: stm      r1!, {r0, r2, r4, r5, r6, r7}
1048922c: ldr      r1, [r6, #0x74]
1048922e: movs     r3, r3
10489230: ldrh     r3, [r3, #0x38]
10489232: asrs     r0, r1, #1
10489234: ldrh     r7, [r2, #0x36]
10489236: asrs     r0, r1, #1
10489238: ldrh     r7, [r0, #0x36]
1048923a: asrs     r0, r1, #1
1048923c: lsls     r1, r1, #4
1048923e: orrs     r4, r0
10489240: movs     r0, #3
10489242: bl       #0x104a8818
10489246: bl       #0x10488e18
1048924a: str      r7, [r4, #4]
1048924c: mov      r1, sb
1048924e: strb     r6, [r4]
10489250: movs     r2, #0
10489252: pop.w    {r4, r5, r6, r7, r8, sb, sl, lr}
10489256: mov      r0, r2
10489258: b.w      #0x10580b0a
1048925c: pop.w    {r4, r5, r6, r7, r8, sb, sl, pc}
10489260: push     {r4, lr}
10489262: ldr      r0, [pc, #0x278]
10489264: adr      r1, #0x26c
10489266: movw     r4, #0x771f
1048926a: bl       #0x1035d32a
1048926e: movs     r0, #0x21
10489270: bl       #0x103d6546
10489274: mov      r2, r4
10489276: ldr      r1, [pc, #0x268]
10489278: pop.w    {r4, lr}
1048927c: mov      r3, r0
1048927e: ldr      r0, [pc, #0x264]
10489280: b.w      #0x1035c95e
10489284: ldr      r2, [pc, #0x260]
10489286: cmp      r0, r2
10489288: bne      #0x104892a8
1048928a: ldr      r0, [r1]
1048928c: cmp      r0, #2
1048928e: beq      #0x104892a0
10489290: cmp      r0, #4
10489292: beq      #0x104892a4
10489294: cmp      r0, #6
10489296: bne      #0x104892a8
10489298: movs     r1, #4
1048929a: ldr      r0, [pc, #0x240]
1048929c: b.w      #0x1035d374
104892a0: movs     r1, #1
104892a2: b        #0x1048929a
104892a4: movs     r1, #2
104892a6: b        #0x1048929a
104892a8: bx       lr
104892aa: ldr      r0, [pc, #0x230]
104892ac: movs     r1, #0
104892ae: push     {r4, lr}
104892b0: subs     r0, #0xc
104892b2: strb     r1, [r0]
104892b4: str      r1, [r0, #4]
104892b6: bl       #0x10488e6a
104892ba: bl       #0x104a74c8
104892be: ldr      r0, [pc, #0x21c]
104892c0: mov.w    r1, #-1
104892c4: bl       #0x1035d37a
104892c8: pop.w    {r4, lr}
104892cc: ldr      r0, [pc, #0x21c]
104892ce: b.w      #0x104c0fee
104892d2: ldr      r0, [pc, #0x210]
104892d4: b.w      #0x1035c986
104892d8: bx       lr
104892da: movs     r1, #0
104892dc: str      r1, [r0]
104892de: ldr      r1, [pc, #0x1fc]
104892e0: subs     r1, #0xc
104892e2: ldrb     r1, [r1]
104892e4: cmp      r1, #0
104892e6: beq      #0x104892f8
104892e8: cmp      r1, #1
104892ea: beq      #0x104892f4
104892ec: cmp      r1, #2
104892ee: beq      #0x104892f4
104892f0: cmp      r1, #3
104892f2: bne      #0x104892f8
104892f4: b.w      #0x10488c4c
104892f8: bx       lr
104892fa: movs     r1, #0
104892fc: str      r1, [r0]
104892fe: ldr      r1, [pc, #0x1dc]
10489300: subs     r1, #0xc
10489302: ldrb     r1, [r1]
10489304: cmp      r1, #0
10489306: beq      #0x1048931c
10489308: cmp      r1, #1
1048930a: beq      #0x10489318
1048930c: cmp      r1, #2
1048930e: beq      #0x10489318
10489310: cmp      r1, #3
10489312: bne      #0x1048931c
10489314: b.w      #0x104a8900
10489318: b.w      #0x10488c56
1048931c: bx       lr
1048931e: movs     r2, #0
10489320: str      r2, [r1]
10489322: ldr      r2, [pc, #0x1b8]
10489324: subs     r2, #0xc
10489326: ldrb     r2, [r2]
10489328: cmp      r2, #0
1048932a: beq      #0x10489340
1048932c: cmp      r2, #1
1048932e: beq      #0x1048933c
10489330: cmp      r2, #2
10489332: beq      #0x1048933c
10489334: cmp      r2, #3
10489336: bne      #0x10489340
10489338: b.w      #0x104a8936
1048933c: b.w      #0x10488c66
10489340: bx       lr
10489342: movs     r2, #0
10489344: str      r2, [r1]
10489346: ldr      r2, [pc, #0x194]
10489348: subs     r2, #0xc
1048934a: ldrb     r2, [r2]
1048934c: cmp      r2, #0
1048934e: beq      #0x10489360
10489350: cmp      r2, #1
10489352: beq      #0x10489360
10489354: cmp      r2, #2
10489356: beq      #0x10489360
10489358: cmp      r2, #3
1048935a: bne      #0x10489360
1048935c: b.w      #0x104a895c
10489360: bx       lr
10489362: movs     r2, #0
10489364: str      r2, [r1]
10489366: ldr      r2, [pc, #0x174]
10489368: subs     r2, #0xc
1048936a: ldrb     r2, [r2]
1048936c: cmp      r2, #0
1048936e: beq      #0x10489380
10489370: cmp      r2, #1
10489372: beq      #0x10489380
10489374: cmp      r2, #2
10489376: beq      #0x10489380
10489378: cmp      r2, #3
1048937a: bne      #0x10489380
1048937c: b.w      #0x104a8982
10489380: bx       lr
10489382: ldr      r2, [pc, #0x158]
10489384: mov      r3, r0
10489386: movs     r0, #0
10489388: subs     r2, #0xc
1048938a: mov      r1, r0
1048938c: ldrb     r2, [r2]
1048938e: cmp      r2, #0
10489390: beq      #0x104893a4
10489392: cmp      r2, #1
10489394: beq      #0x1048939e
10489396: cmp      r2, #2
10489398: beq      #0x1048939e
1048939a: cmp      r2, #3
1048939c: bne      #0x104893a4
1048939e: mov      r0, r3
104893a0: b.w      #0x104a89a8
104893a4: bx       lr
104893a6: push     {r3, lr}
104893a8: movs     r0, #0
104893aa: str      r0, [sp]
104893ac: ldr      r0, [pc, #0x12c]
104893ae: subs     r0, #0xc
104893b0: ldrb     r0, [r0]
104893b2: cbz      r0, #0x104893d0
104893b4: cmp      r0, #1
104893b6: beq      #0x104893d0
104893b8: cmp      r0, #2
104893ba: beq      #0x104893c2
104893bc: cmp      r0, #3
104893be: bne      #0x104893d0
104893c0: b        #0x104893ca
104893c2: mov      r0, sp
104893c4: bl       #0x10488c7c
104893c8: b        #0x104893d0
104893ca: bl       #0x104a89c0
104893ce: str      r0, [sp]
104893d0: ldr      r0, [sp]
104893d2: pop      {r3, pc}
104893d4: b.w      #0x1055362e
104893d8: b.w      #0x10553652
104893dc: b.w      #0x10553670
104893e0: b.w      #0x10553678
104893e4: push.w   {r4, r5, r6, r7, r8, lr}
104893e8: mov      r6, r0
104893ea: mov      r1, r0
104893ec: ldr      r0, [pc, #0xf4]
104893ee: movs     r2, #0x80
104893f0: adds     r0, #0x30
104893f2: blx      #0x1035d1ec
104893f6: ldr      r5, [pc, #0xec]
104893f8: adds     r5, #0x30
104893fa: ldr      r0, [r5]
104893fc: cmp      r0, #0xa
104893fe: bls      #0x10489404
10489400: movs     r0, #0xa
10489402: str      r0, [r5]
10489404: ldr      r0, [pc, #0xdc]
10489406: movw     r1, #0x140
1048940a: adds     r0, #0xb0
1048940c: bl       #0x1035d2dc
10489410: ldr      r7, [pc, #0xd0]
10489412: movs     r4, #0
10489414: adds     r7, #0xb0
10489416: b        #0x1048942a
10489418: add.w    r0, r6, r4, lsl #2
1048941c: movs     r2, #0x1f
1048941e: ldr      r1, [r0, #0x1c]
10489420: add.w    r0, r7, r4, lsl #5
10489424: blx      #0x10439ac4
10489428: adds     r4, r4, #1
1048942a: ldr      r0, [r5]
1048942c: cmp      r0, r4
1048942e: bhi      #0x10489418
10489430: pop.w    {r4, r5, r6, r7, r8, lr}
10489434: ldr      r0, [pc, #0xac]
10489436: movs     r1, #1
10489438: b.w      #0x1035c98c
1048943c: ldr      r0, [pc, #0xa4]
1048943e: movs     r1, #2
10489440: b.w      #0x1035c98c
10489444: ldr      r0, [pc, #0x9c]
10489446: movs     r1, #4
10489448: b.w      #0x1035c98c
1048944c: push     {r4, r5}
1048944e: ldm.w    r0, {r1, r2, r3, r4}
10489452: ldr      r0, [pc, #0x9c]
10489454: stm.w    r0, {r1, r2, r3, r4}
10489458: pop      {r4, r5}
1048945a: ldr      r0, [pc, #0x88]
1048945c: movs     r1, #8
1048945e: b.w      #0x1035c98c
10489462: ldr      r0, [pc, #0x80]
10489464: movs     r1, #0x10
10489466: b.w      #0x1035c98c
1048946a: push     {r4, lr}
1048946c: ldr      r4, [pc, #0x74]
1048946e: sub      sp, #0x18
10489470: movs     r0, #0
10489472: adds     r4, #0x30
10489474: str      r0, [sp]
10489476: str      r0, [sp, #4]
10489478: ldr      r1, [r4, #0x70]
1048947a: cbz      r1, #0x10489488
1048947c: str      r0, [sp, #8]
1048947e: str      r0, [sp, #0xc]
10489480: str      r0, [sp, #0x10]
10489482: add      r0, sp, #8
10489484: bl       #0x104c1018
10489488: bl       #0x10488c24
1048948c: ldr      r0, [pc, #0x4c]
1048948e: subs     r0, r0, #4
10489490: ldr      r0, [r0]
10489492: cmp      r0, #1
10489494: bne      #0x1048949a
10489496: bl       #0x10487a32
1048949a: ldr      r0, [r4, #0x70]
1048949c: cbz      r0, #0x104894b4
1048949e: ldr      r0, [pc, #0x3c]
104894a0: movs     r1, #4
104894a2: add      r2, sp, #4
104894a4: bl       #0x1035d382
104894a8: ldr      r0, [sp, #4]
104894aa: and      r1, r0, #4
104894ae: ldr      r0, [pc, #0x2c]
104894b0: bl       #0x1035d37a
104894b4: mov      r0, sp
104894b6: bl       #0x104a8864
104894ba: ldr      r0, [sp]
104894bc: cmp      r0, #1
104894be: bne      #0x104894c6
104894c0: ldr      r1, [pc, #0x18]
104894c2: subs     r1, #0xc
104894c4: str      r0, [r1, #4]
104894c6: bl       #0x10488e6a
104894ca: bl       #0x10553bea
104894ce: add      sp, #0x18
104894d0: pop      {r4, pc}
104894d2: movs     r0, r0
104894d4: ldr      r7, [pc, #0x134]
104894d6: strh     r6, [r2, r5]
104894d8: ldrsb    r5, [r0, r1]
104894da: movs     r2, r6
104894dc: asrs     r4, r4, #0x1e
104894de: stm      r1!, {r0, r7}
104894e0: str      r0, [sp, #0x26c]
104894e2: asrs     r0, r1, #1
104894e4: str      r0, [sp, #0x120]
104894e6: stm      r1!, {r0, r2, r4, r5, r6, r7}
104894e8: movs     r1, r0
104894ea: tst      r7, r0
104894ec: str      r2, [sp, #0x214]
104894ee: asrs     r0, r1, #1
104894f0: str      r2, [sp, #0xe0]
104894f2: stm      r1!, {r0, r2, r4, r5, r6, r7}
104894f4: push     {r4, lr}
104894f6: bl       #0x1048c3da
104894fa: bl       #0x1048ae5c
104894fe: bl       #0x10489898
10489502: bl       #0x1048d53e
10489506: ldr      r0, [pc, #0x244]
10489508: movs     r1, #0
1048950a: bl       #0x103c19bc
1048950e: movs     r0, #0
10489510: pop      {r4, pc}
10489512: push     {r4, lr}
10489514: bl       #0x1048981e
10489518: movs     r0, #0
1048951a: pop      {r4, pc}
1048951c: push     {r4, r5, r6, lr}
1048951e: ldr      r5, [pc, #0x22c]