.global _start
_start:
	mov r0, #7		//Store the positive n integer to r0
	mov r1, #1		//Initialize the r1 by storing #1
	
	
loop:
	cmp r0, #0		//Compare r0 with #0
	beq end			//Branch to end if r0 == 0
	mul r1, r1, r0	//r1= r1 x r0; result will store at r1
	sub r0, #1		//Decrement r0 by 1
	b loop
	
end: 
	b end