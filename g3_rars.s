# G3: Mesaj Sifreleme ve Butunluk - Ripes Uyumlu RV32IM Assembly
# SID = 1230031 (0x0012C4CF), N = 30, K = 207 (0xCF)

.data
SID:        .word 1230031
decrypt_ok: .word 1
checksum:   .word 0
msg:        .zero 120
orig:       .zero 120

.text
.globl main

main:
    addi sp, sp, -48
    sw   ra, 44(sp)
    sw   s0, 40(sp)
    addi s0, sp, 48

    # x = SID (1230031 = 0x0012C4CF)
    lui  a5, 0x12c
    addi a5, a5, 1231
    sw   a5, -20(s0)

    # key = SID & 0xFF (207 = 0xCF)
    andi a5, a5, 0xFF
    sw   a5, -24(s0)
    bnez a5, L_gen_init
    addi a5, zero, 165
    sw   a5, -24(s0)

L_gen_init:
    sw   zero, -28(s0)
    j    L_gen_cond

L_gen_body:
    lw   a4, -20(s0)
    lui  a5, 0x196
    addi a5, a5, 1549
    mul  a4, a4, a5
    lui  a5, 0x3c6ef
    addi a5, a5, 863
    add  a5, a4, a5
    sw   a5, -20(s0)

    srli a4, a5, 16
    addi a5, zero, 26
    remu a5, a4, a5
    addi a5, a5, 65
    sw   a5, -48(s0)

    la   a4, msg
    lw   a5, -28(s0)
    slli a5, a5, 2
    add  a5, a4, a5
    lw   a4, -48(s0)
    sw   a4, 0(a5)

    la   a4, orig
    lw   a5, -28(s0)
    slli a5, a5, 2
    add  a5, a4, a5
    lw   a4, -48(s0)
    sw   a4, 0(a5)

    lw   a5, -28(s0)
    addi a5, a5, 1
    sw   a5, -28(s0)

L_gen_cond:
    lw   a4, -28(s0)
    addi a5, zero, 29
    bge  a5, a4, L_gen_body

    # 2. Dongu: msg[i] = msg[i] ^ key
    sw   zero, -32(s0)
    j    L_enc_cond

L_enc_body:
    la   a4, msg
    lw   a5, -32(s0)
    slli a5, a5, 2
    add  a5, a4, a5
    lw   a4, 0(a5)
    lw   a3, -24(s0)
    xor  a4, a4, a3
    sw   a4, 0(a5)

    lw   a5, -32(s0)
    addi a5, a5, 1
    sw   a5, -32(s0)

L_enc_cond:
    lw   a4, -32(s0)
    addi a5, zero, 29
    bge  a5, a4, L_enc_body

    # 3. Dongu: c = rotl_add(c, msg[i])
    sw   zero, -36(s0)
    sw   zero, -40(s0)
    j    L_chk_cond

L_chk_body:
    la   a4, msg
    lw   a5, -40(s0)
    slli a5, a5, 2
    add  a5, a4, a5
    lw   a1, 0(a5)
    lw   a0, -36(s0)
    jal  ra, rotl_add
    sw   a0, -36(s0)

    lw   a5, -40(s0)
    addi a5, a5, 1
    sw   a5, -40(s0)

L_chk_cond:
    lw   a4, -40(s0)
    addi a5, zero, 29
    bge  a5, a4, L_chk_body

    lw   a4, -36(s0)
    la   a5, checksum
    sw   a4, 0(a5)

    # 4. Dongu: msg[i] ^= key ve orig[i] ile karsilastirma
    sw   zero, -44(s0)
    j    L_dec_cond

L_dec_body:
    la   a4, msg
    lw   a5, -44(s0)
    slli a5, a5, 2
    add  a5, a4, a5
    lw   a4, 0(a5)
    lw   a3, -24(s0)
    xor  a4, a4, a3
    sw   a4, 0(a5)

    la   a3, orig
    lw   a5, -44(s0)
    slli a5, a5, 2
    add  a5, a3, a5
    lw   a5, 0(a5)
    beq  a4, a5, L_dec_next

    la   a5, decrypt_ok
    sw   zero, 0(a5)

L_dec_next:
    lw   a5, -44(s0)
    addi a5, a5, 1
    sw   a5, -44(s0)

L_dec_cond:
    lw   a4, -44(s0)
    addi a5, zero, 29
    bge  a5, a4, L_dec_body

    # Sonuclari s1 (x9) ve s2 (x18) yazmaclarina da yukle
    la   t0, checksum
    lw   s1, 0(t0)
    la   t1, decrypt_ok
    lw   s2, 0(t1)

    addi a0, zero, 0
    lw   ra, 44(sp)
    lw   s0, 40(sp)
    addi sp, sp, 48
    li   a7, 10
    ecall

rotl_add:
    addi sp, sp, -48
    sw   s0, 44(sp)
    addi s0, sp, 48
    sw   a0, -36(s0)
    sw   a1, -40(s0)
    lw   a5, -36(s0)
    sw   a5, -20(s0)
    lw   a5, -20(s0)
    slli a4, a5, 1
    srli a5, a5, 31
    or   a5, a5, a4
    lw   a4, -40(s0)
    add  a5, a5, a4
    mv   a0, a5
    lw   s0, 44(sp)
    addi sp, sp, 48
    jalr zero, ra, 0
