# Programming Assignment 1- CO 513
This repository contains codes and video demonstrations of fundamental ARM Assembly concepts, including arithmetic operations, control flow, memory access, and bit manipulation by using CPUlator ARMv7 DE1-SoC (https://cpulator.01xz.net/?sys=arm-de1soc).


| Programming Assignment | Video |
|------------------------|-------|
| Problem 1: Factorial Calculation | (https://youtu.be/_BDSWZ2rjVg) |
| Problem 2: Eucledean Algorithm for GCD | *to be uploaded by Oct 15, 2025* |
| Problem 3: Bitwise Parity Checker | *to be uploaded by Oct 15, 2025* |
| Problem 4: Swap Nibbles in a Byte | (https://youtu.be/PrfRozz8Ark?si=sgWWUU_kUGPVVuYL)|
| Problem 5: Find the Maximum Value in an Array | (https://youtu.be/mA5HCfa3v9A?si=EgvoIS2iYlGpMkYC)|


Insights in programming ARM Assembly -
"Overall, it is essential to develop a strong understanding of how registers function, including their roles and what they represent based on the code being executed. Moreover, familiarity with the appropriate instructions for addressing, memory storage, bit manipulation, arithmetic operations, and related tasks is crucial for writing efficient and effective ARM assembly code."

Challenges in ARM Assembly: Euclidean Algorithm and the UDIV Instruction-
"One of the primary challenges encountered when implementing the Euclidean algorithm for computing the Greatest Common Divisor (GCD) in ARM assembly is the use of the UDIV instruction, which performs unsigned integer division. A significant difficulty arises from the fact that not all ARMv7 processors support hardware division instructions such as UDIV and SDIV. As a workaround for the absence of hardware division support, the modulo operation required by the Euclidean algorithm can be manually implemented by first performing an integer division through repeated subtraction or emulation, and then using the result in combination with multiply (MUL) and subtract (SUB) instructions to compute the remainder (i.e., a % b = a - (a / b) * b)."
