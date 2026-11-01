        .file   "example.c"
        .option nopic
        .attribute arch, "rv32i2p1_m2p0"
        .attribute unaligned_access, 0
        .attribute stack_align, 16
        .text
.Ltext0:
        .cfi_sections   .debug_frame
        .file 0 "/app" "/app/example.c"
        .align  2
        .globl  rotl_add
        .type   rotl_add, @function
rotl_add:
.LFB0:
        .file 1 "/app/example.c"
        .loc 1 8 28
        .cfi_startproc
.LVL0:
        .loc 1 9 5
        .loc 1 10 5
        .loc 1 10 28 is_stmt 0
        slli    a5,a0,1
        srli    a0,a0,31
.LVL1:
        or      a0,a5,a0
        .loc 1 11 1
        add     a0,a0,a1
        ret
        .cfi_endproc
.LFE0:
        .size   rotl_add, .-rotl_add
        .align  2
        .globl  main
        .type   main, @function
main:
.LFB1:
        .loc 1 13 16 is_stmt 1
        .cfi_startproc
        .loc 1 14 5
.LVL2:
        .loc 1 15 5
        .loc 1 16 5
        .loc 1 20 5
.LBB9:
        .loc 1 20 10
        .loc 1 20 23
        lui     a2,%hi(.LANCHOR0)
        addi    a4,a2,%lo(.LANCHOR0)
        addi    a0,a4,120
        mv      a1,a0
.LBE9:
        .loc 1 13 16 is_stmt 0
        mv      a6,a0
        addi    a2,a2,%lo(.LANCHOR0)
        .loc 1 14 18
        li      a3,1228800
        addi    a3,a3,1231
.LBB11:
.LBB10:
        .loc 1 21 22
        li      t1,1662976
        addi    t1,t1,1549
        .loc 1 21 11
        li      a7,1013903360
        addi    a7,a7,863
        .loc 1 22 36
        li      t3,26
.LVL3:
.L3:
        .loc 1 21 9 is_stmt 1 discriminator 3
        .loc 1 21 22 is_stmt 0 discriminator 3
        mul     a3,a3,t1
.LVL4:
        .loc 1 21 11 discriminator 3
        add     a3,a3,a7
.LVL5:
        .loc 1 22 9 is_stmt 1 discriminator 3
        .loc 1 22 29 is_stmt 0 discriminator 3
        srli    a5,a3,16
        .loc 1 22 36 discriminator 3
        remu    a5,a5,t3
        .loc 1 22 43 discriminator 3
        addi    a5,a5,65
.LVL6:
        .loc 1 23 9 is_stmt 1 discriminator 3
        .loc 1 23 16 is_stmt 0 discriminator 3
        sw      a5,0(a2)
        .loc 1 24 9 is_stmt 1 discriminator 3
        .loc 1 24 17 is_stmt 0 discriminator 3
        sw      a5,0(a6)
.LBE10:
        .loc 1 20 30 is_stmt 1 discriminator 3
        .loc 1 20 23 discriminator 3
        addi    a2,a2,4
        addi    a6,a6,4
        bne     a2,a1,.L3
        mv      a5,a4
.LVL7:
.L4:
.LBE11:
.LBB12:
        .loc 1 28 9 discriminator 3
        .loc 1 28 25 is_stmt 0 discriminator 3
        lw      a3,0(a5)
        xori    a3,a3,207
        .loc 1 28 16 discriminator 3
        sw      a3,0(a5)
        .loc 1 27 30 is_stmt 1 discriminator 3
        .loc 1 27 23 discriminator 3
        addi    a5,a5,4
        bne     a5,a1,.L4
        mv      a3,a4
.LBE12:
        .loc 1 31 9 is_stmt 0
        li      a5,0
.L5:
.LVL8:
.LBB13:
        .loc 1 33 9 is_stmt 1 discriminator 3
.LBB14:
        .loc 1 9 5 discriminator 3
        .loc 1 10 5 discriminator 3
        .loc 1 10 28 is_stmt 0 discriminator 3
        slli    a2,a5,1
        srli    a5,a5,31
.LVL9:
        or      a2,a2,a5
        .loc 1 10 41 discriminator 3
        lw      a5,0(a3)
        add     a5,a2,a5
.LVL10:
.LBE14:
        .loc 1 32 30 is_stmt 1 discriminator 3
        .loc 1 32 23 discriminator 3
        addi    a3,a3,4
        bne     a3,a1,.L5
