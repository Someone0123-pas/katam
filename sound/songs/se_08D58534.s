	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D58534_1:	@ 0x08D58504
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x0D
	.byte	0xBF
	.byte	0x40
	.byte	0xBE
	.byte	0x5A
	.byte	0xC1
	.byte	0x14
	.byte	0xC0
	.byte	0x04
	.byte	0xD4
	.byte	0x47
	.byte	0x38
	.byte	0x81
	.byte	0xC0
	.byte	0x1B
	.byte	0x81
	.byte	0x36
	.byte	0x81
	.byte	0x50
	.byte	0x81
	.byte	0x77
	.byte	0x82
	.byte	0x04
	.byte	0xD4
	.byte	0x47
	.byte	0x08
	.byte	0x81
	.byte	0xBA
	.byte	0x28
	.byte	0xC0
	.byte	0x1B
	.byte	0x81
	.byte	0x36
	.byte	0x81
	.byte	0x50
	.byte	0x81
	.byte	0x6B
	.byte	0x81
	.byte	0x7D
	.byte	0x81
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D58534
se_08D58534:	@ 0x08D58534
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D58534_1		@ track

	.align 2
