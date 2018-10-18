.global _Z3sumii

_Z3sumii:
	push	{r2, r3}
	mov 	r2, r0 /*sets register 3 to var A(r0)*/
	mov	r3, #0 /*sets sum to 0*/
.L1:
	add	r3, r2, r3 /*first add of sum*/
	add	r2, r2, #1 /*i++*/
	cmp 	r2, r1	   /*compares i to b*/
	ble	.L1	
	mov	r0, r3	   /*points regster 0 to r3(sum)*/
	pop	{r2, r3}

	bx 	lr
