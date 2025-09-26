.text
.globl __mulhu64_soft
.type __mulhu64_soft, @function
__mulhu64_soft:
    srli t1, a0, 32
    li   t4, -1
    srli t4, t4, 32
    and  t0, a0, t4

    srli t3, a1, 32
    and  t2, a1, t4

    mul t4, t0, t2
    mul t5, t0, t3
    mul t6, t1, t2
    mul a0, t1, t3

    srli t0, t4, 32
    add  t5, t5, t0
    sltu t0, t5, t0

    add  t1, t5, t6
    sltu t2, t1, t6
    add  t0, t0, t2

    slli t0, t0, 32
    srli t1, t1, 32
    or   t0, t0, t1
    add  a0, a0, t0

    ret

.size __mulhu64_soft, .-__mulhu64_soft