.LBE13:
        .loc 1 35 5
        .loc 1 35 14 is_stmt 0
        lui     a3,%hi(checksum)
        sw      a5,%lo(checksum)(a3)
        .loc 1 37 5 is_stmt 1
.LBB16:
        .loc 1 37 10
.LVL11:
        .loc 1 37 23
.LBE16:
        .loc 1 35 14 is_stmt 0
        li      a2,0
.LBB17:
        .loc 1 39 12
        li      a6,1
.LVL12:
        j       .L7
.LVL13:
.L6:
        .loc 1 37 30 is_stmt 1 discriminator 2
        .loc 1 37 23 discriminator 2
        addi    a4,a4,4
        addi    a0,a0,4
        beq     a4,a1,.L13
.L7:
        .loc 1 38 9
        .loc 1 38 25 is_stmt 0
        lw      a5,0(a4)
        xori    a5,a5,207
        .loc 1 38 16
        sw      a5,0(a4)
        .loc 1 39 9 is_stmt 1
        .loc 1 39 12 is_stmt 0
        lw      a3,0(a0)
        beq     a5,a3,.L6
        mv      a2,a6
        j       .L6
.L13:
        beq     a2,zero,.L8
        lui     a5,%hi(decrypt_ok)
        sw      zero,%lo(decrypt_ok)(a5)
.L8:
.LBE17:
        .loc 1 43 5 is_stmt 1
        .loc 1 44 1 is_stmt 0
        li      a0,0
        ret
        .cfi_endproc
.LFE1:
        .size   main, .-main
        .globl  decrypt_ok
        .globl  checksum
        .globl  orig
        .globl  msg
        .globl  SID
        .bss
        .align  2
        .set    .LANCHOR0,. + 0
        .type   msg, @object
        .size   msg, 120
msg:
        .zero   120
        .type   orig, @object
        .size   orig, 120
orig:
        .zero   120
        .section        .sbss,"aw",@nobits
        .align  2
        .type   checksum, @object
        .size   checksum, 4
checksum:
        .zero   4
        .section        .sdata,"aw"
        .align  2
        .type   decrypt_ok, @object
        .size   decrypt_ok, 4
decrypt_ok:
        .word   1
        .section        .srodata,"a"
        .align  2
        .type   SID, @object
        .size   SID, 4
SID:
        .word   1230031
        .text
.Letext0:
        .section        .debug_info,"",@progbits
