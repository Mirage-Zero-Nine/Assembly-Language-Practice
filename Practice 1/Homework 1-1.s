.data
n: .word 5
vals: .word 0,1
 .text
main: ld r1,vals(r0)
 ld r2,n(r0)
 ld r4,vals+8(r0)
 ld r5,vals(r0)
l1: dadd r1,r1,r2
 dsub r2,r2,r4
 slti r3,r2,0
 beqz r3,l1
 halt