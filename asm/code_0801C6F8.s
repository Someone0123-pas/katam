	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C6F8
sub_0801C6F8: @ 0x0801C6F8
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0801C73C @ =sub_0801C79C
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _0801C740 @ =nullsub_107
	str r3, [sp]
	movs r3, #4
	bl TaskCreate
	adds r4, r0, #0
	ldr r1, _0801C744 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C748
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0801C750
	.align 2, 0
_0801C73C: .4byte sub_0801C79C
_0801C740: .4byte nullsub_107
_0801C744: .4byte 0x00007FFF
_0801C748:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0801C750:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801C794 @ =sub_0801D530
	str r0, [r1]
	movs r3, #0x83
	lsls r3, r3, #2
	adds r1, r2, r3
	movs r0, #0x80
	lsls r0, r0, #0x16
	str r0, [r1]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	adds r3, #8
	adds r1, r2, r3
	ldr r0, _0801C798 @ =0xFFFFE000
	str r0, [r1]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r2, r1
	movs r1, #0
	strh r5, [r0]
	adds r3, #6
	adds r0, r2, r3
	strh r1, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801C794: .4byte sub_0801D530
_0801C798: .4byte 0xFFFFE000

	thumb_func_start sub_0801C79C
sub_0801C79C: @ 0x0801C79C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801C7B8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C7BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801C7C4
	.align 2, 0
_0801C7B8: .4byte gCurTask
_0801C7BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801C7C4:
	adds r6, r0, #0
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C7F0
	adds r4, r6, #0
	adds r4, #0x40
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801C7F0
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801C7F0:
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	subs r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0801C884
	adds r1, #0x1a
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C87A
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r4, r6, r0
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0801C822
	movs r0, #0x80
_0801C822:
	strh r0, [r4, #0x14]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r3, r6, r1
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r6, r0
	adds r0, #0x78
	ldr r2, _0801C8D4 @ =gUnk_082DE610
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r0]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r6, r1
	adds r1, #0x7a
	lsls r0, r0, #1
	adds r2, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801C87A
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801C87A:
	ldr r0, _0801C8D8 @ =0x0000021A
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801C884:
	movs r5, #0
	movs r1, #0x83
	lsls r1, r1, #2
	adds r7, r6, r1
_0801C88C:
	movs r1, #1
	lsls r1, r5
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0801C8B6
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x68
	adds r4, r6, r0
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801C8B6
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801C8B6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _0801C88C
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C8D4: .4byte gUnk_082DE610
_0801C8D8: .4byte 0x0000021A

	thumb_func_start sub_0801C8DC
