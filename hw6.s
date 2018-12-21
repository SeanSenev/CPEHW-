  .global _z8checksumchar
  
  ._z8checksumchar:
  
                    push    {r1,r2,r3}
                    mov     r0,r1
                    mov     r2, 0
  charlen:          add     r2, r2, 1
                    add     r1, r1, [#1]
                    bne     charlen
  checksum:         sub     r2, r2, 1
                    add     r3, r0, [#1]
                    add     r0, r3
                    cmp     r2, #0
                    bne     checksum
                    pop     {r1, r2, r3}
                    bx      lr
