	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58CA4_1:	@ 0x08D58C74
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x1B
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x46
	.byte	0xC1
	.byte	0x03
	.byte	0xC0
	.byte	0x64
	.byte	0xD0
	.byte	0x4D
	.byte	0x54
	.byte	0x81
	.byte	0x44
	.byte	0x4C
	.byte	0x82
	.byte	0x3E
	.byte	0x44
	.byte	0x81
	.byte	0x4B
	.byte	0x3C
	.byte	0x82
	.byte	0x42
	.byte	0x34
	.byte	0x81
	.byte	0x3C
	.byte	0x2C
	.byte	0x82
	.byte	0x4A
	.byte	0x24
	.byte	0x81
	.byte	0x41
	.byte	0x1C
	.byte	0x82
	.byte	0x3B
	.byte	0x14
	.byte	0x81
	.byte	0x37
	.byte	0x0C
	.byte	0x85
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D58CA4
se_08D58CA4:	@ 0x08D58CA4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D58CA4_1		@ track

	.align 2