.Ldebug_info0:
        .4byte  0x1cb
        .2byte  0x5
        .byte   0x1
        .byte   0x4
        .4byte  .Ldebug_abbrev0
        .byte   0x9
        .4byte  .LASF6
        .byte   0x1d
        .4byte  .LASF0
        .4byte  .LASF1
        .4byte  .Ltext0
        .4byte  .Letext0-.Ltext0
        .4byte  .Ldebug_line0
        .byte   0x5
        .string "SID"
        .byte   0x2
        .byte   0xb
        .4byte  0x3e
        .byte   0x5
        .byte   0x3
        .4byte  SID
        .byte   0xa
        .byte   0x4
        .byte   0x5
        .string "int"
        .byte   0xb
        .4byte  0x37
        .byte   0xc
        .4byte  0x37
        .4byte  0x53
        .byte   0xd
        .4byte  0x53
        .byte   0x1d
        .byte   0
        .byte   0xe
        .byte   0x4
        .byte   0x7
        .4byte  .LASF2
        .byte   0x5
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
        .byte   0xf
        .4byte  .LASF7
        .byte   0x1
        .byte   0xd
        .byte   0x5
        .4byte  0x37
        .4byte  .LFB1
        .4byte  .LFE1-.LFB1
        .byte   0x1
        .byte   0x9c
        .4byte  0x17a
        .byte   0x1
        .string "x"
        .byte   0xe
        .byte   0x12
        .4byte  0x53
        .4byte  .LLST2
        .byte   0x10
        .string "key"
        .byte   0x1
        .byte   0xf
        .byte   0x9
        .4byte  0x37
        .byte   0xcf
        .byte   0x1
        .string "c"
        .byte   0x1f
        .byte   0x9
        .4byte  0x37
        .4byte  .LLST3
        .byte   0x11
        .4byte  .LLRL4
        .4byte  0x10c
        .byte   0x1
        .string "i"
        .byte   0x14
        .byte   0xe
        .4byte  0x37
        .4byte  .LLST5
        .byte   0x12
        .4byte  .LBB10
        .4byte  .LBE10-.LBB10
        .byte   0x1
        .string "val"
        .byte   0x16
        .byte   0xd
        .4byte  0x37
        .4byte  .LLST6
        .byte   0
        .byte   0
        .byte   0x6
        .4byte  .LBB12
        .4byte  .LBE12-.LBB12
        .4byte  0x123
        .byte   0x3
        .string "i"
        .byte   0x1b
        .byte   0xe
        .4byte  0x37
        .byte   0
        .byte   0x6
        .4byte  .LBB13
        .4byte  .LBE13-.LBB13
        .4byte  0x166
        .byte   0x3
        .string "i"
        .byte   0x20
        .byte   0xe
        .4byte  0x37
        .byte   0x13
        .4byte  0x17a
        .4byte  .LBB14
        .4byte  .LBE14-.LBB14
        .byte   0x1
        .byte   0x21
        .byte   0xd
        .byte   0x4
        .4byte  0x193
        .4byte  .LLST7
        .byte   0x4
        .4byte  0x18b
        .4byte  .LLST8
        .byte   0x7
        .4byte  0x19b
        .4byte  .LLST8
        .byte   0
        .byte   0
        .byte   0x14
        .4byte  .LLRL10
        .byte   0x1
        .string "i"
        .byte   0x25
        .byte   0xe
        .4byte  0x37
        .4byte  .LLST11
        .byte   0
        .byte   0
        .byte   0x15
        .4byte  .LASF8
        .byte   0x1
        .byte   0x8
        .byte   0x5
        .4byte  0x37
        .byte   0x1
        .4byte  0x1a5
        .byte   0x8
        .string "c"
        .byte   0x12
        .4byte  0x37
        .byte   0x8
        .string "v"
        .byte   0x19
        .4byte  0x37
        .byte   0x3
        .string "u"
        .byte   0x9
        .byte   0x12
        .4byte  0x53
        .byte   0
        .byte   0x16
        .4byte  0x17a
        .4byte  .LFB0
        .4byte  .LFE0-.LFB0
        .byte   0x1
        .byte   0x9c
        .byte   0x4
        .4byte  0x18b
        .4byte  .LLST0
        .byte   0x17
        .4byte  0x193
        .byte   0x1
        .byte   0x5b
        .byte   0x7
        .4byte  0x19b
        .4byte  .LLST1
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
        .byte   0x17
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
        .byte   0
        .byte   0
        .byte   0x4
        .byte   0x5
        .byte   0
        .byte   0x31
        .byte   0x13
        .byte   0x2
        .byte   0x17
        .byte   0
        .byte   0
        .byte   0x5
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
        .byte   0x6
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
        .byte   0x7
        .byte   0x34
        .byte   0
        .byte   0x31
        .byte   0x13
        .byte   0x2
        .byte   0x17
        .byte   0
        .byte   0
        .byte   0x8
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
        .byte   0
        .byte   0
        .byte   0x9
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
        .byte   0xa
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
        .byte   0xb
        .byte   0x26
        .byte   0
        .byte   0x49
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0xc
        .byte   0x1
        .byte   0x1
        .byte   0x49
        .byte   0x13
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0xd
        .byte   0x21
        .byte   0
        .byte   0x49
        .byte   0x13
        .byte   0x2f
        .byte   0xb
        .byte   0
        .byte   0
        .byte   0xe
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
        .byte   0xf
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
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0x10
        .byte   0x34
        .byte   0
        .byte   0x3
        .byte   0x8
        .byte   0x3a
        .byte   0xb
        .byte   0x3b
        .byte   0xb
        .byte   0x39
        .byte   0xb
        .byte   0x49
        .byte   0x13
        .byte   0x1c
        .byte   0xb
        .byte   0
        .byte   0
        .byte   0x11
        .byte   0xb
        .byte   0x1
        .byte   0x55
        .byte   0x17
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0x12
        .byte   0xb
        .byte   0x1
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0
        .byte   0
        .byte   0x13
        .byte   0x1d
        .byte   0x1
        .byte   0x31
        .byte   0x13
        .byte   0x11
        .byte   0x1
        .byte   0x12
        .byte   0x6
        .byte   0x58
        .byte   0xb
        .byte   0x59
        .byte   0xb
        .byte   0x57
        .byte   0xb
        .byte   0
        .byte   0
        .byte   0x14
        .byte   0xb
        .byte   0x1
        .byte   0x55
        .byte   0x17
        .byte   0
        .byte   0
        .byte   0x15
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
        .byte   0x20
        .byte   0xb
        .byte   0x1
        .byte   0x13
        .byte   0
        .byte   0
        .byte   0x16
        .byte   0x2e
        .byte   0x1
        .byte   0x31
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
        .byte   0x17
        .byte   0x5
        .byte   0
        .byte   0x31
        .byte   0x13
        .byte   0x2
        .byte   0x18
        .byte   0
        .byte   0
        .byte   0
        .section        .debug_loclists,"",@progbits
        .4byte  .Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
        .2byte  0x5
        .byte   0x4
        .byte   0
        .4byte  0
