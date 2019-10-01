; jstick.asm
; joystick tester for c64

	*=$033c

loop	lda tmp
	cmp $dc00
	beq loop

	lda $dc00
	sta tmp

	lda #%00010000
	bit $dc00
 	bne loop
	inc $d020
	jmp loop

tmp	
	.byte 0
