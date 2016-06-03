	lda #$02
	sta $01
	lda #$01
	ldy #$00
loop:
	lda $fe
	sta ($00),y
	iny
	cpy #$00
	beq nextpage
	jmp loop
nextpage:
	inc $01
	ldx $01
	cpx #$06
	bpl done
	jmp loop
done:
	lda #$02
	sta $01
	jmp loop
