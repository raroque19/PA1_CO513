.global _start
_start:
	mov r0, #210		//Store first integer to r0
	mov r1, #45			//Store second integer to r1
	
loop:
	cmp r0, r1			//Compare the value of two integers
	beq	end				//Branch to end if r0 == r1
	
	bgt	cond1			//Branch to cond1 if r0>r1
	blt	cond2			//Branch to cond2 if r0<r1
	
cond1:
	sub r0, r0, r1		//r0= r0-r1 then store result to r0
	b loop				//Repeat
	
cond2: 
	sub r1, r1, r0		//r1= r1-r0 then store result to r1
	b loop				//Repeat
	
end:
	swi 0
	
	
	

	
