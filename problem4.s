.global _start
_start:
	mov r0, #0b10100101		//Store binary number to r0
	
	//For upper nibble
	and r2, r0, #0xF0		//AND 1010 0101, 1111 0000 (0xF0) then store the result to r2
	lsr	r3, r2, #4			//Shift r2 = 1010 0000 to the right by 4 bit then store to r3 
							//r3 = 0000 1010 (0xa)
	
	//For lower nibble
	and r4, r0, #0x0F		//AND 1010 0101, 0000 1111
	lsl r5, r4, #4			//Shift r4 = 0000 0101 to the left by 4 bit 
							//r5 = 0101 0000 (0x50)
							
	orr r6, r3, r5			//Combine the results
							//r6 = 0101 1010 (0x5a)
							
	mov r1, r6				//Store the result with the nibble swapped to r1
	
	swi 0
	