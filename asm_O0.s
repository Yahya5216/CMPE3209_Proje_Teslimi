        .file   "example.c"
        .option nopic
        .attribute arch, "rv32i2p1_m2p0"
        .attribute unaligned_access, 0
        .attribute stack_align, 16
        .text
.Ltext0:
        .cfi_sections   .debug_frame
        .file 0 "/app" "/app/example.c"
        .globl  SID
        .section        .srodata,"a"
        .align  2
        .type   SID, @object
        .size   SID, 4
SID:
        .word   1230031
        .globl  msg
        .bss
        .align  2
        .type   msg, @object
        .size   msg, 120
msg:
        .zero   120
        .globl  orig
        .align  2
        .type   orig, @object
        .size   orig, 120
orig:
        .zero   120
        .globl  checksum
        .section        .sbss,"aw",@nobits
        .align  2
        .type   checksum, @object
        .size   checksum, 4
checksum:
        .zero   4
        .globl  decrypt_ok
        .section        .sdata,"aw"
        .align  2
        .type   decrypt_ok, @object
        .size   decrypt_ok, 4
decrypt_ok:
        .word   1
        .text
        .align  2
        .globl  rotl_add
        .type   rotl_add, @function
rotl_add:
.LFB0:
        .file 1 "/app/example.c"
        .loc 1 8 28
        .cfi_startproc
        addi    sp,sp,-48
        .cfi_def_cfa_offset 48
        sw      s0,44(sp)
        .cfi_offset 8, -4
        addi    s0,sp,48
        .cfi_def_cfa 8, 0
        sw      a0,-36(s0)
        sw      a1,-40(s0)
        .loc 1 9 18
        lw      a5,-36(s0)
        sw      a5,-20(s0)
        .loc 1 10 28
        lw      a5,-20(s0)
        slli    a4,a5,1
        srli    a5,a5,31
        or      a5,a5,a4
        .loc 1 10 43
        lw      a4,-40(s0)
        .loc 1 10 41
        add     a5,a5,a4
        .loc 1 11 1
        mv      a0,a5
        lw      s0,44(sp)
        .cfi_restore 8
        .cfi_def_cfa 2, 48
        addi    sp,sp,48
        .cfi_def_cfa_offset 0
        jr      ra
        .cfi_endproc
.LFE0:
        .size   rotl_add, .-rotl_add
        .align  2
        .globl  main
        .type   main, @function
main:
.LFB1:
        .loc 1 13 16
        .cfi_startproc
        addi    sp,sp,-48
        .cfi_def_cfa_offset 48
        sw      ra,44(sp)
        sw      s0,40(sp)
        .cfi_offset 1, -4
        .cfi_offset 8, -8
        addi    s0,sp,48
        .cfi_def_cfa 8, 0
        .loc 1 14 22
        li      a5,1228800
        addi    a5,a5,1231
        .loc 1 14 18
        sw      a5,-20(s0)
        .loc 1 15 19
        li      a5,1228800
        addi    a5,a5,1231
        .loc 1 15 9
        andi    a5,a5,255
        sw      a5,-24(s0)
        .loc 1 16 8
        lw      a5,-24(s0)
        bne     a5,zero,.L4
        .loc 1 17 13
        li      a5,165
        sw      a5,-24(s0)
.L4:
.LBB2:
        .loc 1 20 14
        sw      zero,-28(s0)
        .loc 1 20 5
        j       .L5
