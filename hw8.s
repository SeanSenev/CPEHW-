	.global _z12erathosthenes
_z12erasthosthenes:
	push	{r2, r3, r4, r5, r6, r7, r8}
	mov	r2, #2
	mov	r3, #3
	mov 	r4, r0
	mov	r5, r1
	mov	r6, #9
	mov	r7, #0
	mov	r8, #0xffffffff
	add	r5, #63
	lsr	r5, #6
.setprime:
	str	r8, [r0,r4]
	add	r4, #4
	add	r7, #1
	cmp	r5, r7
	bgt	.setprime
.valueset:
	mov	r5, #1
	add	r8, r6, #1
	lsr	r4, r8, #5
	lsl	r4, #2
	and	r7, r8, #31
	lsl	r5, r7
	cmp	r6, r3
	beq	.primecheck
.remove:
	ldr	r8, [r0, r4]
	bic	r8, r5
	str	r8, [r0,r4]
	add	r6, r3
	add	r6, r3
	cmp	r6, r1
	bmi	.valueset
.nextprime:
	add	r3, #2
	cmp	r3, r1
	bge	.complete
	mov	r6, r3
	bal	.valueset
.primecheck:
	ldr	r8, [r0, r4]
	ands	r5, r8
	beq	.nextprime
	mul	r6, r3, r3
	add	r2, #1
	bal	.valueset
.complete:
	mov	r0, r2
	pop	{r2, r3, r4, r5, r6, r7, r8}
	bx	lr