.LLST2:
        .byte   0x7
        .4byte  .LVL2
        .4byte  .LVL3
        .byte   0x6
        .byte   0xc
        .4byte  0x12c4cf
        .byte   0x9f
        .byte   0x7
        .4byte  .LVL3
        .4byte  .LVL4
        .byte   0x1
        .byte   0x5d
        .byte   0x7
        .4byte  .LVL5
        .4byte  .LVL7
        .byte   0x1
        .byte   0x5d
        .byte   0
.LLST3:
        .byte   0x7
        .4byte  .LVL8
        .4byte  .LVL9
        .byte   0x1
        .byte   0x5f
        .byte   0x7
        .4byte  .LVL10
        .4byte  .LVL13
        .byte   0x1
        .byte   0x5f
        .byte   0x7
        .4byte  .LVL13
        .4byte  .LFE1
        .byte   0x5
        .byte   0x3
        .4byte  checksum
        .byte   0
.LLST5:
        .byte   0x7
        .4byte  .LVL2
        .4byte  .LVL3
        .byte   0x2
        .byte   0x30
        .byte   0x9f
        .byte   0
.LLST6:
        .byte   0x7
        .4byte  .LVL6
        .4byte  .LVL7
        .byte   0x1
        .byte   0x5f
        .byte   0x7
        .4byte  .LVL7
        .4byte  .LVL12
        .byte   0x2
        .byte   0x80
        .byte   0x7c
        .byte   0
.LLST7:
        .byte   0x7
        .4byte  .LVL8
        .4byte  .LVL10
        .byte   0x2
        .byte   0x7d
        .byte   0
        .byte   0
.LLST8:
        .byte   0x7
        .4byte  .LVL8
        .4byte  .LVL9
        .byte   0x1
        .byte   0x5f
        .byte   0
.LLST11:
        .byte   0x7
        .4byte  .LVL11
        .4byte  .LVL13
        .byte   0x2
        .byte   0x30
        .byte   0x9f
        .byte   0
.LLST0:
        .byte   0x7
        .4byte  .LVL0
        .4byte  .LVL1
        .byte   0x1
        .byte   0x5a
        .byte   0x7
        .4byte  .LVL1
        .4byte  .LFE0
        .byte   0x4
        .byte   0xa3
        .byte   0x1
        .byte   0x5a
        .byte   0x9f
        .byte   0
.LLST1:
        .byte   0x7
        .4byte  .LVL0
        .4byte  .LVL1
        .byte   0x1
        .byte   0x5a
        .byte   0x7
        .4byte  .LVL1
        .4byte  .LFE0
        .byte   0x4
        .byte   0xa3
        .byte   0x1
        .byte   0x5a
        .byte   0x9f
        .byte   0
.Ldebug_loc3:
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
        .section        .debug_rnglists,"",@progbits
        .4byte  .Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
        .2byte  0x5
        .byte   0x4
        .byte   0
        .4byte  0
.LLRL4:
        .byte   0x6
        .4byte  .LBB9
        .4byte  .LBE9
        .byte   0x6
        .4byte  .LBB11
        .4byte  .LBE11
        .byte   0
.LLRL10:
        .byte   0x6
        .4byte  .LBB16
        .4byte  .LBE16
        .byte   0x6
        .4byte  .LBB17
        .4byte  .LBE17
        .byte   0
.Ldebug_ranges3:
        .section        .debug_line,"",@progbits
.Ldebug_line0:
        .section        .debug_str,"MS",@progbits,1
.LASF2:
        .string "unsigned int"
.LASF3:
        .string "orig"
.LASF6:
        .string "GNU C17 12.4.0 -mabi=ilp32 -misa-spec=20191213 -march=rv32im -g -O1"
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
