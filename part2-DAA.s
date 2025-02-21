.data 
.global badger
badger:
	.word 7

.global eagle
eagle:
	.word 0

.global coyote
coyote:
	.word 0
	.word 2
	.word 4
	.word 6
	.word 8
	.word 10

.global fox
.comm fox, 200, 4

.section .rodata
.global hello
hello:
	.asciz "Hello, world!\n"

//Instruction segment
.text
.global main
main:

	mov x8, 222
	mov x0, 0
	mov x1, 24
	mov x2, 7
	mov x3, 0x22
	mov x4, 0
	mov x5, 0
	svc 0

	mov x9, x0

	ldr x0, =coyote
	ldr w2, [x0]
	str w2, [x9]

	ldr w2, [x0, #4]
	str w2, [x9, #4]

	ldr w2, [x0, #8]
	str w2, [x9, #8]

	ldr w2, [x0, #12]
	str w2, [x9, #12]

	ldr w2, [x0, #16]
	str w2, [x9, #16]

	ldr w2, [x0, #20]
	str w2, [x9, #20]

	ldr w2, [x0, #24]
	str w2, [x9, #24]

	mov x8, 215
	mov x0, x9
	mov x1, 24
	svc 0

	mov x0, 0
	ret

