step:
	maintainFps:
		lda drawOccured
		beq step

		ldx #$00
		stx drawOccured

	jsr readControllerData

	clc
	jsr rightPressed
	jsr leftPressed
	jsr upPressed
	jsr downPressed

	jsr updatePlayer

	jmp step

rightPressed:
	lda buttonsPlayer1
	and #BUTTON_RIGHT
	beq	+
	jsr movePlayerRight
	+:
		rts

leftPressed:
	lda buttonsPlayer1
	and #BUTTON_LEFT
	beq	+
	jsr movePlayerLeft
	+:
		rts

upPressed:
	lda buttonsPlayer1
	and #BUTTON_UP
	beq	+
	jsr movePlayerUp
	+:
		rts

downPressed:
	lda buttonsPlayer1
	and #BUTTON_DOWN
	beq	+
	jsr movePlayerDown
	+:
		rts
