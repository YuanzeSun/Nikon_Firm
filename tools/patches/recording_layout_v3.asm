; ARM Thumb / little-endian，Keystone 0.9.2。
; 三个片段按注明的运行地址分别汇编；构建包使用同目录 JSON 的字节。

; @address 0x10041000 -- MOV
push {r4,r5,r6,lr}
mov r5,r1
ldr r6,[sp,#16]
sub sp,#8
str r6,[sp]
bl #0x1004069a
add sp,#8
cmp r0,#0
bne done
mov r0,r5
mov r1,r6
bl #0x10042000
done:
pop {r4,r5,r6,pc}

; @address 0x10041100 -- MP4
push {r4,r5,r6,lr}
mov r5,r1
ldr r6,[sp,#16]
sub sp,#8
str r6,[sp]
bl #0x10040002
add sp,#8
cmp r0,#0
bne done
mov r0,r5
mov r1,r6
bl #0x10042000
done:
pop {r4,r5,r6,pc}

; @address 0x10042000 -- r0=上下文，r1=64 位文件偏移标志
; 表格式：复制数、(目标偏移,源偏移,字节数)...、指针数、(字段偏移,目标偏移)...
push {r4,r5,r6,r7}
mov r4,r0
ldr r5,narrow
cmp r1,#0
beq copies_begin
ldr r5,wide
copies_begin:
ldr r7,[r5],#4
next_copy:
cmp r7,#0
beq pointers_begin
ldm r5!,{r0,r1,r2}
add r0,r4
add r1,r4
copy_word:
ldr r3,[r1],#4
str r3,[r0],#4
subs r2,#4
bne copy_word
subs r7,#1
b next_copy
pointers_begin:
ldr r7,[r5],#4
next_pointer:
ldm r5!,{r0,r1}
add r1,r4
str r1,[r4,r0]
subs r7,#1
bne next_pointer
movs r0,#0
pop {r4,r5,r6,r7}
bx lr
.balign 4
narrow: .word 0x10043000
wide: .word 0x10043800
