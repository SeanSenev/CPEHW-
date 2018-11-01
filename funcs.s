	.global _Z5counti
_Z5counti:	
	push    {r1}
	mov	 r1, #1  

.L1:
	add	 r1, r1, #1
	cmp	 r1, r0
	blt	.L1 
	
	pop	{r1}
	bx	lr


	.global _Z9countDowni
_Z9countDowni:
.L2:
	sub	r0, r0, #1
	cmp	r0, #0
	bgt	.L2

      	bx	 lr		

	.global _Z3sumii
_Z3sumii:
	push	{r2, r3}
	mov	r2, r0
	mov 	r3, #0
.L3:
	add	r3, r2, r3
	add	r2, r2, #1
	cmp	r2, r1
	ble	.L3
	mov	r0, r3
	pop	{r2, r3}

	bx lr


	.global _Z4facti
_Z4facti:
	push	{r1}
	mov	r1, r0
.L4:
	cmp	r0, #1
	bgt	.L5
	mov	r0, #1
	pop	{r1}
	bx	lr
.L5:
	sub	r1, r1, #1 /*starts from n, sub 1*/
	cmp	r1, #1
	bgt	.L6
	pop	{r1}
	bx	lr
.L6:
	mul	r0, r1, r0
	bgt	.L5