sub_0801C8DC: @ 0x0801C8DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0801C964 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0801C968 @ =gBgScrollRegs
	movs r3, #0
	movs r1, #0
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	ldr r2, _0801C96C @ =gBgCntRegs
	ldr r0, _0801C970 @ =0x00001E0A
	strh r0, [r2]
	ldr r0, _0801C974 @ =0x06008000
	str r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r0, _0801C978 @ =0x0600F000
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _0801C97C @ =0x00000306
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	strh r1, [r4, #0x20]
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	movs r0, #0x1b
	strh r0, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	ldr r0, _0801C980 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0801C984 @ =gUnk_082D7850
	ldr r1, _0801C988 @ =0x00000C18
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r4, r3
	ldr r0, _0801C98C @ =sub_0801C990
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801C964: .4byte gDispCnt
_0801C968: .4byte gBgScrollRegs
_0801C96C: .4byte gBgCntRegs
_0801C970: .4byte 0x00001E0A
_0801C974: .4byte 0x06008000
_0801C978: .4byte 0x0600F000
_0801C97C: .4byte 0x00000306
_0801C980: .4byte 0x00007FFF
_0801C984: .4byte gUnk_082D7850
_0801C988: .4byte 0x00000C18
_0801C98C: .4byte sub_0801C990

	thumb_func_start sub_0801C990
sub_0801C990: @ 0x0801C990
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r2, _0801CA0C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0801CA10 @ =gBackgrounds
	ldr r0, _0801CA14 @ =gRoomProps
	ldr r2, _0801CA18 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r1, _0801CA1C @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r1, _0801CA20 @ =gBgCntRegs
	ldr r0, _0801CA24 @ =0x00001F03
	strh r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0801CA28 @ =0x0600F800
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0801C9DA:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0801C9DA
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, r8
	ldr r0, _0801CA2C @ =sub_0801CA30
	str r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CA0C: .4byte gDispCnt
_0801CA10: .4byte gBackgrounds
_0801CA14: .4byte gRoomProps
_0801CA18: .4byte 0x00007D46
_0801CA1C: .4byte gBgScrollRegs
_0801CA20: .4byte gBgCntRegs
_0801CA24: .4byte 0x00001F03
_0801CA28: .4byte 0x0600F800
_0801CA2C: .4byte sub_0801CA30

	thumb_func_start sub_0801CA30
sub_0801CA30: @ 0x0801CA30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _0801CAD0 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r5, _0801CAD4 @ =0x06012000
	mov r8, r5
	adds r0, r6, #0
	adds r0, #0x40
	str r5, [r6, #0x40]
	movs r3, #0
	movs r2, #0
	movs r4, #0x80
	lsls r4, r4, #1
	strh r4, [r0, #0x14]
	ldr r1, _0801CAD8 @ =0x000002D3
	strh r1, [r0, #0xc]
	strb r3, [r0, #0x1a]
	strh r2, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x83
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	orrs r0, r4
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #3
	add r8, r0
	movs r5, #0
	mov r7, sp
	ldr r1, _0801CADC @ =gUnk_082DE620
	mov sl, r1
_0801CA9E:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x68
	adds r2, r6, r0
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r0, [r0]
	cmp r5, r0
	bne _0801CAE0
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7]
	subs r3, #4
	adds r0, r6, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	strh r0, [r7, #2]
	movs r0, #0x40
	b _0801CAEA
	.align 2, 0
_0801CAD0: .4byte gDispCnt
_0801CAD4: .4byte 0x06012000
_0801CAD8: .4byte 0x000002D3
_0801CADC: .4byte gUnk_082DE620
_0801CAE0:
	movs r0, #0x78
	strh r0, [r7]
	movs r0, #0x50
	strh r0, [r7, #2]
	movs r0, #0xc0
_0801CAEA:
	mov r1, r8
	str r1, [r2]
	strh r0, [r2, #0x14]
	lsls r4, r5, #1
	adds r1, r4, r5
	lsls r1, r1, #1
	mov r3, sl
	adds r0, r1, r3
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldr r0, _0801CC20 @ =gUnk_082DE622
	adds r1, r1, r0
	ldrh r0, [r1]
	strb r0, [r2, #0x1a]
	movs r1, #0
	strh r1, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	movs r3, #1
	mov sb, r3
	mov r0, sb
	strb r0, [r2, #0x1f]
	ldrh r0, [r7]
	strh r0, [r2, #0x10]
	ldrh r0, [r7, #2]
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019DA8
	cmp r0, #0
	bne _0801CB46
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r5, r0
	bne _0801CB56
_0801CB46:
	movs r3, #0x83
	lsls r3, r3, #2
	adds r2, r6, r3
	mov r1, sb
	lsls r1, r5
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_0801CB56:
	adds r0, r4, r5
	lsls r0, r0, #1
	ldr r1, _0801CC24 @ =gUnk_082DE624
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #5
	add r8, r0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _0801CA9E
	movs r3, #0xd4
	lsls r3, r3, #1
	adds r0, r6, r3
	mov r5, r8
	str r5, [r0]
	movs r2, #0
	movs r3, #0
	movs r1, #0x80
	strh r1, [r0, #0x14]
	ldr r1, _0801CC28 @ =0x000002B3
	strh r1, [r0, #0xc]
	strb r2, [r0, #0x1a]
	strh r3, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	lsls r1, r1, #0xb
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2]
	add r8, r1
	subs r1, #0x30
	adds r0, r6, r1
	mov r3, r8
	str r3, [r0]
	movs r5, #0x90
	lsls r5, r5, #3
	add r8, r5
	movs r1, #0
	movs r0, #0xea
	lsls r0, r0, #1
	adds r2, r6, r0
_0801CBCE:
	lsls r0, r1, #2
	adds r0, r2, r0
	mov r3, r8
	str r3, [r0]
	movs r5, #0x20
	add r8, r5
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _0801CBCE
	movs r1, #0
	ldr r4, _0801CC2C @ =sub_0801D54C
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r2, r6, r0
	movs r3, #0x80
	lsls r3, r3, #2
_0801CBF2:
	lsls r0, r1, #2
	adds r0, r2, r0
	mov r5, r8
	str r5, [r0]
	add r8, r3
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0801CBF2
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	str r4, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC20: .4byte gUnk_082DE622
_0801CC24: .4byte gUnk_082DE624
_0801CC28: .4byte 0x000002B3
_0801CC2C: .4byte sub_0801D54C

	thumb_func_start sub_0801CC30
sub_0801CC30: @ 0x0801CC30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	ldr r0, _0801CD74 @ =gUnk_082D7850
	ldr r1, _0801CD78 @ =0x00000C18
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0801CD7C @ =gBackgrounds
	ldr r0, _0801CD80 @ =gRoomProps
	ldr r3, _0801CD84 @ =0x00007D46
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r3, #0
	mov sb, r3
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801CD88 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	mov r8, r0
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801CD8C @ =0x000002D3
	strh r0, [r1, #0xc]
	mov r0, sp
	mov r1, sb
	strb r1, [r0, #0x1a]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	mov r2, sb
	strb r2, [r0, #0x1f]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [sp, #8]
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r3, r8
	str r3, [sp]
	mov r1, sp
	ldr r2, _0801CD90 @ =gUnk_082DE620
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrh r0, [r2, #2]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	strb r5, [r0, #0x1c]
	movs r7, #1
	strb r7, [r0, #0x1f]
	str r6, [sp, #8]
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	mov r0, r8
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801CD94 @ =0x000002B3
	strh r0, [r1, #0xc]
	mov r0, sp
	mov r1, sb
	strb r1, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	strb r5, [r0, #0x1c]
	movs r0, #2
	strb r0, [r1, #0x1f]
	str r6, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add r0, sp, #0x28
	ldr r2, _0801CD98 @ =0x00007FFF
	adds r1, r2, #0
	strh r1, [r0]
	ldr r4, _0801CD9C @ =gBgPalette
	ldr r2, _0801CDA0 @ =0x01000001
	adds r1, r4, #0
	bl CpuSet
	ldr r3, _0801CDA4 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0801CDA8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_08158334
	b _0801CDB8
	.align 2, 0
_0801CD74: .4byte gUnk_082D7850
_0801CD78: .4byte 0x00000C18
_0801CD7C: .4byte gBackgrounds
_0801CD80: .4byte gRoomProps
_0801CD84: .4byte 0x00007D46
_0801CD88: .4byte 0x0000FFFF
_0801CD8C: .4byte 0x000002D3
_0801CD90: .4byte gUnk_082DE620
_0801CD94: .4byte 0x000002B3
_0801CD98: .4byte 0x00007FFF
_0801CD9C: .4byte gBgPalette
_0801CDA0: .4byte 0x01000001
_0801CDA4: .4byte gUnk_03002440
_0801CDA8:
	ldr r0, _0801CDDC @ =0x040000D4
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, _0801CDE0 @ =0x80000001
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	orrs r2, r7
	str r2, [r3]
_0801CDB8:
	movs r1, #0x87
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0
	strh r0, [r1]
	movs r1, #0x82
	lsls r1, r1, #2
	add r1, sl
	ldr r0, _0801CDE4 @ =sub_0801D6A4
	str r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CDDC: .4byte 0x040000D4
_0801CDE0: .4byte 0x80000001
_0801CDE4: .4byte sub_0801D6A4

	thumb_func_start sub_0801CDE8
sub_0801CDE8: @ 0x0801CDE8
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #7
	subs r0, r0, r1
	lsls r0, r0, #0xc
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bgt _0801CE08
	movs r1, #0x20
	b _0801CE12
_0801CE08:
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _0801CE12
	adds r1, r2, #0
_0801CE12:
	movs r5, #0x85
	lsls r5, r5, #2
	adds r4, r3, r5
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r4]
	ldr r0, _0801CE6C @ =0x00004FFF
	cmp r1, r0
	ble _0801CE36
	adds r0, #1
	str r0, [r4]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801CE70 @ =sub_0801D568
	str r0, [r1]
_0801CE36:
	movs r1, #0x86
	lsls r1, r1, #2
	adds r2, r3, r1
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	movs r5, #0x84
	lsls r5, r5, #2
	adds r1, r3, r5
	ldr r1, [r1]
	asrs r1, r1, #8
	adds r0, #0x78
	strh r1, [r0]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldr r1, [r4]
	asrs r1, r1, #8
	adds r0, #0x7a
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CE6C: .4byte 0x00004FFF
_0801CE70: .4byte sub_0801D568

	thumb_func_start sub_0801CE74
sub_0801CE74: @ 0x0801CE74
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CE90
	ldr r0, _0801CE8C @ =0x00000213
	bl m4aSongNumStart
	b _0801CE96
	.align 2, 0
_0801CE8C: .4byte 0x00000213
_0801CE90:
	ldr r0, _0801CEF4 @ =0x00000212
	bl m4aSongNumStart
_0801CE96:
	movs r0, #7
	bl sub_0803CA20
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	movs r6, #0
	movs r7, #0
	orrs r0, r1
	strh r0, [r4, #8]
	strh r7, [r4, #6]
	movs r0, #6
	strh r0, [r4, #4]
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CEC8
	ldrh r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #4]
_0801CEC8:
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _0801CEF8 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r7, [r0]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, _0801CEFC @ =sub_0801D70C
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CEF4: .4byte 0x00000212
_0801CEF8: .4byte 0xFFFFFDFF
_0801CEFC: .4byte sub_0801D70C

	thumb_func_start sub_0801CF00
sub_0801CF00: @ 0x0801CF00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CF52
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _0801CF6C @ =0xFFFFFF00
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	adds r1, r4, #0
	adds r1, #0x4c
	ldr r0, _0801CF70 @ =0x000002D3
	strh r0, [r1]
	adds r1, #0xe
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r4, #0x48]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x40
	bl sub_08155128
	ldr r0, [r4, #0x48]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0x48]
_0801CF52:
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0801CF74 @ =sub_0801D748
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801CF6C: .4byte 0xFFFFFF00
_0801CF70: .4byte 0x000002D3
_0801CF74: .4byte sub_0801D748

	thumb_func_start sub_0801CF78
sub_0801CF78: @ 0x0801CF78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	movs r0, #7
	bl sub_0803C95C
	adds r4, r0, #0
	ldrh r1, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r2, #0
	movs r6, #0
	movs r5, #0
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r4, #0xa]
	strh r5, [r4, #6]
	movs r0, #6
	strh r0, [r4, #4]
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801CFB8
	ldrh r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #4]
_0801CFB8:
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801D00C
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801D008 @ =0x000002D3
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r6, [r0, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	b _0801D04C
	.align 2, 0
_0801D008: .4byte 0x000002D3
_0801D00C:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r0, _0801D078 @ =0x000002D3
	strh r0, [r1, #0xc]
	mov r0, sp
	strb r6, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r6, [r0, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_0801D04C:
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, _0801D07C @ =sub_0801D774
	str r0, [r1]
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D078: .4byte 0x000002D3
_0801D07C: .4byte sub_0801D774

	thumb_func_start sub_0801D080
sub_0801D080: @ 0x0801D080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801D140
	movs r1, #0xea
	lsls r1, r1, #2
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r3, [r0]
	movs r7, #0x84
	lsls r7, r7, #2
	adds r0, r5, r7
	ldr r0, [r0]
	str r0, [sp]
	adds r2, #0x44
	adds r0, r5, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0801D398
	movs r6, #0
	adds r7, r7, r5
	mov sb, r7
	ldr r0, _0801D13C @ =gUnk_082DE670
	adds r0, #2
	mov sl, r0
	movs r1, #0x85
	lsls r1, r1, #2
	adds r1, r1, r5
	mov r8, r1
_0801D0DE:
	lsls r2, r6, #2
	movs r7, #0xea
	lsls r7, r7, #1
	adds r0, r5, r7
	adds r0, r0, r2
	ldr r3, [r0]
	ldr r0, _0801D13C @ =gUnk_082DE670
	adds r4, r2, r0
	movs r7, #0
	ldrsh r1, [r4, r7]
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [sp]
	add r2, sl
	movs r0, #0
	ldrsh r1, [r2, r0]
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	str r0, [sp, #8]
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x15
	str r0, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #0xea
	lsls r1, r1, #2
	movs r2, #1
	bl sub_0801D220
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bls _0801D0DE
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
	b _0801D148
	.align 2, 0
_0801D13C: .4byte gUnk_082DE670
_0801D140:
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, _0801D164 @ =0x00002710
_0801D148:
	strh r0, [r1]
	movs r7, #0x82
	lsls r7, r7, #2
	adds r1, r5, r7
	ldr r0, _0801D168 @ =sub_0801D7B0
	str r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D164: .4byte 0x00002710
_0801D168: .4byte sub_0801D7B0

	thumb_func_start sub_0801D16C
sub_0801D16C: @ 0x0801D16C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	ldrh r2, [r0]
	movs r1, #0xf
	mov ip, r1
	mov r3, ip
	ands r3, r2
	mov ip, r3
	cmp r3, #0
	bne _0801D1EA
	lsrs r2, r2, #4
	movs r0, #7
	adds r4, r2, #0
	ands r4, r0
	ldr r1, _0801D214 @ =0x000003A2
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #2
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r0, r0, r2
	ldr r3, [r0]
	movs r6, #0x84
	lsls r6, r6, #2
	adds r6, r6, r7
	mov sb, r6
	ldr r2, _0801D218 @ =gUnk_082DE650
	lsls r4, r4, #2
	adds r0, r4, r2
	movs r6, #0
	ldrsh r5, [r0, r6]
	mov r6, sb
	ldr r0, [r6]
	adds r0, r0, r5
	str r0, [sp]
	movs r5, #0x85
	lsls r5, r5, #2
	adds r0, r7, r5
	adds r2, #2
	adds r4, r4, r2
	movs r6, #0
	ldrsh r2, [r4, r6]
	ldr r0, [r0]
	adds r0, r0, r2
	str r0, [sp, #4]
	mov r0, ip
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801D398
_0801D1EA:
	mov r1, r8
	ldrh r0, [r1]
	adds r1, r0, #1
	mov r2, r8
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x78
	bls _0801D206
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, _0801D21C @ =sub_0801D584
	str r0, [r1]
_0801D206:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D214: .4byte 0x000003A2
_0801D218: .4byte gUnk_082DE650
_0801D21C: .4byte sub_0801D584

	thumb_func_start sub_0801D220
sub_0801D220: @ 0x0801D220
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0801D278 @ =sub_0801D2E0
	ldr r2, _0801D27C @ =0x00001001
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D280
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801D288
	.align 2, 0
_0801D278: .4byte sub_0801D2E0
_0801D27C: .4byte 0x00001001
_0801D280:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801D288:
	mov r0, sl
	str r0, [r4, #0x28]
	ldr r2, [sp, #0x28]
	str r2, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r2, [sp, #4]
	str r2, [r4]
	strh r1, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r2, [sp, #0x28]
	asrs r0, r2, #8
	strh r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #8
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D2E0
sub_0801D2E0: @ 0x0801D2E0
	push {r4, r5, lr}
	ldr r0, _0801D2FC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D300
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D308
	.align 2, 0
_0801D2FC: .4byte gCurTask
_0801D300:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801D308:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801D326
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801D326:
	adds r0, r4, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0801D350
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801D382
_0801D350:
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801D382
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801D382
	cmp r1, #0xe0
	bgt _0801D382
	ldr r0, [r4, #0x28]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0801D38A
_0801D382:
	ldr r0, _0801D390 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D394 @ =sub_0801D5F0
	str r0, [r1, #8]
_0801D38A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D390: .4byte gCurTask
_0801D394: .4byte sub_0801D5F0

	thumb_func_start sub_0801D398
sub_0801D398: @ 0x0801D398
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0801D3F0 @ =sub_0801D458
	ldr r2, _0801D3F4 @ =0x00001001
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D3F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0801D400
	.align 2, 0
_0801D3F0: .4byte sub_0801D458
_0801D3F4: .4byte 0x00001001
_0801D3F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0801D400:
	mov r0, sl
	str r0, [r4, #0x28]
	ldr r2, [sp, #0x28]
	str r2, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r2, [sp, #4]
	str r2, [r4]
	strh r1, [r4, #0x14]
	mov r0, sb
	strh r0, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xf
	strb r0, [r4, #0x1f]
	ldr r2, [sp, #0x28]
	asrs r0, r2, #8
	strh r0, [r4, #0x10]
	ldr r2, [sp, #0x2c]
	asrs r0, r2, #8
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D458
sub_0801D458: @ 0x0801D458
	push {r4, r5, lr}
	ldr r0, _0801D474 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801D478
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0801D480
	.align 2, 0
_0801D474: .4byte gCurTask
_0801D478:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0801D480:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801D4C0
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0801D4BC
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801D4BC
	ldr r0, _0801D4B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D4B8 @ =sub_0801D604
	str r0, [r1, #8]
	b _0801D4C0
	.align 2, 0
_0801D4B4: .4byte gCurTask
_0801D4B8: .4byte sub_0801D604
_0801D4BC:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0801D4C0:
	adds r0, r5, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0801D4F8
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0801D4F8
	cmp r1, #0xe0
	ble _0801D500
_0801D4F8:
	ldr r0, _0801D524 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D528 @ =sub_0801D604
	str r0, [r1, #8]
_0801D500:
	ldr r0, [r4, #0x28]
	movs r1, #0x83
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0801D51C
	ldr r0, _0801D524 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0801D528 @ =sub_0801D604
	str r0, [r1, #8]
_0801D51C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D524: .4byte gCurTask
_0801D528: .4byte sub_0801D604

	thumb_func_start nullsub_107
nullsub_107: @ 0x0801D52C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D530
sub_0801D530: @ 0x0801D530
	ldr r2, _0801D544 @ =gDispCnt
	movs r1, #0x40
	strh r1, [r2]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, _0801D548 @ =sub_0801C8DC
	str r1, [r0]
	bx lr
	.align 2, 0
_0801D544: .4byte gDispCnt
_0801D548: .4byte sub_0801C8DC

	thumb_func_start sub_0801D54C
sub_0801D54C: @ 0x0801D54C
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D564 @ =sub_0801D678
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D564: .4byte sub_0801D678

	thumb_func_start sub_0801D568
sub_0801D568: @ 0x0801D568
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D580 @ =sub_0801D6E0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D580: .4byte sub_0801D6E0

	thumb_func_start sub_0801D584
sub_0801D584: @ 0x0801D584
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0801D5E4 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801D5E8 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, r1
	strh r4, [r0]
	movs r3, #0x82
	lsls r3, r3, #2
	adds r1, r5, r3
	ldr r0, _0801D5EC @ =sub_0801D8C8
	str r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D5E4: .4byte 0x00007FFF
_0801D5E8: .4byte 0x0000FFFF
_0801D5EC: .4byte sub_0801D8C8

	thumb_func_start sub_0801D5F0
sub_0801D5F0: @ 0x0801D5F0
	push {lr}
	ldr r0, _0801D600 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801D600: .4byte gCurTask

	thumb_func_start sub_0801D604
sub_0801D604: @ 0x0801D604
	push {lr}
	ldr r0, _0801D614 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801D614: .4byte gCurTask

	thumb_func_start sub_0801D618
sub_0801D618: @ 0x0801D618
	push {lr}
	movs r0, #0
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D624
sub_0801D624: @ 0x0801D624
	push {lr}
	movs r0, #1
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D630
sub_0801D630: @ 0x0801D630
	push {lr}
	movs r0, #2
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D63C
sub_0801D63C: @ 0x0801D63C
	push {lr}
	movs r0, #3
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D648
sub_0801D648: @ 0x0801D648
	push {lr}
	movs r0, #4
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D654
sub_0801D654: @ 0x0801D654
	push {lr}
	movs r0, #5
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D660
sub_0801D660: @ 0x0801D660
	push {lr}
	movs r0, #6
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D66C
sub_0801D66C: @ 0x0801D66C
	push {lr}
	movs r0, #7
	bl sub_0801C6F8
	pop {r0}
	bx r0

	thumb_func_start sub_0801D678
sub_0801D678: @ 0x0801D678
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _0801D69A
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D6A0 @ =sub_0801CC30
	str r0, [r1]
_0801D69A:
	pop {r0}
	bx r0
	.align 2, 0
_0801D6A0: .4byte sub_0801CC30

	thumb_func_start sub_0801D6A4
sub_0801D6A4: @ 0x0801D6A4
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x20
	bls _0801D6D4
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0801D6D8 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D6DC @ =sub_0801D8F4
	str r0, [r1]
_0801D6D4:
	pop {r0}
	bx r0
	.align 2, 0
_0801D6D8: .4byte 0xDFFFFFFF
_0801D6DC: .4byte sub_0801D8F4

	thumb_func_start sub_0801D6E0
sub_0801D6E0: @ 0x0801D6E0
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _0801D702
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D708 @ =sub_0801CE74
	str r0, [r1]
_0801D702:
	pop {r0}
	bx r0
	.align 2, 0
_0801D708: .4byte sub_0801CE74

	thumb_func_start sub_0801D70C
sub_0801D70C: @ 0x0801D70C
	push {lr}
	adds r3, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _0801D73C
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0801D740 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D744 @ =sub_0801CF00
	str r0, [r1]
_0801D73C:
	pop {r0}
	bx r0
	.align 2, 0
_0801D740: .4byte 0xDFFFFFFF
_0801D744: .4byte sub_0801CF00

	thumb_func_start sub_0801D748
sub_0801D748: @ 0x0801D748
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x2d
	bls _0801D76A
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D770 @ =sub_0801CF78
	str r0, [r1]
_0801D76A:
	pop {r0}
	bx r0
	.align 2, 0
_0801D770: .4byte sub_0801CF78

	thumb_func_start sub_0801D774
sub_0801D774: @ 0x0801D774
	push {lr}
	adds r3, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r3, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bls _0801D7A4
	movs r0, #0x83
	lsls r0, r0, #2
	adds r2, r3, r0
	ldr r0, [r2]
	ldr r1, _0801D7A8 @ =0xDFFFFFFF
	ands r0, r1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D7AC @ =sub_0801D910
	str r0, [r1]
_0801D7A4:
	pop {r0}
	bx r0
	.align 2, 0
_0801D7A8: .4byte 0xDFFFFFFF
_0801D7AC: .4byte sub_0801D910

	thumb_func_start sub_0801D7B0
sub_0801D7B0: @ 0x0801D7B0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x28
	bls _0801D7EE
	bl sub_08019D5C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801D7E4
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0801D7E0 @ =sub_0801D870
	b _0801D7EC
	.align 2, 0
_0801D7E0: .4byte sub_0801D870
_0801D7E4:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0801D7F4 @ =sub_0801D7F8
_0801D7EC:
	str r0, [r1]
_0801D7EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D7F4: .4byte sub_0801D7F8

	thumb_func_start sub_0801D7F8
sub_0801D7F8: @ 0x0801D7F8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r2, _0801D864 @ =gUnk_082DE610
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrh r1, [r0]
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r4, [r3]
	subs r4, r4, r0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r3, r5, r0
	adds r2, #1
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r2, [r3]
	adds r2, r2, r0
	ldr r1, _0801D868 @ =0x000003A2
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r5, r3
	ldr r3, [r0]
	str r4, [sp]
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	adds r0, r5, #0
	movs r2, #0
	bl sub_0801D398
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0801D86C @ =sub_0801D92C
	str r0, [r1]
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801D864: .4byte gUnk_082DE610
_0801D868: .4byte 0x000003A2
_0801D86C: .4byte sub_0801D92C

	thumb_func_start sub_0801D870
sub_0801D870: @ 0x0801D870
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D888 @ =sub_0801D88C
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D888: .4byte sub_0801D88C

	thumb_func_start sub_0801D88C
sub_0801D88C: @ 0x0801D88C
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801D8AE
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D8B4 @ =sub_0801D8B8
	str r0, [r1]
_0801D8AE:
	pop {r0}
	bx r0
	.align 2, 0
_0801D8B4: .4byte sub_0801D8B8

	thumb_func_start sub_0801D8B8
sub_0801D8B8: @ 0x0801D8B8
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, _0801D8C4 @ =sub_0801D16C
	str r1, [r0]
	bx lr
	.align 2, 0
_0801D8C4: .4byte sub_0801D16C

	thumb_func_start sub_0801D8C8
sub_0801D8C8: @ 0x0801D8C8
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x20
	bls _0801D8EA
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D8F0 @ =sub_0801D948
	str r0, [r1]
_0801D8EA:
	pop {r0}
	bx r0
	.align 2, 0
_0801D8F0: .4byte sub_0801D948

	thumb_func_start sub_0801D8F4
sub_0801D8F4: @ 0x0801D8F4
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D90C @ =sub_0801D9D4
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D90C: .4byte sub_0801D9D4

	thumb_func_start sub_0801D910
sub_0801D910: @ 0x0801D910
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D928 @ =sub_0801DA00
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D928: .4byte sub_0801DA00

	thumb_func_start sub_0801D92C
sub_0801D92C: @ 0x0801D92C
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r0, _0801D944 @ =sub_0801DA2C
	str r0, [r1]
	bx lr
	.align 2, 0
_0801D944: .4byte sub_0801DA2C

	thumb_func_start sub_0801D948
sub_0801D948: @ 0x0801D948
	push {lr}
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08019D90
	ldr r0, _0801D98C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801D9B6
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0801D9A4
	ldr r0, _0801D990 @ =gUnk_0203AD3C
	ldr r1, _0801D994 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801D99C
	ldr r2, _0801D998 @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0801D982
	adds r1, r0, #0
_0801D982:
	movs r0, #1
	bl sub_0800ACD4
	b _0801D9B6
	.align 2, 0
_0801D98C: .4byte gUnk_0203AD10
_0801D990: .4byte gUnk_0203AD3C
_0801D994: .4byte gUnk_0203AD24
_0801D998: .4byte gUnk_0203AD48
_0801D99C:
	movs r0, #8
	bl sub_08031CE4
	b _0801D9B6
_0801D9A4:
	ldr r2, _0801D9CC @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0801D9B0
	adds r1, r0, #0
_0801D9B0:
	movs r0, #1
	bl sub_0800ACD4
_0801D9B6:
	bl sub_080027A8
	bl sub_08039670
	ldr r0, _0801D9D0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801D9CC: .4byte gUnk_0203AD48
_0801D9D0: .4byte gCurTask

	thumb_func_start sub_0801D9D4
sub_0801D9D4: @ 0x0801D9D4
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801D9F6
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801D9FC @ =sub_0801CDE8
	str r0, [r1]
_0801D9F6:
	pop {r0}
	bx r0
	.align 2, 0
_0801D9FC: .4byte sub_0801CDE8

	thumb_func_start sub_0801DA00
sub_0801DA00: @ 0x0801DA00
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0xa
	bls _0801DA22
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801DA28 @ =sub_0801D080
	str r0, [r1]
_0801DA22:
	pop {r0}
	bx r0
	.align 2, 0
_0801DA28: .4byte sub_0801D080

	thumb_func_start sub_0801DA2C
sub_0801DA2C: @ 0x0801DA2C
	push {lr}
	adds r3, r0, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r3, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0x78
	bls _0801DA4E
	movs r0, #0x82
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, _0801DA54 @ =sub_0801D584
	str r0, [r1]
_0801DA4E:
	pop {r0}
	bx r0
	.align 2, 0
_0801DA54: .4byte sub_0801D584

	thumb_func_start sub_0801DA58
sub_0801DA58: @ 0x0801DA58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0801DAA8 @ =sub_0801DFF4
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801DAAC @ =nullsub_28
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #4
	bl TaskCreate
	adds r4, r0, #0
	ldr r1, _0801DAB0 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _0801DAB4 @ =gDispCnt
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801DAB8
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0801DAC0
	.align 2, 0
_0801DAA8: .4byte sub_0801DFF4
_0801DAAC: .4byte nullsub_28
_0801DAB0: .4byte 0x00007FFF
_0801DAB4: .4byte gDispCnt
_0801DAB8:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0801DAC0:
	adds r1, r7, #0
	adds r1, #0xd8
	ldr r0, _0801DC24 @ =sub_0801E030
	str r0, [r1]
	movs r0, #0xdc
	adds r0, r0, r7
	mov r8, r0
	movs r4, #0
	strh r5, [r0]
	adds r0, r7, #0
	adds r0, #0xe2
	strh r4, [r0]
	subs r0, #0x12
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	ldr r6, _0801DC28 @ =0x06012000
	subs r1, #0x58
	str r6, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r1, #0x14]
	ldr r0, _0801DC2C @ =0x000002B9
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r2, sl
	strb r2, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	ldr r5, _0801DC30 @ =0x0000FFC0
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r2, #0x80
	lsls r2, r2, #0xb
	mov sb, r2
	str r2, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r1, r7, #0
	adds r1, #0xa8
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r2, _0801DC2C @ =0x000002B9
	strh r2, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r2, sl
	strb r2, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	mov r2, sb
	str r2, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	ldr r5, _0801DC34 @ =gBgScrollRegs
	strh r4, [r5, #0xc]
	strh r4, [r5, #0xe]
	ldr r6, _0801DC38 @ =gBgCntRegs
	ldr r0, _0801DC3C @ =0x00001E0A
	strh r0, [r6, #6]
	ldr r0, _0801DC40 @ =0x06008000
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0801DC44 @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	ldr r0, _0801DC48 @ =0x00000307
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0x1b
	strh r0, [r7, #0x2e]
	ldr r1, _0801DC4C @ =gUnk_082DE694
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x30]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x32]
	ldr r0, _0801DC50 @ =0x00007FFF
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	ldr r0, _0801DC54 @ =gUnk_082D7850
	ldr r1, _0801DC58 @ =0x00000C1C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r7, #4]
	bl LZ77UnCompVram
	adds r0, r7, #0
	bl sub_08153060
	ldr r1, _0801DC5C @ =gBackgrounds
	ldr r0, _0801DC60 @ =gRoomProps
	ldr r2, _0801DC64 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	strh r4, [r5]
	strh r4, [r5, #2]
	ldr r0, _0801DC68 @ =0x00001F03
	strh r0, [r6]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0801DC6C @ =0x0600F800
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0801DBF8:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0801DBF8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC24: .4byte sub_0801E030
_0801DC28: .4byte 0x06012000
_0801DC2C: .4byte 0x000002B9
_0801DC30: .4byte 0x0000FFC0
_0801DC34: .4byte gBgScrollRegs
_0801DC38: .4byte gBgCntRegs
_0801DC3C: .4byte 0x00001E0A
_0801DC40: .4byte 0x06008000
_0801DC44: .4byte 0x0600F000
_0801DC48: .4byte 0x00000307
_0801DC4C: .4byte gUnk_082DE694
_0801DC50: .4byte 0x00007FFF
_0801DC54: .4byte gUnk_082D7850
_0801DC58: .4byte 0x00000C1C
_0801DC5C: .4byte gBackgrounds
_0801DC60: .4byte gRoomProps
_0801DC64: .4byte 0x00007D46
_0801DC68: .4byte 0x00001F03
_0801DC6C: .4byte 0x0600F800

	thumb_func_start sub_0801DC70
sub_0801DC70: @ 0x0801DC70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov ip, r4
	ldr r4, _0801DD14 @ =gUnk_082D7850
	ldr r5, _0801DD18 @ =0x00000C1C
	adds r4, r4, r5
	ldr r7, [r4]
	ldrh r5, [r7]
	ldr r4, _0801DD1C @ =gUnk_082DE690
	mov r8, r4
	lsrs r2, r2, #0xe
	adds r4, #2
	adds r4, r2, r4
	ldrh r6, [r4]
	subs r4, r6, #1
	muls r4, r5, r4
	lsls r4, r4, #1
	ldr r5, [r7, #0x18]
	adds r5, r5, r4
	add r2, r8
	ldrh r2, [r2]
	lsls r4, r2, #1
	adds r5, r5, r4
	subs r5, #2
	mov r8, r5
	adds r5, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #1
	subs r6, r6, r1
	add r6, ip
	subs r2, #1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r6, #0x10
	lsrs r0, r6, #0x10
	cmp r0, #0x14
	bhi _0801DD08
	movs r3, #0
	asrs r6, r6, #0xb
_0801DCD0:
	lsls r4, r2, #0x10
	lsrs r0, r4, #0x10
	lsls r3, r3, #0x10
	cmp r0, #0x1e
	bhi _0801DCF6
	asrs r2, r4, #0x10
	adds r2, r6, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	ldrh r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r1, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2]
_0801DCF6:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r3, r2
	adds r0, r4, r2
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0801DCD0
_0801DD08:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD14: .4byte gUnk_082D7850
_0801DD18: .4byte 0x00000C1C
_0801DD1C: .4byte gUnk_082DE690

	thumb_func_start sub_0801DD20
sub_0801DD20: @ 0x0801DD20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _0801DDF0 @ =gUnk_082D7850
	ldr r1, _0801DDF4 @ =gUnk_082DE698
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r2, [sp, #0x20]
	lsls r1, r2, #5
	ldr r2, _0801DDF8 @ =0x06008000
	adds r1, r1, r2
	bl LZ77UnCompVram
	mov r0, r8
	ldr r0, [r0, #0x18]
	mov ip, r0
	ldr r1, _0801DDFC @ =gUnk_082DE690
	lsls r5, r5, #2
	adds r0, r1, #2
	adds r0, r5, r0
	mvns r4, r4
	ldrh r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r3, #0
	adds r5, r5, r1
	mvns r6, r6
	ldrh r5, [r5]
	adds r6, r6, r5
	lsls r6, r6, #0x10
	mov sl, r6
_0801DD84:
	mov r1, sl
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r0
	lsls r6, r3, #0x10
	cmp r1, #0x14
	bhi _0801DDCE
	movs r5, #0
	asrs r7, r0, #0xb
	asrs r4, r6, #0xe
_0801DD9A:
	lsls r3, r2, #0x10
	lsrs r0, r3, #0x10
	lsls r2, r5, #0x10
	cmp r0, #0x1e
	bhi _0801DDBC
	asrs r0, r3, #0x10
	adds r0, r7, r0
	lsls r0, r0, #1
	add r0, sb
	asrs r1, r2, #0x10
	adds r1, r4, r1
	lsls r1, r1, #1
	add r1, ip
	ldrh r1, [r1]
	ldr r5, [sp, #0x20]
	adds r1, r1, r5
	strh r1, [r0]
_0801DDBC:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r2, r0
	adds r0, r3, r0
	lsrs r2, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0801DD9A
_0801DDCE:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, r2
	adds r0, r2, #0
	add r0, r8
	lsrs r0, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0801DD84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDF0: .4byte gUnk_082D7850
_0801DDF4: .4byte gUnk_082DE698
_0801DDF8: .4byte 0x06008000
_0801DDFC: .4byte gUnk_082DE690

	thumb_func_start sub_0801DE00
sub_0801DE00: @ 0x0801DE00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r8, r0
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #5
	ldrh r1, [r5, #0x22]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r5, #0xc]
	adds r1, r1, r0
	mov sl, r1
	ldrh r1, [r5, #0x30]
	lsrs r1, r1, #3
	ldrh r0, [r5, #0x32]
	lsrs r0, r0, #3
	movs r4, #0
	ldr r2, _0801DEBC @ =gUnk_082DE690
	mov sb, r2
	lsls r7, r1, #0x10
	lsls r6, r0, #0x10
_0801DE36:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r0, [r0]
	cmp r4, r0
	beq _0801DE8A
	ldr r1, _0801DEC0 @ =gUnk_082DE69A
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0801DEA0
	lsls r0, r4, #2
	mov r2, sb
	adds r1, r0, r2
	ldr r2, _0801DEC4 @ =gUnk_082DE692
	adds r0, r0, r2
	ldrh r3, [r0]
	movs r0, #0
	ldrsh r2, [r1, r0]
	adds r0, r2, #3
	asrs r1, r7, #0x10
	cmp r0, r1
	ble _0801DEA0
	adds r1, #0x1e
	subs r0, r2, #1
	cmp r1, r0
	ble _0801DEA0
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #4
	asrs r1, r6, #0x10
	cmp r0, r1
	ble _0801DEA0
	adds r1, #0x14
	subs r0, r2, #1
	cmp r1, r0
	ble _0801DEA0
_0801DE8A:
	movs r1, #0x14
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	str r2, [sp]
	asrs r0, r7, #0x10
	asrs r1, r6, #0x10
	adds r2, r4, #0
	mov r3, sl
	bl sub_0801DD20
_0801DEA0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801DE36
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEBC: .4byte gUnk_082DE690
_0801DEC0: .4byte gUnk_082DE69A
_0801DEC4: .4byte gUnk_082DE692

	thumb_func_start sub_0801DEC8
sub_0801DEC8: @ 0x0801DEC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xd0
	ldr r0, [r5]
	cmp r0, #0
	beq _0801DEDE
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_0815604C
_0801DEDE:
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_08155128
	cmp r0, #0
	bne _0801DEF8
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, _0801DF2C @ =0x0000FFC0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0801DEF8:
	adds r6, r4, #0
	adds r6, #0xd4
	ldr r0, [r6]
	adds r5, r4, #0
	adds r5, #0xa8
	cmp r0, #0
	beq _0801DF0C
	adds r0, r5, #0
	bl sub_0815604C
_0801DF0C:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801DF24
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, _0801DF2C @ =0x0000FFC0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0801DF24:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF2C: .4byte 0x0000FFC0

	thumb_func_start sub_0801DF30
sub_0801DF30: @ 0x0801DF30
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0xe2
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x88
	ldr r1, [r2]
	ldr r3, _0801DFD4 @ =0xFFFBFFFF
	ands r1, r3
	str r1, [r2]
	adds r2, #0x28
	ldr r1, [r2]
	ands r1, r3
	str r1, [r2]
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r2, #0x20
	adds r2, r2, r1
	movs r1, #1
	str r1, [r2]
	movs r6, #0
	strb r6, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r3, _0801DFD8 @ =gUnk_082DE690
	adds r5, r7, #0
	adds r5, #0xdc
	ldrh r2, [r5]
	lsls r2, r2, #2
	adds r1, r2, r3
	ldrh r1, [r1]
	lsls r1, r1, #3
	ldr r4, _0801DFDC @ =gUnk_082DE694
	adds r2, r2, r4
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r3, #2
	adds r3, r1, r3
	ldrh r2, [r3]
	lsls r2, r2, #3
	adds r4, #2
	adds r1, r1, r4
	ldrh r1, [r1]
	subs r2, r2, r1
	adds r3, r7, #0
	adds r3, #0xe0
	ldr r4, _0801DFE0 @ =0x0000FFFF
	adds r1, r4, #0
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl sub_08155128
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
	adds r0, r7, #0
	adds r0, #0xde
	strh r6, [r0]
	adds r1, r7, #0
	adds r1, #0xd8
	ldr r0, _0801DFE4 @ =sub_0801E0D8
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0801DEC8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFD4: .4byte 0xFFFBFFFF
_0801DFD8: .4byte gUnk_082DE690
_0801DFDC: .4byte gUnk_082DE694
_0801DFE0: .4byte 0x0000FFFF
_0801DFE4: .4byte sub_0801E0D8

	thumb_func_start sub_0801DFE8
sub_0801DFE8: @ 0x0801DFE8
	push {lr}
	movs r0, #0
	bl sub_0801DA58
	pop {r0}
	bx r0

	thumb_func_start sub_0801DFF4
sub_0801DFF4: @ 0x0801DFF4
	push {lr}
	ldr r0, _0801E010 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E014
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0801E01C
	.align 2, 0
_0801E010: .4byte gCurTask
_0801E014:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0801E01C:
	adds r0, r2, #0
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start nullsub_28
nullsub_28: @ 0x0801E02C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801E030
sub_0801E030: @ 0x0801E030
	adds r0, #0xd8
	ldr r1, _0801E038 @ =sub_0801E03C
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E038: .4byte sub_0801E03C

	thumb_func_start sub_0801E03C
sub_0801E03C: @ 0x0801E03C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0801E098 @ =gUnk_082D7850
	ldr r1, _0801E09C @ =0x00000C1C
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r1, _0801E0A0 @ =gBackgrounds
	ldr r0, _0801E0A4 @ =gRoomProps
	ldr r2, _0801E0A8 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0xde
	movs r0, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0801DE00
	ldr r0, [r6, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	adds r5, #0xd8
	ldr r0, _0801E0AC @ =sub_0801E0B0
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E098: .4byte gUnk_082D7850
_0801E09C: .4byte 0x00000C1C
_0801E0A0: .4byte gBackgrounds
_0801E0A4: .4byte gRoomProps
_0801E0A8: .4byte 0x00007D46
_0801E0AC: .4byte sub_0801E0B0

	thumb_func_start sub_0801E0B0
sub_0801E0B0: @ 0x0801E0B0
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801E0CE
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E0D4 @ =sub_0801E1A0
	str r0, [r1]
_0801E0CE:
	pop {r0}
	bx r0
	.align 2, 0
_0801E0D4: .4byte sub_0801E1A0

	thumb_func_start sub_0801E0D8
sub_0801E0D8: @ 0x0801E0D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801E11E
	ldrh r0, [r5, #0x30]
	lsrs r0, r0, #3
	ldrh r1, [r5, #0x32]
	lsrs r1, r1, #3
	subs r2, #2
	ldrh r2, [r2]
	ldrh r4, [r5, #0x24]
	lsls r4, r4, #5
	ldrh r3, [r5, #0x22]
	adds r4, r4, r3
	lsls r4, r4, #1
	ldr r3, [r5, #0xc]
	adds r3, r3, r4
	adds r4, r5, #0
	adds r4, #0xe0
	ldrh r4, [r4]
	str r4, [sp]
	bl sub_0801DC70
	adds r1, r5, #0
	adds r1, #0xd8
	ldr r0, _0801E12C @ =sub_0801E130
	str r0, [r1]
_0801E11E:
	adds r0, r5, #0
	bl sub_0801DEC8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E12C: .4byte sub_0801E130

	thumb_func_start sub_0801E130
sub_0801E130: @ 0x0801E130
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801E14E
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E158 @ =sub_0801E15C
	str r0, [r1]
_0801E14E:
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E158: .4byte sub_0801E15C

	thumb_func_start sub_0801E15C
sub_0801E15C: @ 0x0801E15C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xe2
	ldrh r0, [r2]
	movs r1, #1
	eors r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	beq _0801E188
	subs r1, #8
	ldr r0, _0801E184 @ =sub_0801DF30
	b _0801E18E
	.align 2, 0
_0801E184: .4byte sub_0801DF30
_0801E188:
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E19C @ =sub_0801E1B4
_0801E18E:
	str r0, [r1]
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E19C: .4byte sub_0801E1B4

	thumb_func_start sub_0801E1A0
sub_0801E1A0: @ 0x0801E1A0
	adds r2, r0, #0
	adds r2, #0xde
	movs r1, #0
	strh r1, [r2]
	adds r0, #0xd8
	ldr r1, _0801E1B0 @ =sub_0801E1D0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E1B0: .4byte sub_0801E1D0

	thumb_func_start sub_0801E1B4
sub_0801E1B4: @ 0x0801E1B4
	push {lr}
	adds r2, r0, #0
	adds r2, #0xde
	movs r1, #0
	strh r1, [r2]
	subs r2, #6
	ldr r1, _0801E1CC @ =sub_0801E1F8
	str r1, [r2]
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E1CC: .4byte sub_0801E1F8

	thumb_func_start sub_0801E1D0
sub_0801E1D0: @ 0x0801E1D0
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801E1EE
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E1F4 @ =sub_0801E224
	str r0, [r1]
_0801E1EE:
	pop {r0}
	bx r0
	.align 2, 0
_0801E1F4: .4byte sub_0801E224

	thumb_func_start sub_0801E1F8
sub_0801E1F8: @ 0x0801E1F8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801E216
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E220 @ =sub_0801E238
	str r0, [r1]
_0801E216:
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E220: .4byte sub_0801E238

	thumb_func_start sub_0801E224
sub_0801E224: @ 0x0801E224
	adds r2, r0, #0
	adds r2, #0xe0
	movs r1, #0
	strh r1, [r2]
	adds r0, #0xd8
	ldr r1, _0801E234 @ =sub_0801DF30
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E234: .4byte sub_0801DF30

	thumb_func_start sub_0801E238
sub_0801E238: @ 0x0801E238
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0801E280 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xde
	movs r0, #0
	strh r0, [r1]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801E284 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	adds r4, #0xd8
	ldr r0, _0801E288 @ =sub_0801E28C
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E280: .4byte 0x00007FFF
_0801E284: .4byte 0x0000FFFF
_0801E288: .4byte sub_0801E28C

	thumb_func_start sub_0801E28C
sub_0801E28C: @ 0x0801E28C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801E2AA
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E2B0 @ =sub_0801E2B4
	str r0, [r1]
_0801E2AA:
	pop {r0}
	bx r0
	.align 2, 0
_0801E2B0: .4byte sub_0801E2B4

	thumb_func_start sub_0801E2B4
sub_0801E2B4: @ 0x0801E2B4
	push {lr}
	bl sub_08039670
	ldr r0, _0801E2C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801E2C8: .4byte gCurTask
