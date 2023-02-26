readControllerData:
	ldx #$02            ; spritedata located at $0200-$02FF
	stx PPU_OAM_DMA     ; next cycle will be an even cycle
	dex                 ; 2 cycles: even odd
	stx CPU_JOYSTICK_1  ; 4 cycles: even odd even odd
	dex                 ; 2 cycles: even odd
	stx CPU_JOYSTICK_1  ; 4 cycles: even odd even odd
	
	ldy #$08 ;8 buttons ; 2 cycles: even odd
	lda $00             ; 3 cycles: even odd even (Only for aligning cycles, A will be overwritten next with CPU_JOYSTICK_1)
	-:
		lda CPU_JOYSTICK_1    ; 4 cycles: odd even odd *even* ;success!
		lsr A                 ; 2 cycles: odd even
		; X is still 0 here. `, X` only for that one extra cycle
		rol buttonsPlayer1, X ; 6 cycles: odd even odd even odd even
		lda CPU_JOYSTICK_2    ; 4 cycles: odd even odd *even* ; succes!
		lsr A                 ; 2 cycles: odd even
		rol buttonsPlayer2    ; 5 cycles: odd even odd even odd
		dey                   ; 2 cycles: even odd
		bne -                 ; 3 cycles: even odd even
	rts
