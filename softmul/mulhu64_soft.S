.text
.globl __mulhu64_soft
.type __mulhu64_soft, @function
__mulhu64_soft:
    srli t1, a0, 32       # A_high
    andi t0, a0, -1       # A_low (or use the shift method)
    srli t0, t0, 32
    slli t0, t0, 32
    srli t0, t0, 32

    srli t3, a1, 32       # B_high
    andi t2, a1, -1       # B_low
    srli t2, t2, 32
    slli t2, t2, 32
    srli t2, t2, 32

    mul t4, t0, t2    # p0 = A_low * B_low
    mul t5, t0, t3    # p1 = A_low * B_high
    mul t6, t1, t2    # p2 = A_high * B_low
    mul t1, t1, t3    # p3 = A_high * B_high

    srli t0, t4, 32
    add  t5, t5, t0
    sltu t0, t5, t0
    add  t5, t5, t6
    sltu t2, t5, t6
    add  t0, t0, t2
    srli t5, t5, 32
    add  t5, t5, t0
    add  a0, t1, t5

    ret

.size __mulhu64_soft, .-__mulhu64_soft
