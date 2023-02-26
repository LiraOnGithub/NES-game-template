init:
	cld
	sei

	initStack:
		ldx #$FF
		txs

	disablePPU:
		ldx #$00 ; Can be changed to inx, last value was $FF. But less readable
		stx PPU_CONTROL
		stx PPU_MASK

	initZeroAndStack:
		lda #$00
		-:
			sta PAGE_ZERO, x
			sta PAGE_STACK, x ; Not needed, but might make debugging easier
			inx
			bne -

	initShadowOAM:
		lda #$FF
		-:
			sta PAGE_SHADOW_OAM, x
			inx
			bne -

	waitVBlank:
	-:
		bit PPU_STATUS
		bpl -

	lda PPU_STATUS ; reset PPU_SCROLL and PPU_ADDRESS

	jsr loadPalettes

	jsr initPlayer

	enableNMI:
		lda #%10110000
		sta PPU_CONTROL

	enableSprites:
		lda #%00011110
		sta PPU_MASK

	executeFirstStep:
		jmp step
