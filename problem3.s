.global _start
_start:
	mov r0, #15		//input number to r0
	mov r1, #0		//Initialize parity accumulator to #0
	
loop:
	cmp r0, #0	//Check if input is 0 (all bits checked)
	beq end
	
	and r2, r0, #1		//Isolate LSB (bit 0)
	eor r1, r1, r2		//XOR bit with parity accumulator (flip if bit is 1)
	lsr r0, r0, #1		//Shift it to right by 1 to check next bit
	b loop 				//repeat


end:
	b end
	
	

	
