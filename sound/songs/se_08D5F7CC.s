	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F7CC_1:	@ 0x08D5F784
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x15
	.byte	0xBE
	.byte	0x49
	.byte	0xC2
	.byte	0x00
	.byte	0xC4
	.byte	0x0A
	.byte	0xC3
	.byte	0x00
	.byte	0xBA
	.byte	0x0F
	.byte	0xC0
	.byte	0x50
	.byte	0xD3
	.byte	0x35
	.byte	0x5C
	.byte	0x84
	.byte	0xE8
	.byte	0x30
	.byte	0x78
	.byte	0x89
	.byte	0xBE
	.byte	0x56
	.byte	0x81
	.byte	0x4B
	.byte	0x81
	.byte	0x38
	.byte	0x81
	.byte	0x30
	.byte	0x81
	.byte	0x26
	.byte	0x81
	.byte	0x1F
	.byte	0x81
	.byte	0x17
	.byte	0x81
	.byte	0x11
	.byte	0x81
	.byte	0x0B
	.byte	0x81
	.byte	0x06
	.byte	0x81
	.byte	0x0D
	.byte	0x81
	.byte	0x0B
	.byte	0x81
	.byte	0x08
	.byte	0x81
	.byte	0x06
	.byte	0x81
	.byte	0x03
	.byte	0x81
	.byte	0x1B
	.byte	0x81
	.byte	0x18
	.byte	0x81
	.byte	0x11
	.byte	0x81
	.byte	0x0F
	.byte	0x81
	.byte	0x0A
	.byte	0x81
	.byte	0x04
	.byte	0xA4
	.byte	0x83
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5F7CC
se_08D5F7CC:	@ 0x08D5F7CC
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5F7CC_1		@ track

	.align 2
