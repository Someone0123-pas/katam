	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D556F8_1:	@ 0x08D556B8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xC1
	.byte	0x32
	.byte	0xBA
	.byte	0x31
	.byte	0xBE
	.byte	0x39
	.byte	0xC0
	.byte	0x17
	.byte	0xE6
	.byte	0x53
	.byte	0x28
	.byte	0x81
	.byte	0xBE
	.byte	0x4F
	.byte	0xC0
	.byte	0x29
	.byte	0x81
	.byte	0xBE
	.byte	0x76
	.byte	0xC0
	.byte	0x3B
	.byte	0x81
	.byte	0xBE
	.byte	0x77
	.byte	0xC0
	.byte	0x4E
	.byte	0x81
	.byte	0xBE
	.byte	0x62
	.byte	0xC0
	.byte	0x60
	.byte	0x81
	.byte	0x72
	.byte	0x83
	.byte	0xBE
	.byte	0x4E
	.byte	0x88
	.byte	0x47
	.byte	0x81
	.byte	0x3E
	.byte	0x81
	.byte	0x36
	.byte	0x81
	.byte	0x2D
	.byte	0x81
	.byte	0x24
	.byte	0x81
	.byte	0x1B
	.byte	0x81
	.byte	0x13
	.byte	0x81
	.byte	0x0A
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D556F8
se_08D556F8:	@ 0x08D556F8
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D556F8_1		@ track

	.align 2
