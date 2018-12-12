	.global _Z3add
_Z3add:
	push	{r4,r5,r6,r7,r8,r9}
	ldr	r2,[r0,#12]
	ldr	r3,[r0,#8]
	ldr	r4,[r0,#4]
	ldr	r5,[r0,#0]
	ldr	r6,[r1,#12]
	ldr	r7,[r1,#8]
	ldr	r8,[r1,#4]
	ldr	r9,[r1,#0]
	add	r0,r6,r2
	adc	r0,r7,r3
	adc	r0,r8,r4
	adc	r0,r9,r5
	pop	{r4,r5,r6,r7,r8,r9}
	bx	lr
