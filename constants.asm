PAGE_ZERO         = $0000
PAGE_STACK        = $0100
PAGE_SHADOW_OAM   = $0200
PAGE_VRAM         = $0300

PPU_CONTROL       = $2000
PPU_MASK          = $2001
PPU_STATUS        = $2002
PPU_OAM_ADDRESS   = $2003
PPU_OAM_DATA      = $2004
PPU_SCROLL        = $2005
PPU_ADDRESS       = $2006
PPU_DATA          = $2007
PPU_OAM_DMA       = $4014

APU_DMC           = $4010
APU_FRAME_COUNTER = $4017 ; Shares address with CPU_JOYSTICK_2

CPU_JOYSTICK_1    = $4016
CPU_JOYSTICK_2    = $4017 ; Shares address with APU_FRAME_COUNTER

BUTTON_A          = 1 << 7 ; same as %10000000
BUTTON_B          = 1 << 6 ; same as %01000000
BUTTON_SELECT     = 1 << 5 ; same as %00100000
BUTTON_START      = 1 << 4 ; same as %00010000
BUTTON_UP         = 1 << 3 ; same as %00001000
BUTTON_DOWN       = 1 << 2 ; same as %00000100
BUTTON_LEFT       = 1 << 1 ; same as %00000010
BUTTON_RIGHT      = 1 << 0 ; same as %00000001
