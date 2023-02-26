.include header.asm
.include constants.asm
.include variables.asm

.base $8000

.include init.asm
.include step.asm
.include draw.asm

.include controller.asm
.include palettes.asm
.include player.asm

.org $FFFA
.dw draw  ; every v-blank.
.dw init  ; when the NES gets started.
.dw $0000 ; here you would put the InteruptRequest-handler. We will not use it.

.incbin images.chr
