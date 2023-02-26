draw:
	saveToStack:
		php
		pha ; move A, X and Y to stack
		txa
		pha
		tya
		pha

	setShadowOAM:
		; Don't use OAM_DATA directly
		lda #$00
		sta PPU_OAM_ADDRESS

		; Use OAM_DMA, which takes care of reading PPU_OAM_DATA for us
		lda #$02
		sta PPU_OAM_DMA

	resetScroll:
		lda #$00
		sta PPU_SCROLL ; Scroll X
		sta PPU_SCROLL ; Scroll Y

	lda #$01
	sta drawOccured

	restoreFromStack:
		pla ; restore A, X and Y from the stack
		tay
		pla
		tax
		pla
		plp

	rti
