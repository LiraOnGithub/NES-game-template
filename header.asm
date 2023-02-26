.db "NES", $1A ; identification of the iNES header
.db $02        ; number of 16KB PRG-ROM pages
.db $01        ; number of 8KB CHR-ROM pages
.db $00        ; no mapper
.db $00        ; horizontal mirroring
.dsb 8, $00    ; set remaining bytes to zero
