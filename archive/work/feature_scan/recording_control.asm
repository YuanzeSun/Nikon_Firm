1045a618: push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
1045a61c: ldr.w    sb, [pc, #0x38]
1045a620: sub      sp, #0x2c
1045a622: mov.w    fp, #0
1045a626: mov      r7, r0
1045a628: ldr.w    r8, [sb, #0x30]
1045a62c: strb.w   fp, [r0]
1045a630: ldr      r0, [pc, #0x18]
1045a632: adds     r0, #8
1045a634: bl       #0x1035d1c0
1045a638: ldr      r5, [pc, #0x10]
1045a63a: ldrb     r0, [r5, #2]
1045a63c: cbz      r0, #0x1045a66c
1045a63e: cmp      r0, #1
1045a640: beq      #0x1045a672
1045a642: cmp      r0, #2
1045a644: beq      #0x1045a672
1045a646: b        #0x1045a6bc
1045a648: b        #0x1045a2fc
1045a64a: stm      r2!, {r1, r2, r4, r7}
1045a64c: add      r3, sp, #0x1a0
1045a64e: stm      r1!, {r3, r7}
1045a650: lsls     r1, r0, #8
1045a652: lsls     r0, r3, #0x10
1045a654: b        #0x10459f58
1045a656: stm      r2!, {r1, r2, r4, r7}
1045a658: b        #0x1045a54c
1045a65a: stm      r2!, {r1, r2, r4, r7}
1045a65c: ldr      r3, [pc, #0x240]
1045a65e: stm      r2!, {r0, r1, r2, r4, r7}
1045a660: b        #0x1045aba4
1045a662: stm      r2!, {r1, r2, r4, r7}
1045a664: ands     r4, r0
1045a666: stm      r2!, {r0, r1, r2, r4, r7}
1045a668: .byte    0xfc, 0xb6
1045a66a: asrs     r6, r3, #6
1045a66c: ldr      r4, [pc, #0x3f4]
1045a66e: ldr      r6, [pc, #0x3f8]
1045a670: b        #0x1045a67a
1045a672: ldr      r4, [pc, #0x3f0]
1045a674: ldr      r6, [pc, #0x3f0]
1045a676: adds     r4, #0xf0
1045a678: adds     r6, #8
1045a67a: mov      r2, r4
1045a67c: mov      r1, r8
1045a67e: bl       #0x1045a0f0
1045a682: ldrb     r0, [r5, #2]
1045a684: movs     r1, #1
1045a686: mov      r3, r6
1045a688: mov      r2, r4
1045a68a: bl       #0x10459a96
1045a68e: ldrb     r0, [r5, #2]
1045a690: cbnz     r0, #0x1045a69e
1045a692: ldr      r0, [pc, #0x3d0]
1045a694: ldr      r0, [r0]
1045a696: cmp      r0, #1
1045a698: beq      #0x1045a6ae
1045a69a: bl       #0x1045c040
1045a69e: ldrb     r0, [r6]
1045a6a0: cbz      r0, #0x1045a6bc
1045a6a2: cmp      r0, #2
1045a6a4: beq      #0x1045a6ca
1045a6a6: ldr      r6, [pc, #0x3c4]
1045a6a8: ldr      r0, [r6, #0x28]
1045a6aa: cbz      r0, #0x1045a6de
1045a6ac: b        #0x1045a6ea
1045a6ae: ldr      r0, [pc, #0x3b4]
1045a6b0: bl       #0x10459920
1045a6b4: mov      r0, r6
1045a6b6: bl       #0x104598d4
1045a6ba: b        #0x1045a69e
1045a6bc: ldr      r0, [pc, #0x3a8]
1045a6be: subs     r0, #0x38
1045a6c0: bl       #0x1035d1ba
1045a6c4: add      sp, #0x2c
1045a6c6: pop.w    {r4, r5, r6, r7, r8, sb, sl, fp, pc}
1045a6ca: ldr      r0, [pc, #0x39c]
1045a6cc: subs     r0, #0x38
1045a6ce: bl       #0x1035d1ba
1045a6d2: movs     r0, #2
1045a6d4: bl       #0x103dd95a
1045a6d8: movs     r0, #2
1045a6da: strb     r0, [r7]
1045a6dc: b        #0x1045a6c4
1045a6de: ldr      r0, [pc, #0x38c]
1045a6e0: movs     r2, #0xf0
1045a6e2: mov      r1, r4
1045a6e4: subs     r0, #0xf0
1045a6e6: blx      #0x1035d1ec
1045a6ea: ldr      r0, [pc, #0x37c]
1045a6ec: subs     r0, #0x38
1045a6ee: bl       #0x1035d1ba
1045a6f2: ldr.w    r1, [sb]
1045a6f6: mov      r4, sb
1045a6f8: cmp      r1, #0
1045a6fa: beq      #0x1045a6c4
1045a6fc: movs     r2, #0x90
1045a6fe: adds     r0, r4, #4
1045a700: blx      #0x1035d1ec
1045a704: ldr      r0, [r4]
1045a706: movw     r2, #0x33e8
1045a70a: ldr      r1, [r0]
1045a70c: ldr      r0, [pc, #0x360]
1045a70e: mov      r8, r0
1045a710: blx      #0x1035d1ec
1045a714: str.w    r8, [r4, #4]
1045a718: ldrb     r0, [r5, #2]
1045a71a: cmp      r0, #1
1045a71c: beq      #0x1045a722
1045a71e: cmp      r0, #2
1045a720: bne      #0x1045a736
1045a722: ldr      r0, [pc, #0x34c]
1045a724: subs     r0, #0x28
1045a726: ldrb.w   r1, [r0, #0x527]
1045a72a: ldrb.w   r2, [r0, #0x528]
1045a72e: strb.w   r1, [r0, #0x550]
1045a732: strb.w   r2, [r0, #0x551]
1045a736: adds     r1, r4, #4
1045a738: ldr      r0, [pc, #0x330]
1045a73a: subs     r0, #0xf0
1045a73c: bl       #0x1045a4e4
1045a740: cmp      r0, #0
1045a742: beq      #0x1045a6c4
1045a744: ldr      r0, [r6, #0x28]
1045a746: cbnz     r0, #0x1045a758
1045a748: ldr      r1, [r4, #4]
1045a74a: movw     r0, #0x2864
1045a74e: movs     r2, #0xa
1045a750: add      r1, r0
1045a752: ldr      r0, [pc, #0x320]
1045a754: blx      #0x1035d254
1045a758: mov.w    sb, #1
1045a75c: ldr      r0, [pc, #0x318]
1045a75e: add      r1, sp, #0x28
1045a760: mov      r4, sb
1045a762: str.w    sb, [sp, #0x28]
1045a766: bl       #0x104774b6
1045a76a: movs     r0, #2
1045a76c: mov      r8, r6
1045a76e: str      r4, [r6]
1045a770: bl       #0x103dd95a
1045a774: ldr      r4, [pc, #0x2f4]
1045a776: ldr      r0, [r6, #0x28]
1045a778: subs     r4, #0xf0
1045a77a: sub.w    sl, r4, #0x1d8
1045a77e: add.w    r6, r4, #0x40
1045a782: cbnz     r0, #0x1045a7ae
1045a784: movs     r1, #0x48
1045a786: mov      r0, sl
1045a788: bl       #0x1035d2dc
1045a78c: mov      r0, sl
1045a78e: movs     r2, #0
1045a790: strd     r4, r6, [r0]
1045a794: ldr.w    r3, [r4, #0xcc]
1045a798: str.w    r3, [sl, #8]
1045a79c: ldr      r3, [pc, #0x2d4]
1045a79e: strd     r3, r2, [sl, #0xc]
1045a7a2: str.w    r2, [sl, #0x14]
1045a7a6: bl       #0x10477bd4
1045a7aa: cmp      r0, #0
1045a7ac: beq      #0x1045a6c4
1045a7ae: ldrb     r1, [r5, #2]
1045a7b0: cmp      r1, #1
1045a7b2: beq      #0x1045a7b8
1045a7b4: cmp      r1, #2
1045a7b6: bne      #0x1045a7ca
1045a7b8: ldrd     r2, ip, [r4, #0xd8]
1045a7bc: mov.w    r3, #-1
1045a7c0: movs     r0, #0
1045a7c2: subs     r3, r3, r2
1045a7c4: sbcs.w   r0, r0, ip
1045a7c8: blo      #0x1045a6dc
1045a7ca: ldrb     r3, [r4, #5]
1045a7cc: ldrb     r2, [r4, #4]
1045a7ce: ldr.w    r0, [sl, #0x18]
1045a7d2: bl       #0x1047724a
1045a7d6: cmp      r0, #0
1045a7d8: beq      #0x1045a6fa
1045a7da: bl       #0x10477380
1045a7de: cmp      r0, #0
1045a7e0: beq      #0x1045a6fa
1045a7e2: movs     r1, #0x20
1045a7e4: add      r0, sp, #8
1045a7e6: bl       #0x1035d2dc
1045a7ea: ldrb     r0, [r5, #2]
1045a7ec: mov      sl, r5
1045a7ee: strb.w   r0, [sp, #8]
1045a7f2: mov.w    r5, #0x14
1045a7f6: ldr      r1, [pc, #0x284]
1045a7f8: strd     r4, r6, [sp, #0xc]
1045a7fc: ldr.w    r2, [r4, #0xcc]
1045a800: mov.w    r6, #1
1045a804: str      r2, [sp, #0x14]
1045a806: ldr.w    r2, [r4, #0xd0]
1045a80a: strd     r2, r1, [sp, #0x18]
1045a80e: ldr      r2, [pc, #0x270]
1045a810: ldrd     r1, r2, [r2, #0x24]
1045a814: cbnz     r0, #0x1045a846
1045a816: ldrb     r0, [r4, #4]
1045a818: cbnz     r0, #0x1045a846
1045a81a: ldrb     r0, [r4, #5]
1045a81c: cbz      r0, #0x1045a822
1045a81e: cmp      r0, #1
1045a820: bne      #0x1045a846
1045a822: strd     r1, r2, [sp]
1045a826: movs     r6, #0
1045a828: mov      r1, sp
1045a82a: movs     r5, #0x1b
1045a82c: movs     r0, #1
1045a82e: bl       #0x103a4c50
1045a832: cmp      r0, #1
1045a834: bne      #0x1045a846
1045a836: mov      r0, sp
1045a838: bl       #0x103a4be4
1045a83c: cmp      r0, #0xf
1045a83e: beq      #0x1045a856
1045a840: cmp      r0, #0x10
1045a842: blt      #0x1045a846
1045a844: movs     r5, #0x26
1045a846: str      r6, [sp, #0x20]
1045a848: strh.w   r5, [sp, #0x24]
1045a84c: ldrb.w   r0, [sl, #2]
1045a850: cmp      r0, #2
1045a852: beq      #0x1045a85a
1045a854: b        #0x1045a87e
1045a856: movs     r5, #0x22
1045a858: b        #0x1045a846
1045a85a: ldr      r0, [sp, #0x10]
1045a85c: movs     r2, #0x10
1045a85e: ldrb.w   r1, [r0, #0x48]
1045a862: add.w    r2, r2, r1, lsl #5
1045a866: adds     r3, r0, r2
1045a868: ldrd     r0, r1, [r4, #0xd8]
1045a86c: ldrd     r5, r3, [r3]
1045a870: subs     r5, r5, r0
1045a872: sbcs     r3, r1
1045a874: blo      #0x1045a7c8
1045a876: ldr      r3, [sp, #0x10]
1045a878: add      r2, r3
1045a87a: strd     r0, r1, [r2]
1045a87e: add      r0, sp, #8
1045a880: bl       #0x10492892
1045a884: ldrb     r0, [r4, #0xd]
1045a886: cbz      r0, #0x1045a89c
1045a888: str.w    sb, [r8, #4]
1045a88c: movs     r1, #0xc8
1045a88e: ldr      r0, [pc, #0x1d4]
1045a890: subs     r0, #0x44
1045a892: bl       #0x103d7fe6
1045a896: strb.w   sb, [r7]
1045a89a: b        #0x1045a6c4
1045a89c: str.w    fp, [r8, #4]
1045a8a0: b        #0x1045a88c
1045a8a2: ldr      r0, [pc, #0x1c4]
1045a8a4: push     {r4, lr}
1045a8a6: subs     r0, #0x34
1045a8a8: bl       #0x1035d1c0
1045a8ac: movw     r0, #0x161e
1045a8b0: bl       #0x10100490
1045a8b4: ldr      r4, [pc, #0x1c4]
1045a8b6: adds     r4, #0x30
1045a8b8: strb     r0, [r4]
1045a8ba: movw     r0, #0x1620
1045a8be: bl       #0x10100490
1045a8c2: strb     r0, [r4, #1]
1045a8c4: movw     r0, #0x1671
1045a8c8: bl       #0x10100490
1045a8cc: strb     r0, [r4, #2]
1045a8ce: movw     r0, #0x161b
1045a8d2: bl       #0x10100490
1045a8d6: strb     r0, [r4, #7]
1045a8d8: movw     r0, #0x43a
1045a8dc: bl       #0x10100490
1045a8e0: strb     r0, [r4, #3]
1045a8e2: movw     r0, #0x43b
1045a8e6: bl       #0x10100490
1045a8ea: strb     r0, [r4, #4]
1045a8ec: movw     r0, #0x44d
1045a8f0: bl       #0x10100490
1045a8f4: strb     r0, [r4, #5]
1045a8f6: movw     r0, #0x44e
1045a8fa: bl       #0x10100490
1045a8fe: strb     r0, [r4, #6]
1045a900: movw     r0, #0x1668
1045a904: bl       #0x10100490
1045a908: strb     r0, [r4, #8]
1045a90a: movw     r0, #0x167e
1045a90e: bl       #0x10100490
1045a912: strb     r0, [r4, #9]
1045a914: movw     r0, #0x167d
1045a918: bl       #0x10100490
1045a91c: strb     r0, [r4, #0xa]
1045a91e: movw     r0, #0x167c
1045a922: bl       #0x10100490
1045a926: strb     r0, [r4, #0xb]
1045a928: movw     r0, #0x3400
1045a92c: bl       #0x10100490
1045a930: strb     r0, [r4, #0xc]
1045a932: movw     r0, #0xc05
1045a936: bl       #0x10100490
1045a93a: strb     r0, [r4, #0xd]
1045a93c: movw     r0, #0x401
1045a940: bl       #0x10100490
1045a944: str      r0, [r4, #0x10]
1045a946: movw     r0, #0xc3a
1045a94a: bl       #0x10100490
1045a94e: strb     r0, [r4, #0x14]
1045a950: movw     r0, #0x451
1045a954: bl       #0x10100490
1045a958: strb     r0, [r4, #0x15]
1045a95a: movw     r0, #0x452
1045a95e: bl       #0x10100490
1045a962: strb     r0, [r4, #0x16]
1045a964: movw     r0, #0x1623
1045a968: bl       #0x10100490
1045a96c: strb     r0, [r4, #0x17]
1045a96e: movw     r0, #0x1186
1045a972: bl       #0x10100490
1045a976: strb     r0, [r4, #0x18]
1045a978: movw     r0, #0xc35
1045a97c: bl       #0x10100490
1045a980: strb     r0, [r4, #0x19]
1045a982: movw     r0, #0xc36
1045a986: bl       #0x10100490
1045a98a: strb     r0, [r4, #0x1a]
1045a98c: movw     r0, #0xc37
1045a990: bl       #0x10100490
1045a994: strb     r0, [r4, #0x1b]
1045a996: movw     r0, #0xc39
1045a99a: bl       #0x10100490
1045a99e: strb     r0, [r4, #0x1c]
1045a9a0: movw     r0, #0x4807
1045a9a4: bl       #0x10100490
1045a9a8: str      r0, [r4, #0x30]
1045a9aa: movw     r0, #0x4808
1045a9ae: bl       #0x10100490
1045a9b2: strb.w   r0, [r4, #0x34]
1045a9b6: movw     r0, #0x168c
1045a9ba: bl       #0x10100490
1045a9be: strb.w   r0, [r4, #0x35]
1045a9c2: movw     r0, #0x3300
1045a9c6: bl       #0x10100490
1045a9ca: strb.w   r0, [r4, #0x36]
1045a9ce: movw     r0, #0x3301
1045a9d2: bl       #0x10100490
1045a9d6: str      r0, [r4, #0x38]
1045a9d8: movw     r0, #0x1687
1045a9dc: bl       #0x10100490
1045a9e0: strb.w   r0, [r4, #0x3c]
1045a9e4: movw     r0, #0x16a5
1045a9e8: bl       #0x10100490
1045a9ec: strb.w   r0, [r4, #0x3d]
1045a9f0: movw     r0, #0x1688
1045a9f4: bl       #0x10100490
1045a9f8: strb.w   r0, [r4, #0x3e]
1045a9fc: movw     r0, #0x16bf
1045aa00: bl       #0x10100490
1045aa04: strb.w   r0, [r4, #0x3f]
1045aa08: movw     r0, #0x16e2
1045aa0c: bl       #0x10100490
1045aa10: add.w    r1, r4, #0x44
1045aa14: movw     r2, #0x118
1045aa18: strb.w   r0, [r4, #0x40]
1045aa1c: movw     r0, #0x1921
1045aa20: bl       #0x101004ce
1045aa24: movw     r0, #0x191f
1045aa28: bl       #0x10100490
1045aa2c: str.w    r0, [r4, #0x15c]
1045aa30: movw     r0, #0x1902
1045aa34: bl       #0x10100490
1045aa38: str.w    r0, [r4, #0x160]
1045aa3c: movw     r0, #0x1907
1045aa40: bl       #0x10100490
1045aa44: str.w    r0, [r4, #0x164]
1045aa48: movw     r0, #0x1906
1045aa4c: bl       #0x10100490
1045aa50: str.w    r0, [r4, #0x168]
1045aa54: movw     r0, #0x1908
1045aa58: bl       #0x10100490
1045aa5c: str.w    r0, [r4, #0x16c]
1045aa60: b        #0x1045aa84
1045aa62: movs     r0, r0
1045aa64: b        #0x1045afa8
1045aa66: stm      r2!, {r1, r2, r4, r7}
1045aa68: add      r3, sp, #0x2a0
1045aa6a: stm      r1!, {r3, r7}
1045aa6c: b        #0x1045a900
1045aa6e: stm      r2!, {r1, r2, r4, r7}
1045aa70: asrs     r0, r4, #0x1e
1045aa72: stm      r2!, {r0, r1, r2, r4, r7}
1045aa74: ldr      r3, [pc, #0x240]
1045aa76: stm      r2!, {r0, r1, r2, r4, r7}
1045aa78: lsls     r2, r0, #4
1045aa7a: lsls     r0, r3, #0x10
1045aa7c: b        #0x1045a3b0
1045aa7e: stm      r2!, {r1, r2, r4, r7}
1045aa80: adds     r0, r6, r2
1045aa82: stm      r2!, {r0, r1, r2, r4, r7}
1045aa84: movw     r0, #0x1916
1045aa88: bl       #0x10100490
1045aa8c: str.w    r0, [r4, #0x170]
1045aa90: movw     r0, #0x1901
1045aa94: bl       #0x10100490
1045aa98: str.w    r0, [r4, #0x174]
1045aa9c: movw     r0, #0x191c
1045aaa0: bl       #0x10100490
1045aaa4: str.w    r0, [r4, #0x178]
1045aaa8: movw     r0, #0x1913
1045aaac: bl       #0x10100490
1045aab0: str.w    r0, [r4, #0x17c]
1045aab4: movw     r0, #0x1919
1045aab8: bl       #0x10100490
1045aabc: str.w    r0, [r4, #0x180]
1045aac0: movw     r0, #0x191e
1045aac4: bl       #0x10100490
1045aac8: str.w    r0, [r4, #0x184]
1045aacc: movw     r0, #0x192e
1045aad0: bl       #0x10100490
1045aad4: str.w    r0, [r4, #0x188]
1045aad8: movw     r0, #0x1b0c
1045aadc: bl       #0x10100490
1045aae0: add.w    r1, r4, #0x6800
1045aae4: strb.w   r0, [r4, #0x18c]
1045aae8: ldrb     r0, [r4]
1045aaea: strb     r0, [r1, #0x10]
1045aaec: ldrb     r0, [r4, #1]
1045aaee: strb     r0, [r1, #0x11]
1045aaf0: pop.w    {r4, lr}
1045aaf4: ldr      r0, [pc, #0x3f4]
1045aaf6: b.w      #0x1035d1ba
1045aafa: push.w   {r4, r5, r6, r7, r8, sb, sl, fp, lr}
1045aafe: sub      sp, #0x14
1045ab00: mov      r5, r0
1045ab02: movs     r6, #0
1045ab04: lsls     r0, r0, #0x1f
1045ab06: strb.w   r6, [sp, #0x10]
1045ab0a: str      r6, [sp]
1045ab0c: strb.w   r6, [sp, #4]
1045ab10: beq      #0x1045ab20
1045ab12: movs     r0, #0xc8
1045ab14: bl       #0x103dec94
1045ab18: bl       #0x1045a8a2
1045ab1c: bl       #0x10459670
1045ab20: ldr      r4, [pc, #0x3c8]
1045ab22: lsls     r0, r5, #0xa
1045ab24: sub.w    r4, r4, #0xc
1045ab28: bpl      #0x1045ab3e
1045ab2a: str      r6, [sp]
1045ab2c: ldrb     r0, [r4, #1]
1045ab2e: cbnz     r0, #0x1045ab34
1045ab30: bl       #0x1045c406
1045ab34: ldr      r0, [pc, #0x3b4]
1045ab36: movs     r1, #4
1045ab38: adds     r0, #0x30
1045ab3a: bl       #0x1035d374
1045ab3e: lsls     r0, r5, #9
1045ab40: bpl      #0x1045ab5e
1045ab42: str      r6, [sp]
1045ab44: ldrb     r0, [r4, #1]
1045ab46: cbnz     r0, #0x1045ab54
1045ab48: bl       #0x10477ec6
1045ab4c: ldr      r0, [pc, #0x3a0]
1045ab4e: str      r6, [r0, #0x28]
1045ab50: bl       #0x1045a2c6
1045ab54: ldr      r0, [pc, #0x394]
1045ab56: movs     r1, #8
1045ab58: adds     r0, #0x30
1045ab5a: bl       #0x1035d374
1045ab5e: lsls     r0, r5, #0x1b
1045ab60: mov.w    r8, #1
1045ab64: bpl      #0x1045abac
1045ab66: strb.w   r6, [sp, #0x10]
1045ab6a: ldrb     r0, [r4, #1]
1045ab6c: cbnz     r0, #0x1045ab8e
1045ab6e: add      r0, sp, #0x10
1045ab70: bl       #0x1045a618
1045ab74: ldrb.w   r0, [sp, #0x10]
1045ab78: cbz      r0, #0x1045ab84
1045ab7a: cmp      r0, #1
1045ab7c: beq      #0x1045ab84
1045ab7e: cmp      r0, #2
1045ab80: beq      #0x1045ab8a
1045ab82: b        #0x1045ab8e
1045ab84: strb.w   r8, [r4, #1]
1045ab88: b        #0x1045ab8e
1045ab8a: movs     r0, #3
1045ab8c: strb     r0, [r4, #1]
1045ab8e: bl       #0x10477fbe
1045ab92: mov      r1, r0
1045ab94: mov.w    r0, #0x4180000
1045ab98: bl       #0x104774b6
1045ab9c: ldrb.w   r0, [sp, #0x10]
1045aba0: cbnz     r0, #0x1045abac
1045aba2: ldr      r0, [pc, #0x350]
1045aba4: movw     r1, #0x4000
1045aba8: bl       #0x1035c98c
1045abac: lsls     r0, r5, #0x1a
1045abae: mov.w    sb, #4
1045abb2: mov.w    r7, #2
1045abb6: bpl      #0x1045abe2
1045abb8: ldrb     r0, [r4, #1]
1045abba: cmp      r0, #4
1045abbc: bhs      #0x1045abda
1045abbe: tbb      [pc, r0]
1045abc2: lsls     r4, r1, #8
1045abc4: lsls     r4, r1, #0x1c
1045abc6: movs     r0, #1
1045abc8: bl       #0x1045c3f0
1045abcc: strb     r7, [r4, #1]
1045abce: b        #0x1045abda
1045abd0: movs     r0, #3
1045abd2: bl       #0x1045c3f0
1045abd6: strb.w   sb, [r4, #1]
1045abda: movs     r1, #0
1045abdc: ldr      r0, [pc, #0x318]
1045abde: bl       #0x104774b6
1045abe2: lsls     r0, r5, #0x19
1045abe4: bpl      #0x1045ac02
1045abe6: ldrb     r0, [r4, #1]
1045abe8: cmp      r0, #3
1045abea: bhs      #0x1045abf8
1045abec: tbb      [pc, r0]
1045abf0: lsls     r4, r0, #0x10
1045abf2: movs     r2, r0
1045abf4: bl       #0x1045c360
1045abf8: ldr      r0, [pc, #0x2fc]
1045abfa: movs     r1, #0
1045abfc: adds     r0, r0, #1
1045abfe: bl       #0x104774b6
1045ac02: ldr.w    fp, [pc, #0x2f8]
1045ac06: lsls     r0, r5, #0x18
1045ac08: bpl      #0x1045ac44
1045ac0a: str      r6, [sp]
1045ac0c: ldrb     r0, [r4, #1]
1045ac0e: cmp      r0, #5
1045ac10: bhs      #0x1045ac2c
1045ac12: tbb      [pc, r0]
1045ac16: lsrs     r3, r1, #0xc
1045ac18: lsrs     r3, r0, #0xc
1045ac1a: movs     r6, r0
1045ac1c: movs     r0, #2
1045ac1e: mov      r1, sp
1045ac20: b        #0x1045ac26
1045ac22: movs     r0, #4
1045ac24: mov      r1, sp
1045ac26: bl       #0x1045a3e6
1045ac2a: strb     r6, [r4, #1]
1045ac2c: ldr      r0, [sp]
1045ac2e: cmp      r0, #1
1045ac30: bne      #0x1045ac3a
1045ac32: movs     r1, #3
1045ac34: mov      r0, fp
1045ac36: bl       #0x104774b6
1045ac3a: ldr      r0, [pc, #0x2bc]
1045ac3c: movs     r1, #0
1045ac3e: adds     r0, r0, #2
1045ac40: bl       #0x104774b6
1045ac44: ldr.w    sl, [pc, #0x2b8]
1045ac48: lsls     r0, r5, #0x17
1045ac4a: bpl      #0x1045ac6a
1045ac4c: ldrb     r0, [r4, #1]
1045ac4e: cbz      r0, #0x1045ac6a
1045ac50: cmp      r0, #1
1045ac52: beq      #0x1045ac58
1045ac54: cmp      r0, #2
1045ac56: bne      #0x1045ac6a
1045ac58: strb.w   r6, [sp, #8]
1045ac5c: bl       #0x10477fbe
1045ac60: add      r1, sp, #8
1045ac62: str      r0, [sp, #0xc]
1045ac64: mov      r0, sl
1045ac66: bl       #0x104774b6
1045ac6a: lsls     r0, r5, #0x16
1045ac6c: bpl      #0x1045ac8c
1045ac6e: ldrb     r0, [r4, #1]
1045ac70: cbz      r0, #0x1045ac8c
1045ac72: cmp      r0, #1
1045ac74: beq      #0x1045ac7a
1045ac76: cmp      r0, #2
1045ac78: bne      #0x1045ac8c
1045ac7a: strb.w   r8, [sp, #8]
1045ac7e: bl       #0x10477fbe
1045ac82: add      r1, sp, #8
1045ac84: str      r0, [sp, #0xc]
1045ac86: mov      r0, sl
1045ac88: bl       #0x104774b6
1045ac8c: lsls     r0, r5, #0x15
1045ac8e: bpl      #0x1045acb2
1045ac90: ldrb     r0, [r4, #1]
1045ac92: cbz      r0, #0x1045acb2
1045ac94: cmp      r0, #1
1045ac96: beq      #0x1045ac9c
1045ac98: cmp      r0, #2
1045ac9a: bne      #0x1045acb2
1045ac9c: bl       #0x10477fee
1045aca0: strb.w   r7, [sp, #8]
1045aca4: bl       #0x10477fbe
1045aca8: add      r1, sp, #8
1045acaa: str      r0, [sp, #0xc]
1045acac: mov      r0, sl
1045acae: bl       #0x104774b6
1045acb2: lsls     r0, r5, #0x13
1045acb4: bpl      #0x1045acce
1045acb6: ldrb     r0, [r4, #1]
1045acb8: cbz      r0, #0x1045acce
1045acba: cmp      r0, #1
1045acbc: bne      #0x1045acce
1045acbe: add      r0, sp, #4
1045acc0: bl       #0x1045c2f8
1045acc4: ldrb.w   r1, [sp, #4]
1045acc8: mov      r0, fp
1045acca: bl       #0x104774b6
1045acce: lsls     r0, r5, #0x12
1045acd0: bpl      #0x1045acdc
1045acd2: ldrb     r0, [r4, #1]
1045acd4: cbz      r0, #0x1045acdc
1045acd6: cmp      r0, #1
1045acd8: bne      #0x1045acdc
1045acda: strb     r7, [r4, #1]
1045acdc: lsls     r0, r5, #0x11
1045acde: bpl      #0x1045ad0c
1045ace0: ldrb     r0, [r4, #1]
1045ace2: cmp      r0, #4
1045ace4: bhs      #0x1045ad0c
1045ace6: tbb      [pc, r0]
1045acea: lsls     r1, r2, #8
1045acec: lsrs     r1, r2, #0x20
1045acee: movs     r0, #1
1045acf0: bl       #0x1045c2d6
1045acf4: movs     r1, #3
1045acf6: strb     r7, [r4, #1]
1045acf8: b        #0x1045ad06
1045acfa: movs     r0, #3
1045acfc: bl       #0x1045c2d6
1045ad00: movs     r1, #4
1045ad02: strb.w   sb, [r4, #1]
1045ad06: mov      r0, fp
1045ad08: bl       #0x104774b6
1045ad0c: lsls     r0, r5, #0x10
1045ad0e: bpl      #0x1045ad20
1045ad10: ldrb     r0, [r4, #1]
1045ad12: cmp      r0, #2
1045ad14: bhs      #0x1045ad20
1045ad16: tbb      [pc, r0]
1045ad1a: lsls     r3, r0, #4
1045ad1c: bl       #0x1045c25a
1045ad20: lsls     r0, r5, #0xf
1045ad22: bpl      #0x1045ad38
1045ad24: ldrb     r0, [r4, #1]
1045ad26: cmp      r0, #5
1045ad28: bhs      #0x1045ad38
1045ad2a: tbb      [pc, r0]
1045ad2e: lsls     r3, r0, #0x14
1045ad30: lsls     r5, r0, #0xc
1045ad32: movs     r3, r0
1045ad34: bl       #0x1045a1e8
1045ad38: lsls     r0, r5, #0xe
1045ad3a: bpl      #0x1045ad46
1045ad3c: ldrb     r0, [r4, #1]
1045ad3e: cmp      r0, #0
1045ad40: bhi      #0x1045ad46
1045ad42: bl       #0x1045c1f6
1045ad46: lsls     r0, r5, #0xd
1045ad48: bpl      #0x1045ad54
1045ad4a: ldrb     r0, [r4, #1]
1045ad4c: cmp      r0, #0
1045ad4e: bhi      #0x1045ad54
1045ad50: bl       #0x1045c192
1045ad54: lsls     r0, r5, #0xc
1045ad56: bpl      #0x1045ad6a
1045ad58: ldrb     r0, [r4, #1]
1045ad5a: cmp      r0, #4
1045ad5c: bhs      #0x1045ad6a
1045ad5e: tbb      [pc, r0]
1045ad62: lsls     r4, r0, #8
1045ad64: lsls     r4, r0, #8
1045ad66: bl       #0x1045c02c
1045ad6a: lsls     r0, r5, #0xb
1045ad6c: bpl      #0x1045ad86
1045ad6e: ldrb     r0, [r4, #1]
1045ad70: cmp      r0, #4
1045ad72: bhs      #0x1045ad86
1045ad74: tbb      [pc, r0]
1045ad78: lsls     r7, r0, #0x1c
1045ad7a: lsls     r7, r0, #8
1045ad7c: ldr      r0, [pc, #0x174]
1045ad7e: movw     r1, #0x4000
1045ad82: bl       #0x1035c98c
1045ad86: lsls     r0, r5, #7
1045ad88: bpl      #0x1045ada0
1045ad8a: ldrb     r0, [r4, #1]
1045ad8c: cmp      r0, #4
1045ad8e: bhi      #0x1045ada0
1045ad90: ldrb     r0, [r4, #2]
1045ad92: cmp      r0, #1
1045ad94: beq      #0x1045ada0
1045ad96: cmp      r0, #2
1045ad98: beq      #0x1045ada0
1045ad9a: ldr      r0, [pc, #0x168]
1045ad9c: strb.w   r7, [r0, #0x28]
1045ada0: lsls     r0, r5, #3
1045ada2: bpl      #0x1045adb2
1045ada4: ldrb     r0, [r4, #1]
1045ada6: cmp      r0, #4
1045ada8: bhi      #0x1045adb2
1045adaa: ldr      r0, [r4, #0x2c]
1045adac: cbz      r0, #0x1045adb2
1045adae: bl       #0x10581c82
1045adb2: lsls     r0, r5, #2
1045adb4: bpl      #0x1045adc4
1045adb6: ldrb     r0, [r4, #1]
1045adb8: cmp      r0, #4
1045adba: bhi      #0x1045adc4
1045adbc: ldr      r0, [r4, #0x2c]
1045adbe: cbz      r0, #0x1045adc4
1045adc0: bl       #0x10581c8a
1045adc4: lsls     r0, r5, #1
1045adc6: bpl      #0x1045ade0
1045adc8: ldrb     r0, [r4, #1]
1045adca: cmp      r0, #4
1045adcc: bhi      #0x1045ade0
1045adce: ldr      r0, [r4, #0x2c]
1045add0: cbz      r0, #0x1045ade0
1045add2: bl       #0x103de9dc
1045add6: cmp      r0, #2
1045add8: beq      #0x1045adfc
1045adda: movs     r0, #0
1045addc: bl       #0x10581962
1045ade0: cmp      r5, #0
1045ade2: bge      #0x1045adf8
1045ade4: ldrb     r0, [r4, #1]
1045ade6: cmp      r0, #4
1045ade8: bhi      #0x1045adf8
1045adea: bl       #0x10459734
1045adee: ldr      r0, [pc, #0xfc]
1045adf0: movs     r1, #1
1045adf2: adds     r0, #0x30
1045adf4: bl       #0x1035d374
1045adf8: add      sp, #0x14
1045adfa: b        #0x1045a6c6
1045adfc: movs     r0, #1
1045adfe: b        #0x1045addc
1045ae00: push     {r4, lr}
1045ae02: ldr      r4, [pc, #0x104]
1045ae04: ldr      r0, [pc, #0x104]
1045ae06: bl       #0x103d655a
1045ae0a: ldr      r1, [pc, #0x104]
1045ae0c: mov      r3, r0
1045ae0e: ldr      r0, [pc, #0xe4]
1045ae10: mov      r2, r4
1045ae12: bl       #0x1035c95e
1045ae16: pop.w    {r4, lr}
1045ae1a: b.w      #0x1047754c
1045ae1e: ldr      r0, [pc, #0xd4]
1045ae20: movw     r1, #0x8000
1045ae24: b.w      #0x1035c98c
1045ae28: ldr      r0, [pc, #0xc0]
1045ae2a: adr      r1, #0xe8
1045ae2c: push     {r4, lr}
1045ae2e: subs     r0, r0, #4
1045ae30: bl       #0x1035d164
1045ae34: ldr      r0, [pc, #0xb4]
1045ae36: adr      r1, #0xe4
1045ae38: bl       #0x1035d164
1045ae3c: ldr      r0, [pc, #0xac]
1045ae3e: adr      r1, #0xe4
1045ae40: adds     r0, r0, #4
1045ae42: bl       #0x1035d164
1045ae46: ldr      r0, [pc, #0xac]
1045ae48: movs     r2, #0xc8
1045ae4a: ldr      r1, [pc, #0xe8]
1045ae4c: adr      r3, #0xdc
1045ae4e: adds     r0, #0x2c
1045ae50: bl       #0x103d7fb8
1045ae54: ldr      r0, [pc, #0x94]
1045ae56: adr      r1, #0xe0
1045ae58: adds     r0, #0x30
1045ae5a: bl       #0x1035d32a
1045ae5e: bl       #0x104924e8
1045ae62: pop.w    {r4, lr}
1045ae66: b.w      #0x10477554
1045ae6a: cmp      r0, #1
1045ae6c: push     {r4, lr}
1045ae6e: beq      #0x1045ae74
1045ae70: cmp      r0, #2
1045ae72: bne      #0x1045ae7e
1045ae74: ldr      r0, [pc, #0x7c]
1045ae76: mov.w    r1, #0x80000
1045ae7a: bl       #0x1035c98c
1045ae7e: pop.w    {r4, lr}
1045ae82: ldr      r0, [pc, #0x70]
1045ae84: mov.w    r1, #0x10000
1045ae88: b.w      #0x1035c98c
1045ae8c: ldr      r0, [pc, #0xb0]
1045ae8e: b.w      #0x104775d6
1045ae92: push.w   {r4, r5, r6, r7, r8, lr}
1045ae96: movs     r7, #0
1045ae98: ldr      r0, [pc, #0x50]
1045ae9a: mov      r5, r1
1045ae9c: mov      r6, r7
1045ae9e: bl       #0x1035d1c0
1045aea2: ldr.w    r8, [pc, #0xa0]
1045aea6: ldrb.w   r0, [r8, #0x36]
1045aeaa: cmp      r0, #1
1045aeac: bne      #0x1045aeb6
1045aeae: ldr.w    r0, [r8, #0x38]
1045aeb2: cbnz     r0, #0x1045aeb6
1045aeb4: movs     r7, #1
1045aeb6: movs     r4, #0
1045aeb8: b        #0x1045b232
1045aeba: add.w    r0, r5, r4, lsl #3
1045aebe: movw     r2, #0x1687
1045aec2: ldr      r1, [r0, #8]
1045aec4: cmp      r1, r2
1045aec6: sub.w    r2, r1, r2
1045aeca: beq      #0x1045afba
1045aecc: bgt      #0x1045afbc
1045aece: movw     r3, #0xc39
1045aed2: cmp      r1, r3
1045aed4: subw     r2, r1, #0xc39
1045aed8: beq      #0x1045afbe
1045aeda: bgt      #0x1045af90
1045aedc: movw     r3, #0x451
1045aee0: cmp      r1, r3
1045aee2: subw     r2, r1, #0x451
1045aee6: beq      #0x1045afc0
1045aee8: bgt      #0x1045af6c
1045aeea: b        #0x1045af48
1045aeec: add      r3, sp, #0x1d0
1045aeee: stm      r1!, {r3, r7}
1045aef0: b        #0x1045ad84
1045aef2: stm      r2!, {r1, r2, r4, r7}
1045aef4: b        #0x1045b358
1045aef6: stm      r2!, {r1, r2, r4, r7}
1045aef8: movs     r1, r0
1045aefa: lsls     r0, r3, #0x10
1045aefc: lsls     r1, r0, #4
1045aefe: lsls     r0, r3, #0x10
1045af00: lsls     r0, r0, #4
1045af02: lsls     r0, r3, #0x10
1045af04: asrs     r0, r7, #0x1d
1045af06: stm      r2!, {r0, r1, r2, r4, r7}
1045af08: bl       #0x1004c20a
1045af0c: movs     r4, r6
1045af0e: movs     r1, r0
1045af10: add      r2, sp, #0x3ec
1045af12: asrs     r5, r0, #1
1045af14: strh     r5, [r1, r1]
1045af16: str      r1, [r0, r1]
1045af18: ldr      r5, [r1, r1]
1045af1a: movs     r1, r6
1045af1c: strh     r5, [r1, r1]
1045af1e: str      r1, [r0, r1]
1045af20: ldr      r5, [r1, r1]
1045af22: movs     r2, r6
1045af24: strh     r5, [r1, r1]
1045af26: str      r1, [r0, r1]
1045af28: ldr      r5, [r1, r1]
1045af2a: movs     r3, r6
1045af2c: strh     r5, [r1, r1]
1045af2e: str      r1, [r0, r1]
1045af30: ldr      r3, [r0, r5]
1045af32: movs     r1, r6
1045af34: add      r6, sp, #0x7c
1045af36: asrs     r5, r0, #1
1045af38: strh     r5, [r1, r1]
1045af3a: str      r1, [r0, r1]
1045af3c: ldrsb    r5, [r0, r1]
1045af3e: movs     r1, r6
1045af40: add      r6, sp, #0x1ac
1045af42: asrs     r5, r0, #1
1045af44: b        #0x1045a8d8
1045af46: stm      r2!, {r1, r2, r4, r7}
1045af48: movw     r3, #0x43b
1045af4c: cmp      r1, r3
1045af4e: subw     r2, r1, #0x43b
1045af52: beq      #0x1045b036
1045af54: bgt      #0x1045af62
1045af56: adds.w   r1, r2, #0x3a
1045af5a: beq      #0x1045b038
1045af5c: cmp      r1, #0x39
1045af5e: bne      #0x1045b03a
1045af60: b        #0x1045b0b4
1045af62: cmp      r2, #0x12
1045af64: beq      #0x1045b03c
1045af66: cmp      r2, #0x13
1045af68: bne      #0x1045af5e
1045af6a: b        #0x1045b0cc
1045af6c: movw     r3, #0x7e4
1045af70: cmp      r2, r3
1045af72: subw     r1, r2, #0x7e4
1045af76: beq      #0x1045b072
1045af78: bgt      #0x1045af86
1045af7a: cmp      r2, #1
1045af7c: beq      #0x1045b074
1045af7e: adds.w   r2, r1, #0x30
1045af82: bne      #0x1045b03a
1045af84: b        #0x1045b114
1045af86: cmp      r1, #1
1045af88: beq      #0x1045b076
1045af8a: cmp      r1, #2
1045af8c: bne      #0x1045b03a
1045af8e: b        #0x1045b162
1045af90: movw     r1, #0x9ea
1045af94: cmp      r2, r1
1045af96: subw     r3, r2, #0x9ea
1045af9a: beq      #0x1045b078
1045af9c: bgt      #0x1045afcc
1045af9e: movw     r3, #0x9e2
1045afa2: cmp      r2, r3
1045afa4: subw     r1, r2, #0x9e2
1045afa8: beq      #0x1045b07a
1045afaa: bgt      #0x1045afc2
1045afac: cmp      r2, #1
1045afae: beq      #0x1045b07c
1045afb0: sub.w    r2, r2, #0x500
1045afb4: subs     r2, #0x4d
1045afb6: bne      #0x1045b03a
1045afb8: b        #0x1045b14a
1045afba: b        #0x1045b192
1045afbc: b        #0x1045afe6
1045afbe: b        #0x1045b16a
1045afc0: b        #0x1045b12e
1045afc2: cmp      r1, #3
1045afc4: beq      #0x1045b096
1045afc6: cmp      r1, #5
1045afc8: bne      #0x1045b03a
1045afca: b        #0x1045b09e
1045afcc: cmp      r3, #0x59
1045afce: beq      #0x1045b0ae
1045afd0: bgt      #0x1045afdc
1045afd2: cmp      r3, #0x45
1045afd4: beq      #0x1045b0b0
1045afd6: cmp      r3, #0x4e
1045afd8: bne      #0x1045b03a
1045afda: b        #0x1045b0a6
1045afdc: cmp      r3, #0x5a
1045afde: beq      #0x1045b0b2
1045afe0: cmp      r3, #0x5b
1045afe2: bne      #0x1045b03a
1045afe4: b        #0x1045b0ee
1045afe6: movw     r3, #0x28f
1045afea: cmp      r2, r3
1045afec: subw     r1, r2, #0x28f
1045aff0: beq      #0x1045b0d4
1045aff2: bgt      #0x1045b03e
1045aff4: movw     r1, #0x27a
1045aff8: cmp      r2, r1
1045affa: subw     r3, r2, #0x27a
1045affe: beq      #0x1045b0d6
1045b000: bgt      #0x1045b01c
1045b002: cmp      r2, #0x1e
1045b004: beq      #0x1045b0d8
1045b006: bgt      #0x1045b012
1045b008: cmp      r2, #1
1045b00a: beq      #0x1045b0ea
1045b00c: cmp      r2, #5
1045b00e: bne      #0x1045b03a
1045b010: b        #0x1045b17a
1045b012: cmp      r2, #0x38
1045b014: beq      #0x1045b0ec
1045b016: cmp      r2, #0x5b
1045b018: bne      #0x1045b03a
1045b01a: b        #0x1045b1b2
1045b01c: cmp      r3, #6
1045b01e: beq      #0x1045b0fe
1045b020: bgt      #0x1045b02c
1045b022: cmp      r3, #1
1045b024: beq      #0x1045b100
1045b026: cmp      r3, #5
1045b028: bne      #0x1045b03a
1045b02a: b        #0x1045b1e2
1045b02c: cmp      r3, #7
1045b02e: beq      #0x1045b102
1045b030: cmp      r3, #0x12
1045b032: bne      #0x1045b03a
1045b034: b        #0x1045b20a
1045b036: b        #0x1045b0bc
1045b038: b        #0x1045b11c
1045b03a: b        #0x1045b09c
1045b03c: b        #0x1045b0c4
1045b03e: cmp      r1, #0x18
1045b040: beq      #0x1045b124
1045b042: bgt      #0x1045b05a
1045b044: sub.w    r1, r1, #3
1045b048: cmp      r1, #9
1045b04a: bhs      #0x1045b09c
1045b04c: tbb      [pc, r1]
1045b050: bl       #0x10d3c434
1045b054: b        #0x1045ac38
1045b056: .byte    0xbd, 0xf0
1045b058: lsls     r5, r6, #2
1045b05a: movw     r3, #0x19eb
1045b05e: subs     r2, r1, r3
1045b060: cmp      r1, r3
1045b062: beq      #0x1045b146
1045b064: bgt      #0x1045b086
1045b066: cmp.w    r1, #0x1f6
1045b06a: beq      #0x1045b148
1045b06c: addw     r1, r1, #0x616
1045b070: b        #0x1045b07e
1045b072: b        #0x1045b152
1045b074: b        #0x1045b136
1045b076: b        #0x1045b15a
1045b078: b        #0x1045b13e
1045b07a: b        #0x1045b0da
1045b07c: b        #0x1045b126
1045b07e: cmp.w    r1, #0x2000
1045b082: bne      #0x1045b09c
1045b084: b        #0x1045b182
1045b086: cmp      r2, #0xff
1045b088: beq      #0x1045b10c
1045b08a: addw     r2, r2, #0xafa
1045b08e: cmp.w    r2, #0x2000
1045b092: bne      #0x1045b09c
1045b094: b        #0x1045b172
1045b096: ldrb     r0, [r0, #0xc]
1045b098: strb.w   r0, [r8]
1045b09c: b        #0x1045b230
1045b09e: ldrb     r0, [r0, #0xc]
1045b0a0: strb.w   r0, [r8, #1]
1045b0a4: b        #0x1045b230
1045b0a6: ldrb     r0, [r0, #0xc]
1045b0a8: strb.w   r0, [r8, #2]
1045b0ac: b        #0x1045b230
1045b0ae: b        #0x1045b104
1045b0b0: b        #0x1045b0e2
1045b0b2: b        #0x1045b0f6
1045b0b4: ldrb     r0, [r0, #0xc]
1045b0b6: strb.w   r0, [r8, #3]
1045b0ba: b        #0x1045b230
1045b0bc: ldrb     r0, [r0, #0xc]
1045b0be: strb.w   r0, [r8, #4]
1045b0c2: b        #0x1045b230
1045b0c4: ldrb     r0, [r0, #0xc]
1045b0c6: strb.w   r0, [r8, #5]
1045b0ca: b        #0x1045b230
1045b0cc: ldrb     r0, [r0, #0xc]
1045b0ce: strb.w   r0, [r8, #6]
1045b0d2: b        #0x1045b230
1045b0d4: b        #0x1045b1f2
1045b0d6: b        #0x1045b1fa
1045b0d8: b        #0x1045b19a
1045b0da: ldrb     r0, [r0, #0xc]
1045b0dc: strb.w   r0, [r8, #7]
1045b0e0: b        #0x1045b230
1045b0e2: ldrb     r0, [r0, #0xc]
1045b0e4: strb.w   r0, [r8, #8]
1045b0e8: b        #0x1045b230
1045b0ea: b        #0x1045b1a2
1045b0ec: b        #0x1045b1aa
1045b0ee: ldrb     r0, [r0, #0xc]
1045b0f0: strb.w   r0, [r8, #9]
1045b0f4: b        #0x1045b230
1045b0f6: ldrb     r0, [r0, #0xc]
1045b0f8: strb.w   r0, [r8, #0xa]
1045b0fc: b        #0x1045b230
1045b0fe: b        #0x1045b1da
1045b100: b        #0x1045b1d2
1045b102: b        #0x1045b1ea
1045b104: ldrb     r0, [r0, #0xc]
1045b106: strb.w   r0, [r8, #0xb]
1045b10a: b        #0x1045b230
1045b10c: ldrb     r0, [r0, #0xc]
1045b10e: strb.w   r0, [r8, #0xc]
1045b112: b        #0x1045b230
1045b114: ldrb     r0, [r0, #0xc]
1045b116: strb.w   r0, [r8, #0xd]
1045b11a: b        #0x1045b230
1045b11c: ldr      r1, [r0, #0xc]
1045b11e: str.w    r1, [r8, #0x10]
1045b122: b        #0x1045b230
1045b124: b        #0x1045b222
1045b126: ldrb     r0, [r0, #0xc]
1045b128: strb.w   r0, [r8, #0x14]
1045b12c: b        #0x1045b230
1045b12e: ldrb     r0, [r0, #0xc]
1045b130: strb.w   r0, [r8, #0x15]
1045b134: b        #0x1045b230
1045b136: ldrb     r0, [r0, #0xc]
1045b138: strb.w   r0, [r8, #0x16]
1045b13c: b        #0x1045b230
1045b13e: ldrb     r0, [r0, #0xc]
1045b140: strb.w   r0, [r8, #0x17]
1045b144: b        #0x1045b230
1045b146: b        #0x1045b18a
1045b148: b        #0x1045b22a
1045b14a: ldrb     r0, [r0, #0xc]
1045b14c: strb.w   r0, [r8, #0x18]
1045b150: b        #0x1045b230
1045b152: ldrb     r0, [r0, #0xc]
1045b154: strb.w   r0, [r8, #0x19]
1045b158: b        #0x1045b230
1045b15a: ldrb     r0, [r0, #0xc]
1045b15c: strb.w   r0, [r8, #0x1a]
1045b160: b        #0x1045b230
1045b162: ldrb     r0, [r0, #0xc]
1045b164: strb.w   r0, [r8, #0x1b]
1045b168: b        #0x1045b230
1045b16a: ldrb     r0, [r0, #0xc]
1045b16c: strb.w   r0, [r8, #0x1c]
1045b170: b        #0x1045b230
1045b172: ldr      r1, [r0, #0xc]
1045b174: str.w    r1, [r8, #0x30]
1045b178: b        #0x1045b230
1045b17a: ldrb     r0, [r0, #0xc]
1045b17c: strb.w   r0, [r8, #0x35]
1045b180: b        #0x1045b230
1045b182: ldrb     r0, [r0, #0xc]
1045b184: strb.w   r0, [r8, #0x36]
1045b188: b        #0x1045b230
1045b18a: ldr      r1, [r0, #0xc]
1045b18c: str.w    r1, [r8, #0x38]
1045b190: b        #0x1045b230
1045b192: ldrb     r0, [r0, #0xc]
1045b194: strb.w   r0, [r8, #0x3c]
1045b198: b        #0x1045b230
1045b19a: ldrb     r0, [r0, #0xc]
1045b19c: strb.w   r0, [r8, #0x3d]
1045b1a0: b        #0x1045b230
1045b1a2: ldrb     r0, [r0, #0xc]
1045b1a4: strb.w   r0, [r8, #0x3e]
1045b1a8: b        #0x1045b230
1045b1aa: ldrb     r0, [r0, #0xc]
1045b1ac: strb.w   r0, [r8, #0x3f]
1045b1b0: b        #0x1045b230
1045b1b2: ldrb     r0, [r0, #0xc]
1045b1b4: strb.w   r0, [r8, #0x40]
1045b1b8: b        #0x1045b230
1045b1ba: ldr      r1, [pc, #0x3e8]
1045b1bc: movw     r2, #0x118
1045b1c0: movw     r0, #0x1921
1045b1c4: bl       #0x101004ce
1045b1c8: b        #0x1045b230
1045b1ca: ldr      r1, [r0, #0xc]
1045b1cc: str.w    r1, [r8, #0x15c]
1045b1d0: b        #0x1045b230
1045b1d2: ldr      r1, [r0, #0xc]
1045b1d4: str.w    r1, [r8, #0x160]
1045b1d8: b        #0x1045b230
1045b1da: ldr      r1, [r0, #0xc]
1045b1dc: str.w    r1, [r8, #0x164]
1045b1e0: b        #0x1045b230
1045b1e2: ldr      r1, [r0, #0xc]
1045b1e4: str.w    r1, [r8, #0x168]
1045b1e8: b        #0x1045b230
1045b1ea: ldr      r1, [r0, #0xc]
1045b1ec: str.w    r1, [r8, #0x16c]
1045b1f0: b        #0x1045b230
1045b1f2: ldr      r1, [r0, #0xc]
1045b1f4: str.w    r1, [r8, #0x170]
1045b1f8: b        #0x1045b230
1045b1fa: ldr      r1, [r0, #0xc]
1045b1fc: str.w    r1, [r8, #0x174]
1045b200: b        #0x1045b230
1045b202: ldr      r1, [r0, #0xc]
1045b204: str.w    r1, [r8, #0x178]
1045b208: b        #0x1045b230
1045b20a: ldr      r1, [r0, #0xc]
1045b20c: str.w    r1, [r8, #0x17c]
1045b210: b        #0x1045b230
1045b212: ldr      r1, [r0, #0xc]
1045b214: str.w    r1, [r8, #0x180]
1045b218: b        #0x1045b230
1045b21a: ldr      r1, [r0, #0xc]
1045b21c: str.w    r1, [r8, #0x184]
1045b220: b        #0x1045b230
1045b222: ldr      r1, [r0, #0xc]
1045b224: str.w    r1, [r8, #0x188]
1045b228: b        #0x1045b230
1045b22a: ldrb     r0, [r0, #0xc]
1045b22c: strb.w   r0, [r8, #0x18c]
1045b230: adds     r4, r4, #1
1045b232: ldr      r0, [r5, #4]
1045b234: cmp      r0, r4
1045b236: bhi.w    #0x1045aeba
1045b23a: ldrb.w   r1, [r8, #0x36]
1045b23e: cmp      r1, #1
1045b240: bne      #0x1045b24a
1045b242: ldr.w    r0, [r8, #0x38]
1045b246: cbnz     r0, #0x1045b24a
1045b248: movs     r6, #1
1045b24a: ldr      r0, [pc, #0x35c]
1045b24c: bl       #0x1035d1ba
1045b250: ldr      r0, [pc, #0x358]
1045b252: mov.w    r1, #0x20000
1045b256: bl       #0x1035c98c
1045b25a: cmp      r7, #0
1045b25c: beq      #0x1045b270
1045b25e: cmp      r6, #0
1045b260: bne      #0x1045b270
1045b262: pop.w    {r4, r5, r6, r7, r8, lr}
1045b266: ldr      r0, [pc, #0x344]
1045b268: mov.w    r1, #0x100000
1045b26c: b.w      #0x1035c98c
1045b270: pop.w    {r4, r5, r6, r7, r8, pc}
1045b274: ldr      r1, [pc, #0x338]
1045b276: adds     r0, r0, r1
1045b278: beq      #0x1045b28a
1045b27a: cmp      r0, #1
1045b27c: beq      #0x1045b290
1045b27e: cmp      r0, #2
1045b280: bne      #0x1045b296
1045b282: lsls     r1, r0, #0x1d
1045b284: ldr      r0, [pc, #0x324]
1045b286: b.w      #0x1035c98c
1045b28a: mov.w    r1, #0x10000000
1045b28e: b        #0x1045b284
1045b290: mov.w    r1, #0x20000000
1045b294: b        #0x1045b284
1045b296: bx       lr
1045b298: push.w   {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, lr}
1045b29c: mov      r4, r1
1045b29e: ldr      r1, [pc, #0x318]
1045b2a0: ldr      r3, [pc, #0x310]
1045b2a2: adds     r0, r0, r3
1045b2a4: ldrd     r2, r1, [r1]
1045b2a8: strd     r2, r1, [sp, #8]
1045b2ac: beq      #0x1045b2de
1045b2ae: movw     r6, #0x4800
1045b2b2: movw     r8, #0x4804
1045b2b6: adds     r7, r6, #3
1045b2b8: movw     sb, #0x4806
1045b2bc: cmp      r0, #1
1045b2be: beq      #0x1045b2f4
1045b2c0: ldr      r5, [pc, #0x2e4]
1045b2c2: subs     r5, #0xc
1045b2c4: cmp      r0, #2
1045b2c6: beq      #0x1045b330
1045b2c8: cmp      r0, #0xf
1045b2ca: bne      #0x1045b2da
1045b2cc: ldr      r0, [r4]
1045b2ce: movs     r1, #2
1045b2d0: str      r0, [r5, #0x34]
1045b2d2: add.w    r0, r5, #0x3c
1045b2d6: bl       #0x1035d374
1045b2da: pop.w    {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, pc}
1045b2de: ldr      r0, [r4]
1045b2e0: movs     r3, #1
1045b2e2: str      r0, [sp]
1045b2e4: movs     r2, #2
1045b2e6: ldr      r0, [r4, #4]
1045b2e8: mov      r1, sp
1045b2ea: str      r0, [sp, #4]
1045b2ec: add      r0, sp, #8
1045b2ee: bl       #0x101005dc
1045b2f2: b        #0x1045b2da
1045b2f4: ldr      r1, [r4]
1045b2f6: movs     r2, #1
1045b2f8: mov      r0, r6
1045b2fa: bl       #0x10100640
1045b2fe: ldrb     r5, [r4, #0xc]
1045b300: movs     r2, #1
1045b302: ldrd     r1, r6, [r4, #4]
1045b306: ldr      r4, [r4, #0x10]
1045b308: mov      r0, r7
1045b30a: bl       #0x10100640
1045b30e: movs     r2, #1
1045b310: mov      r1, r6
1045b312: mov      r0, r8
1045b314: bl       #0x10100640
1045b318: movs     r2, #1
1045b31a: mov      r1, r5
1045b31c: movw     r0, #0x4805
1045b320: bl       #0x10100640
1045b324: movs     r2, #1
1045b326: mov      r1, r4
1045b328: mov      r0, sb
1045b32a: bl       #0x10100640
1045b32e: b        #0x1045b2da
1045b330: movs     r4, #0
1045b332: mov      r1, sp
1045b334: movs     r3, #1
1045b336: str      r4, [sp]
1045b338: movs     r2, #2
1045b33a: str      r4, [sp, #4]
1045b33c: add      r0, sp, #8
1045b33e: bl       #0x101005dc
1045b342: movs     r2, #1
1045b344: mov      r0, r6
1045b346: movs     r1, #0
1045b348: bl       #0x10100640
1045b34c: movs     r2, #1
1045b34e: mov      r0, r7
1045b350: movs     r1, #0
1045b352: bl       #0x10100640
1045b356: movs     r2, #1
1045b358: mov      r0, r8
1045b35a: movs     r1, #0
1045b35c: bl       #0x10100640
1045b360: movs     r2, #1
1045b362: mov      r0, sb
1045b364: mov      r1, r2
1045b366: bl       #0x10100640
1045b36a: str      r4, [r5, #0x2c]
1045b36c: b        #0x1045b2da
1045b36e: cmp      r0, #1
1045b370: beq      #0x1045b390
1045b372: cmp      r0, #2
1045b374: beq      #0x1045b396
1045b376: cmp      r0, #3
1045b378: beq      #0x1045b39c
1045b37a: cmp      r0, #4
1045b37c: beq      #0x1045b3a2
1045b37e: cmp      r0, #5
1045b380: beq      #0x1045b3a6
1045b382: cmp      r0, #6
1045b384: bne      #0x1045b3b0
1045b386: movw     r1, #0x2000
1045b38a: ldr      r0, [pc, #0x220]
1045b38c: b.w      #0x1035c98c
1045b390: movw     r1, #0x100
1045b394: b        #0x1045b38a
1045b396: movw     r1, #0x200
1045b39a: b        #0x1045b38a
1045b39c: movw     r1, #0x400
1045b3a0: b        #0x1045b38a
1045b3a2: b.w      #0x1045a29e
1045b3a6: ldr      r0, [pc, #0x214]
1045b3a8: strb     r1, [r0, #0xc]
1045b3aa: movw     r1, #0x1000
1045b3ae: b        #0x1045b38a
1045b3b0: bx       lr
1045b3b2: push     {r4, r5, r6, lr}
1045b3b4: ldr      r5, [pc, #0x1f0]
1045b3b6: movs     r4, #0
1045b3b8: ldr      r6, [pc, #0x1f0]
1045b3ba: movs     r1, #0x18
1045b3bc: subs     r5, #0xc
1045b3be: add.w    r0, r6, #0x48
1045b3c2: strb     r4, [r5, #1]
1045b3c4: str      r4, [r6, #0x38]
1045b3c6: str      r4, [r6, #0x3c]
1045b3c8: str      r4, [r6, #0x40]
1045b3ca: str      r4, [r6, #0x44]
1045b3cc: bl       #0x1035d2dc
1045b3d0: add.w    r0, r6, #0x48
1045b3d4: movs     r1, #0xf0
1045b3d6: strb     r4, [r0, #8]
1045b3d8: adds     r0, #0x28
1045b3da: str      r4, [r6, #0x60]
1045b3dc: str      r4, [r6, #0x64]
1045b3de: str      r4, [r6, #0x68]
1045b3e0: bl       #0x1035d2dc
1045b3e4: str      r4, [r5, #0x40]
1045b3e6: movs     r1, #0xf0
1045b3e8: add.w    r0, r6, #0x160
1045b3ec: str      r4, [r5, #0x44]
1045b3ee: bl       #0x1035d2dc
1045b3f2: str      r4, [r5, #0x48]
1045b3f4: add.w    r0, r6, #0x298
1045b3f8: movw     r1, #0x190
1045b3fc: str      r4, [r5, #0x4c]
1045b3fe: bl       #0x1035d2dc
1045b402: ldr      r0, [pc, #0x1bc]
1045b404: movs     r1, #0x30
1045b406: bl       #0x1035d2dc
1045b40a: ldr      r0, [pc, #0x1b4]
1045b40c: movs     r1, #0x28
1045b40e: adds     r0, #0x30
1045b410: bl       #0x1035d2dc
1045b414: mvn      r0, #0x80000000
1045b418: movs     r1, #0x14
1045b41a: strd     r4, r0, [r5, #0x2c]
1045b41e: ldr      r0, [pc, #0x1a0]
1045b420: strb     r4, [r5, #3]
1045b422: adds     r0, #0x58
1045b424: str      r4, [r5, #0x34]
1045b426: bl       #0x1035d2dc
1045b42a: bl       #0x1045a2c6
1045b42e: bl       #0x10477248
1045b432: ldr      r0, [pc, #0x190]
1045b434: bl       #0x10492598
1045b438: bl       #0x104779c4
1045b43c: ldr      r0, [pc, #0x188]
1045b43e: bl       #0x105818a4
1045b442: ldr      r0, [pc, #0x188]
1045b444: bl       #0x103de930
1045b448: ldr      r2, [pc, #0x16c]
1045b44a: movs     r3, #0x2e
1045b44c: pop.w    {r4, r5, r6, lr}
1045b450: ldr      r1, [pc, #0x17c]
1045b452: adds     r2, #0x10
1045b454: mov.w    r0, #0x4180000
1045b458: b.w      #0x10100c76
1045b45c: ldr      r0, [pc, #0x14c]
1045b45e: push     {r4, lr}
1045b460: bl       #0x1035c986
1045b464: pop.w    {r4, lr}
1045b468: ldr      r0, [pc, #0x140]
1045b46a: movs     r1, #1
1045b46c: b.w      #0x1035c98c
1045b470: bx       lr