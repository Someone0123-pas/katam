	.include "MPlayDef.s"

	.section .rodata

@********************** Track  1 **********************@

se_08D5F658_1:	@ 0x08D5F5B8
	.byte	0xBC
	.byte	0x00
	.byte	0xBB
	.byte	0x4B
	.byte	0xBD
	.byte	0x5E
	.byte	0xBE
	.byte	0x46
	.byte	0xC4
	.byte	0x01
	.byte	0xC2
	.byte	0x1A
	.byte	0xBF
	.byte	0x7C
	.byte	0xFF
	.byte	0x32
	.byte	0x64
	.byte	0x83
	.byte	0xBE
	.byte	0x45
	.byte	0x83
	.byte	0x44
	.byte	0x83
	.byte	0x43
	.byte	0x86
	.byte	0x42
	.byte	0x83
	.byte	0x41
	.byte	0x83
	.byte	0x40
	.byte	0x83
	.byte	0x3F
	.byte	0x83
	.byte	0x3E
	.byte	0x83
	.byte	0x3D
	.byte	0x83
	.byte	0x3C
	.byte	0x83
	.byte	0x3B
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x39
	.byte	0x83
	.byte	0x38
	.byte	0x83
	.byte	0x37
	.byte	0x83
	.byte	0x38
	.byte	0x83
	.byte	0x39
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x3B
	.byte	0x83
	.byte	0x3C
	.byte	0x83
	.byte	0x3D
	.byte	0x83
	.byte	0x3E
	.byte	0x83
	.byte	0x3F
	.byte	0x83
	.byte	0x40
	.byte	0x83
	.byte	0x41
	.byte	0x83
	.byte	0x42
	.byte	0x83
	.byte	0x43
	.byte	0x86
	.byte	0x44
	.byte	0x83
	.byte	0x45
	.byte	0x83
	.byte	0xB1


@********************** Track  2 **********************@

se_08D5F658_2:	@ 0x08D5F606
	.byte	0xBC
	.byte	0x00
	.byte	0xBD
	.byte	0x2E
	.byte	0xBE
	.byte	0x54
	.byte	0xC4
	.byte	0x05
	.byte	0xC2
	.byte	0x11
	.byte	0xBF
	.byte	0x22
	.byte	0xFF
	.byte	0x32
	.byte	0x50
	.byte	0x83
	.byte	0xBE
	.byte	0x49
	.byte	0x83
	.byte	0x3D
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x43
	.byte	0x83
	.byte	0x54
	.byte	0x83
	.byte	0x48
	.byte	0x83
	.byte	0x3E
	.byte	0x83
	.byte	0x39
	.byte	0x83
	.byte	0x56
	.byte	0x83
	.byte	0x4C
	.byte	0x83
	.byte	0x46
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x43
	.byte	0x83
	.byte	0x54
	.byte	0x83
	.byte	0x45
	.byte	0x83
	.byte	0x3B
	.byte	0x83
	.byte	0x44
	.byte	0x83
	.byte	0x55
	.byte	0x83
	.byte	0x44
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x44
	.byte	0x83
	.byte	0x55
	.byte	0x83
	.byte	0x45
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x45
	.byte	0x83
	.byte	0x55
	.byte	0x83
	.byte	0x44
	.byte	0x83
	.byte	0x3A
	.byte	0x83
	.byte	0x45
	.byte	0x83
	.byte	0x56
	.byte	0x83
	.byte	0x35
	.byte	0x83
	.byte	0xB1
	.byte	0x00
	.byte	0x00

@******************************************************@

	.global se_08D5F658
se_08D5F658:	@ 0x08D5F658
	.byte	2		@ trackCount
	.byte	0		@ blockCount
	.byte	128		@ priority
	.byte	128		@ reverb

	.word	voicegroup003		@ voicegroup/tone

	.word	se_08D5F658_1		@ track
	.word	se_08D5F658_2		@ track

	.align 2
