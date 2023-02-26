initPlayer:
	lda #$80
	sta playerX
	sta playerY
	lda #$04
	sta playerSpeed

	setPlayerSpriteData:
		setPlayerSpriteIndex:
			ldx #$00
			stx PAGE_SHADOW_OAM+1
			stx PAGE_SHADOW_OAM+5
		setPlayerSpriteMetaData:
			ldx #%00000000
			stx PAGE_SHADOW_OAM+2
			ldx #%01000000
			stx PAGE_SHADOW_OAM+6

	rts

updatePlayer:
	setPlayerYPosition:
		lda playerY
		sta PAGE_SHADOW_OAM+0
		sta PAGE_SHADOW_OAM+4
	setPlayerXPosition:
		lda playerX
		sta PAGE_SHADOW_OAM+3
		adc #$08
		clc
		sta PAGE_SHADOW_OAM+7
	rts

movePlayerRight:
	lda playerX
	adc playerSpeed
	clc
	sta playerX
	rts

movePlayerLeft:
	lda playerX
	sbc playerSpeed
	clc
	sta playerX
	rts

movePlayerUp:
	lda playerY
	sbc playerSpeed
	clc
	sta playerY
	rts

movePlayerDown:
	lda playerY
	adc playerSpeed
	clc
	sta playerY
	rts
