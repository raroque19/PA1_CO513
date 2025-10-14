.global _start
_start:
	ldr r0, =my_array			//Load address of array to r0
	mov r1, #7					//Number of elements

	
	ldr r2, [r0], #4	//Load first element into r2 (initial max), post-increment r0
	sub r1, r1, #1		//Decrease the counter as 1 element is already processed (first initialized element)
	
loop: 
	cmp r1, #0
	beq end
	
	ldr r3, [r0], #4	//Load next element to r3
	cmp r3, r2			//Compare r3 with current max of r2
	ble	skip			//Branch to skip if r3 < = r2
	mov r2, r3			//Else, update max
	
skip:
	sub r1, r1, #1		//Decrease the counter
	b loop				//Repeat
	
	
	
end:
	b end

.data
my_array: .word 4, 5, 9, 1, 0, -2, 3
array_size: .word 7