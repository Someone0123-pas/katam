	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5EA2C_1:	@ 0x08D5EA18
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x05
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x45
	.byte	0xBA
	.byte	0x33
	.byte	0xE2
	.byte	0x1D
	.byte	0x7F
	.byte	0xB0
	.byte	0xB1
	.byte	0x00
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5EA2C
se_08D5EA2C:	@ 0x08D5EA2C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5EA2C_1		@ track

	.align 2
