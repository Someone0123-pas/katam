	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5E65C_1:	@ 0x08D5E628
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x44
	.byte	0xBE
	.byte	0x5C
	.byte	0xBF
	.byte	0x40
	.byte	0xD2
	.byte	0x38
	.byte	0x7F
	.byte	0x83
	.byte	0xD0
	.byte	0x3A
	.byte	0x7C
	.byte	0x81
	.byte	0x48
	.byte	0x78
	.byte	0x82
	.byte	0xBE
	.byte	0x5A
	.byte	0xE2
	.byte	0x55
	.byte	0x74
	.byte	0x81
	.byte	0xBE
	.byte	0x54
	.byte	0x82
	.byte	0x4D
	.byte	0x81
	.byte	0x47
	.byte	0x82
	.byte	0x41
	.byte	0x81
	.byte	0x3B
	.byte	0x82
	.byte	0x35
	.byte	0x81
	.byte	0x2F
	.byte	0x82
	.byte	0x29
	.byte	0x81
	.byte	0x23
	.byte	0x82
	.byte	0x1D
	.byte	0x81
	.byte	0x17
	.byte	0x88
	.byte	0xB1
	.byte	0x00

@******************************************************@

	.global se_08D5E65C
se_08D5E65C:	@ 0x08D5E65C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup007		@ voicegroup/tone

	.word	se_08D5E65C_1		@ track

	.align 2