.L6:
.LBB3:
        .loc 1 21 22 discriminator 3
        lw      a4,-20(s0)
        li      a5,1662976
        addi    a5,a5,1549
        mul     a4,a4,a5
        .loc 1 21 11 discriminator 3
        li      a5,1013903360
        addi    a5,a5,863
        add     a5,a4,a5
        sw      a5,-20(s0)
        .loc 1 22 29 discriminator 3
        lw      a5,-20(s0)
        srli    a4,a5,16
        .loc 1 22 36 discriminator 3
        li      a5,26
        remu    a5,a4,a5
        .loc 1 22 43 discriminator 3
        addi    a5,a5,65
        .loc 1 22 13 discriminator 3
        sw      a5,-48(s0)
        .loc 1 23 16 discriminator 3
        lui     a5,%hi(msg)
        addi    a4,a5,%lo(msg)
        lw      a5,-28(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,-48(s0)
        sw      a4,0(a5)
        .loc 1 24 17 discriminator 3
        lui     a5,%hi(orig)
        addi    a4,a5,%lo(orig)
        lw      a5,-28(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,-48(s0)
        sw      a4,0(a5)
.LBE3:
        .loc 1 20 30 discriminator 3
        lw      a5,-28(s0)
        addi    a5,a5,1
        sw      a5,-28(s0)
.L5:
        .loc 1 20 23 discriminator 1
        lw      a4,-28(s0)
        li      a5,29
        ble     a4,a5,.L6
.LBE2:
.LBB4:
        .loc 1 27 14
        sw      zero,-32(s0)
        .loc 1 27 5
        j       .L7
.L8:
        .loc 1 28 21 discriminator 3
        lui     a5,%hi(msg)
        addi    a4,a5,%lo(msg)
        lw      a5,-32(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        .loc 1 28 25 discriminator 3
        lw      a5,-24(s0)
        xor     a4,a4,a5
        .loc 1 28 16 discriminator 3
        lui     a5,%hi(msg)
        addi    a3,a5,%lo(msg)
        lw      a5,-32(s0)
        slli    a5,a5,2
        add     a5,a3,a5
        sw      a4,0(a5)
        .loc 1 27 30 discriminator 3
        lw      a5,-32(s0)
        addi    a5,a5,1
        sw      a5,-32(s0)
.L7:
        .loc 1 27 23 discriminator 1
        lw      a4,-32(s0)
        li      a5,29
        ble     a4,a5,.L8
.LBE4:
        .loc 1 31 9
        sw      zero,-36(s0)
.LBB5:
        .loc 1 32 14
        sw      zero,-40(s0)
        .loc 1 32 5
        j       .L9
.L10:
        .loc 1 33 13 discriminator 3
        lui     a5,%hi(msg)
        addi    a4,a5,%lo(msg)
        lw      a5,-40(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a5,0(a5)
        mv      a1,a5
        lw      a0,-36(s0)
        call    rotl_add
        sw      a0,-36(s0)
        .loc 1 32 30 discriminator 3
        lw      a5,-40(s0)
        addi    a5,a5,1
        sw      a5,-40(s0)
.L9:
        .loc 1 32 23 discriminator 1
        lw      a4,-40(s0)
        li      a5,29
        ble     a4,a5,.L10
.LBE5:
        .loc 1 35 14
        lui     a5,%hi(checksum)
        lw      a4,-36(s0)
        sw      a4,%lo(checksum)(a5)
.LBB6:
        .loc 1 37 14
        sw      zero,-44(s0)
        .loc 1 37 5
        j       .L11
.L13:
        .loc 1 38 21
        lui     a5,%hi(msg)
        addi    a4,a5,%lo(msg)
        lw      a5,-44(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        .loc 1 38 25
        lw      a5,-24(s0)
        xor     a4,a4,a5
        .loc 1 38 16
        lui     a5,%hi(msg)
        addi    a3,a5,%lo(msg)
        lw      a5,-44(s0)
        slli    a5,a5,2
        add     a5,a3,a5
        sw      a4,0(a5)
        .loc 1 39 16
        lui     a5,%hi(msg)
        addi    a4,a5,%lo(msg)
        lw      a5,-44(s0)
        slli    a5,a5,2
        add     a5,a4,a5
        lw      a4,0(a5)
        .loc 1 39 27
        lui     a5,%hi(orig)
        addi    a3,a5,%lo(orig)
        lw      a5,-44(s0)
        slli    a5,a5,2
        add     a5,a3,a5
        lw      a5,0(a5)
        .loc 1 39 12
        beq     a4,a5,.L12
        .loc 1 40 24
        lui     a5,%hi(decrypt_ok)
        sw      zero,%lo(decrypt_ok)(a5)
.L12:
        .loc 1 37 30 discriminator 2
        lw      a5,-44(s0)
        addi    a5,a5,1
        sw      a5,-44(s0)
.L11:
        .loc 1 37 23 discriminator 1
        lw      a4,-44(s0)
        li      a5,29
        ble     a4,a5,.L13
.LBE6:
        .loc 1 43 12
        li      a5,0
        .loc 1 44 1
        mv      a0,a5
        lw      ra,44(sp)
        .cfi_restore 1
        lw      s0,40(sp)
        .cfi_restore 8
        .cfi_def_cfa 2, 48
        addi    sp,sp,48
        .cfi_def_cfa_offset 0
        jr      ra
        .cfi_endproc
.LFE1:
        .size   main, .-main
.Letext0:
        .section        .debug_info,"",@progbits
.Ldebug_info0:
        .4byte  0x18e
        .2byte  0x5
        .byte   0x1
        .byte   0x4
        .4byte  .Ldebug_abbrev0
        .byte   0x7
        .4byte  .LASF6
        .byte   0x1d
        .4byte  .LASF0
        .4byte  .LASF1
        .4byte  .Ltext0
        .4byte  .Letext0-.Ltext0
        .4byte  .Ldebug_line0
        .byte   0x4
        .string "SID"
        .byte   0x2
        .byte   0xb
        .4byte  0x3e
        .byte   0x5
        .byte   0x3
        .4byte  SID
        .byte   0x8
        .byte   0x4
        .byte   0x5
        .string "int"
        .byte   0x9
        .4byte  0x37
        .byte   0xa
        .4byte  0x37
        .4byte  0x53
        .byte   0xb
        .4byte  0x53
        .byte   0x1d
        .byte   0
        .byte   0xc
        .byte   0x4
        .byte   0x7
        .4byte  .LASF2
        .byte   0x4
        .string "msg"
        .byte   0x3
        .byte   0x5
        .4byte  0x43
        .byte   0x5
        .byte   0x3
        .4byte  msg
        .byte   0x2
        .4byte  .LASF3
        .byte   0x4
        .4byte  0x43
        .byte   0x5
        .byte   0x3
        .4byte  orig
        .byte   0x2
        .4byte  .LASF4
        .byte   0x5
        .4byte  0x37
        .byte   0x5
        .byte   0x3
        .4byte  checksum
        .byte   0x2
        .4byte  .LASF5
        .byte   0x6
        .4byte  0x37
        .byte   0x5
        .byte   0x3
        .4byte  decrypt_ok
        .byte   0xd
        .4byte  .LASF7
        .byte   0x1
        .byte   0xd
        .byte   0x5
        .4byte  0x37
        .4byte  .LFB1
        .4byte  .LFE1-.LFB1
        .byte   0x1
        .byte   0x9c
        .4byte  0x158
        .byte   0x1
        .string "x"
        .byte   0xe
        .byte   0x12
        .4byte  0x53
        .byte   0x2
        .byte   0x91
        .byte   0x6c
        .byte   0x1
        .string "key"
        .byte   0xf
        .byte   0x9
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x68
        .byte   0x1
        .string "c"
        .byte   0x1f
        .byte   0x9
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x5c
        .byte   0x3
        .4byte  .LBB2
        .4byte  .LBE2-.LBB2
        .4byte  0x10d
        .byte   0x1
        .string "i"
        .byte   0x14
        .byte   0xe
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x64
        .byte   0x5
        .4byte  .LBB3
        .4byte  .LBE3-.LBB3
        .byte   0x1
        .string "val"
        .byte   0x16
        .byte   0xd
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x50
        .byte   0
        .byte   0
        .byte   0x3
        .4byte  .LBB4
        .4byte  .LBE4-.LBB4
        .4byte  0x127
        .byte   0x1
        .string "i"
        .byte   0x1b
        .byte   0xe
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x60
        .byte   0
        .byte   0x3
        .4byte  .LBB5
        .4byte  .LBE5-.LBB5
        .4byte  0x141
        .byte   0x1
        .string "i"
        .byte   0x20
        .byte   0xe
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x58
        .byte   0
        .byte   0x5
        .4byte  .LBB6
        .4byte  .LBE6-.LBB6
        .byte   0x1
        .string "i"
        .byte   0x25
        .byte   0xe
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x54
        .byte   0
        .byte   0
        .byte   0xe
        .4byte  .LASF8
        .byte   0x1
        .byte   0x8
        .byte   0x5
        .4byte  0x37
        .4byte  .LFB0
        .4byte  .LFE0-.LFB0
        .byte   0x1
        .byte   0x9c
        .byte   0x6
        .string "c"
        .byte   0x12
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x5c
        .byte   0x6
        .string "v"
        .byte   0x19
        .4byte  0x37
        .byte   0x2
        .byte   0x91
        .byte   0x58
        .byte   0x1
        .string "u"
        .byte   0x9
        .byte   0x12
        .4byte  0x53
        .byte   0x2
        .byte   0x91
        .byte   0x6c
        .byte   0
        .byte   0
        .section        .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
        .byte   0x1
        .byte   0x34
        .byte   0
        .byte   0x3
        .byte   0x8
        .byte   0x3a
        .byte   0x21
        .byte   0x1
        .byte   0x3b
        .byte   0xb
        .byte   0x39
        .byte   0xb
        .byte   0x49
        .byte   0x13
        .byte   0x2
        .byte   0x18
        .byte   0
        .byte   0
        .byte   0x2
        .byte   0x34
        .byte   0
        .byte   0x3
        .byte   0xe
        .byte   0x3a
        .byte   0x21
        .byte   0x1
        .byte   0x3b
        .byte   0xb
        .byte   0x39
        .byte   0x21
        .byte   0x5
        .byte   0x49
        .byte   0x13
        .byte   0x3f
        .byte   0x19
        .byte   0x2
        .byte   0x18
        .byte   0
        .byte   0
        .byte   0x3
        .byte   0xb
        .byte   0x1
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0x4
        .byte   0x34
        .byte   0
        .byte   0x3
        .byte   0x8
        .byte   0x3a
        .byte   0x21
        .byte   0x1
        .byte   0x3b
        .byte   0xb
        .byte   0x39
        .byte   0xb
        .byte   0x49
        .byte   0x13
        .byte   0x3f
        .byte   0x19
        .byte   0x2
        .byte   0x18
        .byte   0
        .byte   0
        .byte   0x5
        .byte   0xb
        .byte   0x1
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0
        .byte   0
        .byte   0x6
        .byte   0x5
        .byte   0
        .byte   0x3
        .byte   0x8
        .byte   0x3a
        .byte   0x21
        .byte   0x1
        .byte   0x3b
        .byte   0x21
        .byte   0x8
        .byte   0x39
        .byte   0xb
        .byte   0x49
        .byte   0x13
        .byte   0x2
        .byte   0x18
        .byte   0
        .byte   0
        .byte   0x7
        .byte   0x11
        .byte   0x1
        .byte   0x25
        .byte   0xe
        .byte   0x13
        .byte   0xb
        .byte   0x3
        .byte   0x1f
        .byte   0x1b
        .byte   0x1f
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0x10
        .byte   0x17
        .byte   0
        .byte   0
        .byte   0x8
        .byte   0x24
        .byte   0
        .byte   0xb
        .byte   0xb
        .byte   0x3e
        .byte   0xb
        .byte   0x3
        .byte   0x8
        .byte   0
        .byte   0
        .byte   0x9
        .byte   0x26
        .byte   0
        .byte   0x49
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0xa
        .byte   0x1
        .byte   0x1
        .byte   0x49
        .byte   0x13
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0xb
        .byte   0x21
        .byte   0
        .byte   0x49
        .byte   0x13
        .byte   0x2f
        .byte   0xb
        .byte   0
        .byte   0
        .byte   0xc
        .byte   0x24
        .byte   0
        .byte   0xb
        .byte   0xb
        .byte   0x3e
        .byte   0xb
        .byte   0x3
        .byte   0xe
        .byte   0
        .byte   0
        .byte   0xd
        .byte   0x2e
        .byte   0x1
        .byte   0x3f
        .byte   0x19
        .byte   0x3
        .byte   0xe
        .byte   0x3a
        .byte   0xb
        .byte   0x3b
        .byte   0xb
        .byte   0x39
        .byte   0xb
        .byte   0x27
        .byte   0x19
        .byte   0x49
        .byte   0x13
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0x40
        .byte   0x18
        .byte   0x7c
        .byte   0x19
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0xe
        .byte   0x2e
        .byte   0x1
        .byte   0x3f
        .byte   0x19
        .byte   0x3
        .byte   0xe
        .byte   0x3a
        .byte   0xb
        .byte   0x3b
        .byte   0xb
        .byte   0x39
        .byte   0xb
        .byte   0x27
        .byte   0x19
        .byte   0x49
        .byte   0x13
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0x40
        .byte   0x18
        .byte   0x7a
        .byte   0x19
        .byte   0
        .byte   0
        .byte   0
        .section        .debug_aranges,"",@progbits
        .4byte  0x1c
        .2byte  0x2
        .4byte  .Ldebug_info0
        .byte   0x4
        .byte   0
        .2byte  0
        .2byte  0
        .4byte  .Ltext0
        .4byte  .Letext0-.Ltext0
        .4byte  0
        .4byte  0
        .section        .debug_line,"",@progbits
.Ldebug_line0:
        .section        .debug_str,"MS",@progbits,1
.LASF2:
        .string "unsigned int"
.LASF3:
        .string "orig"
.LASF6:
        .string "GNU C17 12.4.0 -mabi=ilp32 -misa-spec=20191213 -march=rv32im -g -O0"
.LASF8:
        .string "rotl_add"
.LASF4:
        .string "checksum"
.LASF7:
        .string "main"
.LASF5:
        .string "decrypt_ok"
        .section        .debug_line_str,"MS",@progbits,1
.LASF0:
        .string "/app/example.c"
.LASF1:
        .string "/app"
        .ident  "GCC: (crosstool-NG UNKNOWN) 12.4.0"
        .section        .note.GNU-stack,"",@progbits
