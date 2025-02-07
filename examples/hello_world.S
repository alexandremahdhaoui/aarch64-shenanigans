// https://github.com/pkivolowitz/asm_book/blob/main/section_1/kickstart.md
.global main

main:
	STP x21, x30, [sp, -16]!
	MOV x21, x1

loop:
	LDR x0, [x21], 8
	CBZ x0, done
	BL  puts
	B   loop

done:
	LDP x21, x30, [sp], 16
	MOV x0, xzr
	RET

.end
