
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
    li s0, 0
    li t0, 0

loop:
    beq t0, a1, done
    slli t1, t0, 2
    add t2, a0, t1
    lw t3, 0(t2)
    bne t3, a2, next
    
    addi s0, t2, 0
    
next:
    addi t0, t0, 1
    j loop
    
done:
    addi a7, zero, 10 
    ecall
