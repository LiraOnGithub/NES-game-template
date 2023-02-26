loadPalettes:
	initPalettes:
		lda #$3F
		sta PPU_ADDRESS
		ldx #$00
		stx PPU_ADDRESS
	-:
		lda palettes, X
		sta PPU_DATA

		inx
		cpx #$20
		bne -
	rts

palettes:
	.db $31, $21, $11, $01
	.db $1F, $1F, $1F, $1F
	.db $1F, $1F, $1F, $1F
	.db $1F, $1F, $1F, $1F

	.db $1F, $0B, $2A, $30
	.db $1F, $1F, $1F, $1F
	.db $1F, $1F, $1F, $1F
	.db $1F, $1F, $1F, $1F
