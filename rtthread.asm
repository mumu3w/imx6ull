
.\rtthread.elf:     file format elf32-littlearm


Disassembly of section .text:

87800000 <__text_start>:
87800000:	e51ff004 	ldr	pc, [pc, #-4]	; 87800004 <_vector_reset>

87800004 <_vector_reset>:
87800004:	87800170 	.word	0x87800170

87800008 <__do_global_dtors_aux>:
87800008:	b510      	push	{r4, lr}
8780000a:	f244 24d0 	movw	r4, #17104	; 0x42d0
8780000e:	f2c8 7480 	movt	r4, #34688	; 0x8780
87800012:	7823      	ldrb	r3, [r4, #0]
87800014:	b963      	cbnz	r3, 87800030 <__do_global_dtors_aux+0x28>
87800016:	f240 0300 	movw	r3, #0
8780001a:	f2c0 0300 	movt	r3, #0
8780001e:	b12b      	cbz	r3, 8780002c <__do_global_dtors_aux+0x24>
87800020:	f643 6028 	movw	r0, #15912	; 0x3e28
87800024:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800028:	f3af 8000 	nop.w
8780002c:	2301      	movs	r3, #1
8780002e:	7023      	strb	r3, [r4, #0]
87800030:	bd10      	pop	{r4, pc}
87800032:	bf00      	nop

87800034 <frame_dummy>:
87800034:	f240 0300 	movw	r3, #0
87800038:	f2c0 0300 	movt	r3, #0
8780003c:	b510      	push	{r4, lr}
8780003e:	b14b      	cbz	r3, 87800054 <frame_dummy+0x20>
87800040:	f244 21d4 	movw	r1, #17108	; 0x42d4
87800044:	f643 6028 	movw	r0, #15912	; 0x3e28
87800048:	f2c8 7180 	movt	r1, #34688	; 0x8780
8780004c:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800050:	f3af 8000 	nop.w
87800054:	f244 20cc 	movw	r0, #17100	; 0x42cc
87800058:	f2c8 7080 	movt	r0, #34688	; 0x8780
8780005c:	6803      	ldr	r3, [r0, #0]
8780005e:	b903      	cbnz	r3, 87800062 <frame_dummy+0x2e>
87800060:	bd10      	pop	{r4, pc}
87800062:	f240 0300 	movw	r3, #0
87800066:	f2c0 0300 	movt	r3, #0
8780006a:	2b00      	cmp	r3, #0
8780006c:	d0f8      	beq.n	87800060 <frame_dummy+0x2c>
8780006e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
87800072:	4718      	bx	r3

87800074 <clk_enable>:
87800074:	e59f3020 	ldr	r3, [pc, #32]	; 8780009c <clk_enable+0x28>
87800078:	e3e02000 	mvn	r2, #0
8780007c:	e5832068 	str	r2, [r3, #104]	; 0x68
87800080:	e583206c 	str	r2, [r3, #108]	; 0x6c
87800084:	e5832070 	str	r2, [r3, #112]	; 0x70
87800088:	e5832074 	str	r2, [r3, #116]	; 0x74
8780008c:	e5832078 	str	r2, [r3, #120]	; 0x78
87800090:	e583207c 	str	r2, [r3, #124]	; 0x7c
87800094:	e5832080 	str	r2, [r3, #128]	; 0x80
87800098:	e12fff1e 	bx	lr
8780009c:	020c4000 	.word	0x020c4000

878000a0 <led_init>:
878000a0:	e59f3024 	ldr	r3, [pc, #36]	; 878000cc <led_init+0x2c>
878000a4:	e3a02005 	mov	r2, #5
878000a8:	e5832068 	str	r2, [r3, #104]	; 0x68
878000ac:	e30120b0 	movw	r2, #4272	; 0x10b0
878000b0:	e58322f4 	str	r2, [r3, #756]	; 0x2f4
878000b4:	e2433911 	sub	r3, r3, #278528	; 0x44000
878000b8:	e3a02008 	mov	r2, #8
878000bc:	e5832004 	str	r2, [r3, #4]
878000c0:	e3a02000 	mov	r2, #0
878000c4:	e5832000 	str	r2, [r3]
878000c8:	e12fff1e 	bx	lr
878000cc:	020e0000 	.word	0x020e0000

878000d0 <led_on>:
878000d0:	e59f200c 	ldr	r2, [pc, #12]	; 878000e4 <led_on+0x14>
878000d4:	e5923000 	ldr	r3, [r2]
878000d8:	e3c33008 	bic	r3, r3, #8
878000dc:	e5823000 	str	r3, [r2]
878000e0:	e12fff1e 	bx	lr
878000e4:	0209c000 	.word	0x0209c000

878000e8 <led_off>:
878000e8:	e59f200c 	ldr	r2, [pc, #12]	; 878000fc <led_off+0x14>
878000ec:	e5923000 	ldr	r3, [r2]
878000f0:	e3833008 	orr	r3, r3, #8
878000f4:	e5823000 	str	r3, [r2]
878000f8:	e12fff1e 	bx	lr
878000fc:	0209c000 	.word	0x0209c000

87800100 <delay_short>:
87800100:	e24dd008 	sub	sp, sp, #8
87800104:	e58d0004 	str	r0, [sp, #4]
87800108:	e59d3004 	ldr	r3, [sp, #4]
8780010c:	e3530000 	cmp	r3, #0
87800110:	e2432001 	sub	r2, r3, #1
87800114:	e58d2004 	str	r2, [sp, #4]
87800118:	1afffffa 	bne	87800108 <delay_short+0x8>
8780011c:	e28dd008 	add	sp, sp, #8
87800120:	e12fff1e 	bx	lr

87800124 <delay>:
87800124:	e92d4007 	push	{r0, r1, r2, lr}
87800128:	e58d0004 	str	r0, [sp, #4]
8780012c:	e59d3004 	ldr	r3, [sp, #4]
87800130:	e3530000 	cmp	r3, #0
87800134:	e2432001 	sub	r2, r3, #1
87800138:	e58d2004 	str	r2, [sp, #4]
8780013c:	0a000002 	beq	8780014c <delay+0x28>
87800140:	e30007ff 	movw	r0, #2047	; 0x7ff
87800144:	ebffffed 	bl	87800100 <delay_short>
87800148:	eafffff7 	b	8780012c <delay+0x8>
8780014c:	e28dd00c 	add	sp, sp, #12
87800150:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87800154 <rt_hw_interrupt_enable>:
87800154:	e12fff1e 	bx	lr

87800158 <rt_hw_interrupt_disable>:
87800158:	e12fff1e 	bx	lr

8780015c <rt_hw_context_switch>:
8780015c:	e12fff1e 	bx	lr

87800160 <rt_hw_context_switch_to>:
87800160:	e12fff1e 	bx	lr

87800164 <rt_hw_context_switch_interrupt>:
87800164:	e12fff1e 	bx	lr

87800168 <rt_hw_stack_init>:
87800168:	e3a00000 	mov	r0, #0
8780016c:	e12fff1e 	bx	lr

87800170 <reset>:
87800170:	e10f0000 	mrs	r0, CPSR
87800174:	e3c0001f 	bic	r0, r0, #31
87800178:	e3800013 	orr	r0, r0, #19
8780017c:	e129f000 	msr	CPSR_fc, r0
87800180:	e51fd000 	ldr	sp, [pc, #-0]	; 87800188 <reset+0x18>
87800184:	ea000e8a 	b	87803bb4 <main>
87800188:	80200000 	.word	0x80200000

8780018c <rt_system_tick_init>:
8780018c:	e12fff1e 	bx	lr

87800190 <rt_tick_get>:
87800190:	e59f3004 	ldr	r3, [pc, #4]	; 8780019c <rt_tick_get+0xc>
87800194:	e5930000 	ldr	r0, [r3]
87800198:	e12fff1e 	bx	lr
8780019c:	878042ec 	.word	0x878042ec

878001a0 <rt_tick_set>:
878001a0:	e92d4010 	push	{r4, lr}
878001a4:	e1a04000 	mov	r4, r0
878001a8:	ebffffea 	bl	87800158 <rt_hw_interrupt_disable>
878001ac:	e59f3008 	ldr	r3, [pc, #8]	; 878001bc <rt_tick_set+0x1c>
878001b0:	e5834000 	str	r4, [r3]
878001b4:	e8bd4010 	pop	{r4, lr}
878001b8:	eaffffe5 	b	87800154 <rt_hw_interrupt_enable>
878001bc:	878042ec 	.word	0x878042ec

878001c0 <rt_tick_increase>:
878001c0:	e59f2038 	ldr	r2, [pc, #56]	; 87800200 <rt_tick_increase+0x40>
878001c4:	e92d4010 	push	{r4, lr}
878001c8:	e5923000 	ldr	r3, [r2]
878001cc:	e2833001 	add	r3, r3, #1
878001d0:	e5823000 	str	r3, [r2]
878001d4:	eb000afb 	bl	87802dc8 <rt_thread_self>
878001d8:	e5903048 	ldr	r3, [r0, #72]	; 0x48
878001dc:	e2433001 	sub	r3, r3, #1
878001e0:	e5803048 	str	r3, [r0, #72]	; 0x48
878001e4:	e3530000 	cmp	r3, #0
878001e8:	1a000002 	bne	878001f8 <rt_tick_increase+0x38>
878001ec:	e5903044 	ldr	r3, [r0, #68]	; 0x44
878001f0:	e5803048 	str	r3, [r0, #72]	; 0x48
878001f4:	eb000b69 	bl	87802fa0 <rt_thread_yield>
878001f8:	e8bd4010 	pop	{r4, lr}
878001fc:	ea000cb4 	b	878034d4 <rt_timer_check>
87800200:	878042ec 	.word	0x878042ec

87800204 <rt_tick_from_millisecond>:
87800204:	e92d4070 	push	{r4, r5, r6, lr}
87800208:	e2506000 	subs	r6, r0, #0
8780020c:	ba00000d 	blt	87800248 <rt_tick_from_millisecond+0x44>
87800210:	e3a01ffa 	mov	r1, #1000	; 0x3e8
87800214:	e3a05ffa 	mov	r5, #1000	; 0x3e8
87800218:	fa000db8 	blx	87803900 <__aeabi_idiv>
8780021c:	e0040095 	mul	r4, r5, r0
87800220:	e1a01005 	mov	r1, r5
87800224:	e1a00006 	mov	r0, r6
87800228:	fa000e59 	blx	87803b94 <__aeabi_idivmod>
8780022c:	e0000195 	mul	r0, r5, r1
87800230:	e1a01005 	mov	r1, r5
87800234:	e2800ff9 	add	r0, r0, #996	; 0x3e4
87800238:	e2800003 	add	r0, r0, #3
8780023c:	fa000daf 	blx	87803900 <__aeabi_idiv>
87800240:	e0800004 	add	r0, r0, r4
87800244:	e8bd8070 	pop	{r4, r5, r6, pc}
87800248:	e3e00000 	mvn	r0, #0
8780024c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800250 <rt_ipc_list_resume_all>:
87800250:	e92d4070 	push	{r4, r5, r6, lr}
87800254:	e1a04000 	mov	r4, r0
87800258:	e3e05000 	mvn	r5, #0
8780025c:	e5943000 	ldr	r3, [r4]
87800260:	e1540003 	cmp	r4, r3
87800264:	0a000008 	beq	8780028c <rt_ipc_list_resume_all+0x3c>
87800268:	ebffffba 	bl	87800158 <rt_hw_interrupt_disable>
8780026c:	e1a06000 	mov	r6, r0
87800270:	e5940000 	ldr	r0, [r4]
87800274:	e580501c 	str	r5, [r0, #28]
87800278:	e2400014 	sub	r0, r0, #20
8780027c:	eb000b81 	bl	87803088 <rt_thread_resume>
87800280:	e1a00006 	mov	r0, r6
87800284:	ebffffb2 	bl	87800154 <rt_hw_interrupt_enable>
87800288:	eafffff3 	b	8780025c <rt_ipc_list_resume_all+0xc>
8780028c:	e3a00000 	mov	r0, #0
87800290:	e8bd8070 	pop	{r4, r5, r6, pc}

87800294 <rt_ipc_list_resume.isra.0>:
87800294:	e92d4010 	push	{r4, lr}
87800298:	e2400014 	sub	r0, r0, #20
8780029c:	eb000b79 	bl	87803088 <rt_thread_resume>
878002a0:	e3a00000 	mov	r0, #0
878002a4:	e8bd8010 	pop	{r4, pc}

878002a8 <rt_ipc_list_suspend>:
878002a8:	e92d4070 	push	{r4, r5, r6, lr}
878002ac:	e1a06002 	mov	r6, r2
878002b0:	e1a05000 	mov	r5, r0
878002b4:	e1a00001 	mov	r0, r1
878002b8:	e1a04001 	mov	r4, r1
878002bc:	eb000b3b 	bl	87802fb0 <rt_thread_suspend>
878002c0:	e3560000 	cmp	r6, #0
878002c4:	0a000003 	beq	878002d8 <rt_ipc_list_suspend+0x30>
878002c8:	e3560001 	cmp	r6, #1
878002cc:	1a000015 	bne	87800328 <rt_ipc_list_suspend+0x80>
878002d0:	e5953000 	ldr	r3, [r5]
878002d4:	ea00000b 	b	87800308 <rt_ipc_list_suspend+0x60>
878002d8:	e5952004 	ldr	r2, [r5, #4]
878002dc:	e2843014 	add	r3, r4, #20
878002e0:	e5823000 	str	r3, [r2]
878002e4:	e5842018 	str	r2, [r4, #24]
878002e8:	e5853004 	str	r3, [r5, #4]
878002ec:	e5845014 	str	r5, [r4, #20]
878002f0:	ea00000c 	b	87800328 <rt_ipc_list_suspend+0x80>
878002f4:	e5d41035 	ldrb	r1, [r4, #53]	; 0x35
878002f8:	e5d32021 	ldrb	r2, [r3, #33]	; 0x21
878002fc:	e1510002 	cmp	r1, r2
87800300:	3a000002 	bcc	87800310 <rt_ipc_list_suspend+0x68>
87800304:	e5933000 	ldr	r3, [r3]
87800308:	e1530005 	cmp	r3, r5
8780030c:	1afffff8 	bne	878002f4 <rt_ipc_list_suspend+0x4c>
87800310:	e5931004 	ldr	r1, [r3, #4]
87800314:	e2842014 	add	r2, r4, #20
87800318:	e5812000 	str	r2, [r1]
8780031c:	e5841018 	str	r1, [r4, #24]
87800320:	e5832004 	str	r2, [r3, #4]
87800324:	e5843014 	str	r3, [r4, #20]
87800328:	e3a00000 	mov	r0, #0
8780032c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800330 <rt_sem_init>:
87800330:	e92d4070 	push	{r4, r5, r6, lr}
87800334:	e1a04000 	mov	r4, r0
87800338:	e1a06002 	mov	r6, r2
8780033c:	e1a02001 	mov	r2, r1
87800340:	e3a01002 	mov	r1, #2
87800344:	e1a05003 	mov	r5, r3
87800348:	eb0008e6 	bl	878026e8 <rt_object_init>
8780034c:	e1c461bc 	strh	r6, [r4, #28]
87800350:	e2842014 	add	r2, r4, #20
87800354:	e5842018 	str	r2, [r4, #24]
87800358:	e3a00000 	mov	r0, #0
8780035c:	e5842014 	str	r2, [r4, #20]
87800360:	e5c45009 	strb	r5, [r4, #9]
87800364:	e8bd8070 	pop	{r4, r5, r6, pc}

87800368 <rt_sem_detach>:
87800368:	e92d4010 	push	{r4, lr}
8780036c:	e1a04000 	mov	r4, r0
87800370:	e2800014 	add	r0, r0, #20
87800374:	ebffffb5 	bl	87800250 <rt_ipc_list_resume_all>
87800378:	e1a00004 	mov	r0, r4
8780037c:	eb0008f7 	bl	87802760 <rt_object_detach>
87800380:	e3a00000 	mov	r0, #0
87800384:	e8bd8010 	pop	{r4, pc}

87800388 <rt_sem_create>:
87800388:	e92d4070 	push	{r4, r5, r6, lr}
8780038c:	e1a05001 	mov	r5, r1
87800390:	e1a01000 	mov	r1, r0
87800394:	e3a00002 	mov	r0, #2
87800398:	e1a04002 	mov	r4, r2
8780039c:	eb0008fe 	bl	8780279c <rt_object_allocate>
878003a0:	e3500000 	cmp	r0, #0
878003a4:	12803014 	addne	r3, r0, #20
878003a8:	15803018 	strne	r3, [r0, #24]
878003ac:	15803014 	strne	r3, [r0, #20]
878003b0:	11c051bc 	strhne	r5, [r0, #28]
878003b4:	15c04009 	strbne	r4, [r0, #9]
878003b8:	e8bd8070 	pop	{r4, r5, r6, pc}

878003bc <rt_sem_delete>:
878003bc:	e92d4010 	push	{r4, lr}
878003c0:	e1a04000 	mov	r4, r0
878003c4:	e2800014 	add	r0, r0, #20
878003c8:	ebffffa0 	bl	87800250 <rt_ipc_list_resume_all>
878003cc:	e1a00004 	mov	r0, r4
878003d0:	eb00090e 	bl	87802810 <rt_object_delete>
878003d4:	e3a00000 	mov	r0, #0
878003d8:	e8bd8010 	pop	{r4, pc}

878003dc <rt_sem_take>:
878003dc:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
878003e0:	e1a06000 	mov	r6, r0
878003e4:	e58d1004 	str	r1, [sp, #4]
878003e8:	ebffff5a 	bl	87800158 <rt_hw_interrupt_disable>
878003ec:	e1d641bc 	ldrh	r4, [r6, #28]
878003f0:	e3540000 	cmp	r4, #0
878003f4:	0a000004 	beq	8780040c <rt_sem_take+0x30>
878003f8:	e2444001 	sub	r4, r4, #1
878003fc:	e1c641bc 	strh	r4, [r6, #28]
87800400:	ebffff53 	bl	87800154 <rt_hw_interrupt_enable>
87800404:	e3a00000 	mov	r0, #0
87800408:	ea00001c 	b	87800480 <rt_sem_take+0xa4>
8780040c:	e59d3004 	ldr	r3, [sp, #4]
87800410:	e3530000 	cmp	r3, #0
87800414:	1a000002 	bne	87800424 <rt_sem_take+0x48>
87800418:	ebffff4d 	bl	87800154 <rt_hw_interrupt_enable>
8780041c:	e3e00001 	mvn	r0, #1
87800420:	ea000016 	b	87800480 <rt_sem_take+0xa4>
87800424:	e1a07000 	mov	r7, r0
87800428:	eb000a66 	bl	87802dc8 <rt_thread_self>
8780042c:	e5804030 	str	r4, [r0, #48]	; 0x30
87800430:	e1a01000 	mov	r1, r0
87800434:	e5d62009 	ldrb	r2, [r6, #9]
87800438:	e1a05000 	mov	r5, r0
8780043c:	e2860014 	add	r0, r6, #20
87800440:	ebffff98 	bl	878002a8 <rt_ipc_list_suspend>
87800444:	e59d3004 	ldr	r3, [sp, #4]
87800448:	e3530000 	cmp	r3, #0
8780044c:	da000007 	ble	87800470 <rt_sem_take+0x94>
87800450:	e285304c 	add	r3, r5, #76	; 0x4c
87800454:	e1a01004 	mov	r1, r4
87800458:	e28d2004 	add	r2, sp, #4
8780045c:	e1a04003 	mov	r4, r3
87800460:	e1a00003 	mov	r0, r3
87800464:	eb000c05 	bl	87803480 <rt_timer_control>
87800468:	e1a00004 	mov	r0, r4
8780046c:	eb000bc3 	bl	87803380 <rt_timer_start>
87800470:	e1a00007 	mov	r0, r7
87800474:	ebffff36 	bl	87800154 <rt_hw_interrupt_enable>
87800478:	eb000980 	bl	87802a80 <rt_schedule>
8780047c:	e5950030 	ldr	r0, [r5, #48]	; 0x30
87800480:	e28dd00c 	add	sp, sp, #12
87800484:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

87800488 <rt_sem_trytake>:
87800488:	e3a01000 	mov	r1, #0
8780048c:	eaffffd2 	b	878003dc <rt_sem_take>

87800490 <rt_sem_release>:
87800490:	e92d4070 	push	{r4, r5, r6, lr}
87800494:	e1a04000 	mov	r4, r0
87800498:	ebffff2e 	bl	87800158 <rt_hw_interrupt_disable>
8780049c:	e1a03004 	mov	r3, r4
878004a0:	e1a05000 	mov	r5, r0
878004a4:	e5b30014 	ldr	r0, [r3, #20]!
878004a8:	e1500003 	cmp	r0, r3
878004ac:	0a000002 	beq	878004bc <rt_sem_release+0x2c>
878004b0:	e3a04001 	mov	r4, #1
878004b4:	ebffff76 	bl	87800294 <rt_ipc_list_resume.isra.0>
878004b8:	ea000003 	b	878004cc <rt_sem_release+0x3c>
878004bc:	e1d431bc 	ldrh	r3, [r4, #28]
878004c0:	e2833001 	add	r3, r3, #1
878004c4:	e1c431bc 	strh	r3, [r4, #28]
878004c8:	e3a04000 	mov	r4, #0
878004cc:	e1a00005 	mov	r0, r5
878004d0:	ebffff1f 	bl	87800154 <rt_hw_interrupt_enable>
878004d4:	e3540001 	cmp	r4, #1
878004d8:	1a000000 	bne	878004e0 <rt_sem_release+0x50>
878004dc:	eb000967 	bl	87802a80 <rt_schedule>
878004e0:	e3a00000 	mov	r0, #0
878004e4:	e8bd8070 	pop	{r4, r5, r6, pc}

878004e8 <rt_sem_control>:
878004e8:	e3510001 	cmp	r1, #1
878004ec:	1a00000c 	bne	87800524 <rt_sem_control+0x3c>
878004f0:	e92d4070 	push	{r4, r5, r6, lr}
878004f4:	e1a05002 	mov	r5, r2
878004f8:	e1a04000 	mov	r4, r0
878004fc:	ebffff15 	bl	87800158 <rt_hw_interrupt_disable>
87800500:	e1a06000 	mov	r6, r0
87800504:	e2840014 	add	r0, r4, #20
87800508:	ebffff50 	bl	87800250 <rt_ipc_list_resume_all>
8780050c:	e1c451bc 	strh	r5, [r4, #28]
87800510:	e1a00006 	mov	r0, r6
87800514:	ebffff0e 	bl	87800154 <rt_hw_interrupt_enable>
87800518:	eb000958 	bl	87802a80 <rt_schedule>
8780051c:	e3a00000 	mov	r0, #0
87800520:	e8bd8070 	pop	{r4, r5, r6, pc}
87800524:	e3e00000 	mvn	r0, #0
87800528:	e12fff1e 	bx	lr

8780052c <rt_mutex_init>:
8780052c:	e92d4070 	push	{r4, r5, r6, lr}
87800530:	e1a04000 	mov	r4, r0
87800534:	e1a05002 	mov	r5, r2
87800538:	e1a02001 	mov	r2, r1
8780053c:	e3a01003 	mov	r1, #3
87800540:	eb000868 	bl	878026e8 <rt_object_init>
87800544:	e5c45009 	strb	r5, [r4, #9]
87800548:	e2843014 	add	r3, r4, #20
8780054c:	e5843018 	str	r3, [r4, #24]
87800550:	e3a00000 	mov	r0, #0
87800554:	e5843014 	str	r3, [r4, #20]
87800558:	e3a03001 	mov	r3, #1
8780055c:	e1c431bc 	strh	r3, [r4, #28]
87800560:	e3e03000 	mvn	r3, #0
87800564:	e5840020 	str	r0, [r4, #32]
87800568:	e5c4301e 	strb	r3, [r4, #30]
8780056c:	e5c4001f 	strb	r0, [r4, #31]
87800570:	e8bd8070 	pop	{r4, r5, r6, pc}

87800574 <rt_mutex_detach>:
87800574:	e92d4010 	push	{r4, lr}
87800578:	e1a04000 	mov	r4, r0
8780057c:	e2800014 	add	r0, r0, #20
87800580:	ebffff32 	bl	87800250 <rt_ipc_list_resume_all>
87800584:	e1a00004 	mov	r0, r4
87800588:	eb000874 	bl	87802760 <rt_object_detach>
8780058c:	e3a00000 	mov	r0, #0
87800590:	e8bd8010 	pop	{r4, pc}

87800594 <rt_mutex_create>:
87800594:	e92d4010 	push	{r4, lr}
87800598:	e1a04001 	mov	r4, r1
8780059c:	e1a01000 	mov	r1, r0
878005a0:	e3a00003 	mov	r0, #3
878005a4:	eb00087c 	bl	8780279c <rt_object_allocate>
878005a8:	e3500000 	cmp	r0, #0
878005ac:	08bd8010 	popeq	{r4, pc}
878005b0:	e5c04009 	strb	r4, [r0, #9]
878005b4:	e2803014 	add	r3, r0, #20
878005b8:	e5803018 	str	r3, [r0, #24]
878005bc:	e3e02000 	mvn	r2, #0
878005c0:	e5803014 	str	r3, [r0, #20]
878005c4:	e3a03001 	mov	r3, #1
878005c8:	e1c031bc 	strh	r3, [r0, #28]
878005cc:	e3a03000 	mov	r3, #0
878005d0:	e5803020 	str	r3, [r0, #32]
878005d4:	e5c0201e 	strb	r2, [r0, #30]
878005d8:	e5c0301f 	strb	r3, [r0, #31]
878005dc:	e8bd8010 	pop	{r4, pc}

878005e0 <rt_mutex_delete>:
878005e0:	e92d4010 	push	{r4, lr}
878005e4:	e1a04000 	mov	r4, r0
878005e8:	e2800014 	add	r0, r0, #20
878005ec:	ebffff17 	bl	87800250 <rt_ipc_list_resume_all>
878005f0:	e1a00004 	mov	r0, r4
878005f4:	eb000885 	bl	87802810 <rt_object_delete>
878005f8:	e3a00000 	mov	r0, #0
878005fc:	e8bd8010 	pop	{r4, pc}

87800600 <rt_mutex_take>:
87800600:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
87800604:	e1a04000 	mov	r4, r0
87800608:	e58d1004 	str	r1, [sp, #4]
8780060c:	eb0009ed 	bl	87802dc8 <rt_thread_self>
87800610:	e1a05000 	mov	r5, r0
87800614:	ebfffecf 	bl	87800158 <rt_hw_interrupt_disable>
87800618:	e3a03000 	mov	r3, #0
8780061c:	e1a06000 	mov	r6, r0
87800620:	e5853030 	str	r3, [r5, #48]	; 0x30
87800624:	e5943020 	ldr	r3, [r4, #32]
87800628:	e1550003 	cmp	r5, r3
8780062c:	12858035 	addne	r8, r5, #53	; 0x35
87800630:	12849014 	addne	r9, r4, #20
87800634:	0a000007 	beq	87800658 <rt_mutex_take+0x58>
87800638:	e1d431bc 	ldrh	r3, [r4, #28]
8780063c:	e3530000 	cmp	r3, #0
87800640:	0a000008 	beq	87800668 <rt_mutex_take+0x68>
87800644:	e5845020 	str	r5, [r4, #32]
87800648:	e2433001 	sub	r3, r3, #1
8780064c:	e1c431bc 	strh	r3, [r4, #28]
87800650:	e5d53035 	ldrb	r3, [r5, #53]	; 0x35
87800654:	e5c4301e 	strb	r3, [r4, #30]
87800658:	e5d4301f 	ldrb	r3, [r4, #31]
8780065c:	e2833001 	add	r3, r3, #1
87800660:	e5c4301f 	strb	r3, [r4, #31]
87800664:	ea000029 	b	87800710 <rt_mutex_take+0x110>
87800668:	e59d3004 	ldr	r3, [sp, #4]
8780066c:	e3530000 	cmp	r3, #0
87800670:	1a000005 	bne	8780068c <rt_mutex_take+0x8c>
87800674:	e3e04001 	mvn	r4, #1
87800678:	e1a00006 	mov	r0, r6
8780067c:	e5854030 	str	r4, [r5, #48]	; 0x30
87800680:	ebfffeb3 	bl	87800154 <rt_hw_interrupt_enable>
87800684:	e1a00004 	mov	r0, r4
87800688:	ea000023 	b	8780071c <rt_mutex_take+0x11c>
8780068c:	e5940020 	ldr	r0, [r4, #32]
87800690:	e5d52035 	ldrb	r2, [r5, #53]	; 0x35
87800694:	e5d03035 	ldrb	r3, [r0, #53]	; 0x35
87800698:	e1520003 	cmp	r2, r3
8780069c:	2a000002 	bcs	878006ac <rt_mutex_take+0xac>
878006a0:	e1a02008 	mov	r2, r8
878006a4:	e3a01002 	mov	r1, #2
878006a8:	eb000aa1 	bl	87803134 <rt_thread_control>
878006ac:	e5d42009 	ldrb	r2, [r4, #9]
878006b0:	e1a01005 	mov	r1, r5
878006b4:	e1a00009 	mov	r0, r9
878006b8:	ebfffefa 	bl	878002a8 <rt_ipc_list_suspend>
878006bc:	e59d3004 	ldr	r3, [sp, #4]
878006c0:	e3530000 	cmp	r3, #0
878006c4:	da000006 	ble	878006e4 <rt_mutex_take+0xe4>
878006c8:	e285704c 	add	r7, r5, #76	; 0x4c
878006cc:	e28d2004 	add	r2, sp, #4
878006d0:	e3a01000 	mov	r1, #0
878006d4:	e1a00007 	mov	r0, r7
878006d8:	eb000b68 	bl	87803480 <rt_timer_control>
878006dc:	e1a00007 	mov	r0, r7
878006e0:	eb000b26 	bl	87803380 <rt_timer_start>
878006e4:	e1a00006 	mov	r0, r6
878006e8:	ebfffe99 	bl	87800154 <rt_hw_interrupt_enable>
878006ec:	eb0008e3 	bl	87802a80 <rt_schedule>
878006f0:	e5950030 	ldr	r0, [r5, #48]	; 0x30
878006f4:	e3500000 	cmp	r0, #0
878006f8:	0a000002 	beq	87800708 <rt_mutex_take+0x108>
878006fc:	e3700009 	cmn	r0, #9
87800700:	0affffcc 	beq	87800638 <rt_mutex_take+0x38>
87800704:	ea000004 	b	8780071c <rt_mutex_take+0x11c>
87800708:	ebfffe92 	bl	87800158 <rt_hw_interrupt_disable>
8780070c:	e1a06000 	mov	r6, r0
87800710:	e1a00006 	mov	r0, r6
87800714:	ebfffe8e 	bl	87800154 <rt_hw_interrupt_enable>
87800718:	e3a00000 	mov	r0, #0
8780071c:	e28dd00c 	add	sp, sp, #12
87800720:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

87800724 <rt_mutex_release>:
87800724:	e92d4070 	push	{r4, r5, r6, lr}
87800728:	e1a04000 	mov	r4, r0
8780072c:	eb0009a5 	bl	87802dc8 <rt_thread_self>
87800730:	e1a06000 	mov	r6, r0
87800734:	ebfffe87 	bl	87800158 <rt_hw_interrupt_disable>
87800738:	e5943020 	ldr	r3, [r4, #32]
8780073c:	e1560003 	cmp	r6, r3
87800740:	0a000004 	beq	87800758 <rt_mutex_release+0x34>
87800744:	e3e04000 	mvn	r4, #0
87800748:	e5864030 	str	r4, [r6, #48]	; 0x30
8780074c:	ebfffe80 	bl	87800154 <rt_hw_interrupt_enable>
87800750:	e1a00004 	mov	r0, r4
87800754:	e8bd8070 	pop	{r4, r5, r6, pc}
87800758:	e5d4301f 	ldrb	r3, [r4, #31]
8780075c:	e1a05000 	mov	r5, r0
87800760:	e2433001 	sub	r3, r3, #1
87800764:	e6ef3073 	uxtb	r3, r3
87800768:	e5c4301f 	strb	r3, [r4, #31]
8780076c:	e3530000 	cmp	r3, #0
87800770:	13a04000 	movne	r4, #0
87800774:	1a00001d 	bne	878007f0 <rt_mutex_release+0xcc>
87800778:	e5d4201e 	ldrb	r2, [r4, #30]
8780077c:	e5d63035 	ldrb	r3, [r6, #53]	; 0x35
87800780:	e1520003 	cmp	r2, r3
87800784:	0a000003 	beq	87800798 <rt_mutex_release+0x74>
87800788:	e284201e 	add	r2, r4, #30
8780078c:	e3a01002 	mov	r1, #2
87800790:	e1a00006 	mov	r0, r6
87800794:	eb000a66 	bl	87803134 <rt_thread_control>
87800798:	e1a03004 	mov	r3, r4
8780079c:	e5b30014 	ldr	r0, [r3, #20]!
878007a0:	e1500003 	cmp	r0, r3
878007a4:	0a000009 	beq	878007d0 <rt_mutex_release+0xac>
878007a8:	e2403014 	sub	r3, r0, #20
878007ac:	e5843020 	str	r3, [r4, #32]
878007b0:	e5d03021 	ldrb	r3, [r0, #33]	; 0x21
878007b4:	e5c4301e 	strb	r3, [r4, #30]
878007b8:	e5d4301f 	ldrb	r3, [r4, #31]
878007bc:	e2833001 	add	r3, r3, #1
878007c0:	e5c4301f 	strb	r3, [r4, #31]
878007c4:	e3a04001 	mov	r4, #1
878007c8:	ebfffeb1 	bl	87800294 <rt_ipc_list_resume.isra.0>
878007cc:	ea000007 	b	878007f0 <rt_mutex_release+0xcc>
878007d0:	e1d431bc 	ldrh	r3, [r4, #28]
878007d4:	e3e02000 	mvn	r2, #0
878007d8:	e5c4201e 	strb	r2, [r4, #30]
878007dc:	e2833001 	add	r3, r3, #1
878007e0:	e1c431bc 	strh	r3, [r4, #28]
878007e4:	e3a03000 	mov	r3, #0
878007e8:	e5843020 	str	r3, [r4, #32]
878007ec:	e1a04003 	mov	r4, r3
878007f0:	e1a00005 	mov	r0, r5
878007f4:	ebfffe56 	bl	87800154 <rt_hw_interrupt_enable>
878007f8:	e3540001 	cmp	r4, #1
878007fc:	1a000000 	bne	87800804 <rt_mutex_release+0xe0>
87800800:	eb00089e 	bl	87802a80 <rt_schedule>
87800804:	e3a00000 	mov	r0, #0
87800808:	e8bd8070 	pop	{r4, r5, r6, pc}

8780080c <rt_mutex_control>:
8780080c:	e3e00000 	mvn	r0, #0
87800810:	e12fff1e 	bx	lr

87800814 <rt_event_init>:
87800814:	e92d4070 	push	{r4, r5, r6, lr}
87800818:	e1a04000 	mov	r4, r0
8780081c:	e1a05002 	mov	r5, r2
87800820:	e1a02001 	mov	r2, r1
87800824:	e3a01004 	mov	r1, #4
87800828:	eb0007ae 	bl	878026e8 <rt_object_init>
8780082c:	e5c45009 	strb	r5, [r4, #9]
87800830:	e2843014 	add	r3, r4, #20
87800834:	e5843018 	str	r3, [r4, #24]
87800838:	e3a00000 	mov	r0, #0
8780083c:	e5843014 	str	r3, [r4, #20]
87800840:	e584001c 	str	r0, [r4, #28]
87800844:	e8bd8070 	pop	{r4, r5, r6, pc}

87800848 <rt_event_detach>:
87800848:	e92d4010 	push	{r4, lr}
8780084c:	e1a04000 	mov	r4, r0
87800850:	e2800014 	add	r0, r0, #20
87800854:	ebfffe7d 	bl	87800250 <rt_ipc_list_resume_all>
87800858:	e1a00004 	mov	r0, r4
8780085c:	eb0007bf 	bl	87802760 <rt_object_detach>
87800860:	e3a00000 	mov	r0, #0
87800864:	e8bd8010 	pop	{r4, pc}

87800868 <rt_event_create>:
87800868:	e92d4010 	push	{r4, lr}
8780086c:	e1a04001 	mov	r4, r1
87800870:	e1a01000 	mov	r1, r0
87800874:	e3a00004 	mov	r0, #4
87800878:	eb0007c7 	bl	8780279c <rt_object_allocate>
8780087c:	e3500000 	cmp	r0, #0
87800880:	12803014 	addne	r3, r0, #20
87800884:	15803018 	strne	r3, [r0, #24]
87800888:	15803014 	strne	r3, [r0, #20]
8780088c:	13a03000 	movne	r3, #0
87800890:	15c04009 	strbne	r4, [r0, #9]
87800894:	1580301c 	strne	r3, [r0, #28]
87800898:	e8bd8010 	pop	{r4, pc}

8780089c <rt_event_delete>:
8780089c:	e92d4010 	push	{r4, lr}
878008a0:	e1a04000 	mov	r4, r0
878008a4:	e2800014 	add	r0, r0, #20
878008a8:	ebfffe68 	bl	87800250 <rt_ipc_list_resume_all>
878008ac:	e1a00004 	mov	r0, r4
878008b0:	eb0007d6 	bl	87802810 <rt_object_delete>
878008b4:	e3a00000 	mov	r0, #0
878008b8:	e8bd8010 	pop	{r4, pc}

878008bc <rt_event_send>:
878008bc:	e3510000 	cmp	r1, #0
878008c0:	0a000031 	beq	8780098c <rt_event_send+0xd0>
878008c4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878008c8:	e1a04000 	mov	r4, r0
878008cc:	e1a05001 	mov	r5, r1
878008d0:	ebfffe20 	bl	87800158 <rt_hw_interrupt_disable>
878008d4:	e594101c 	ldr	r1, [r4, #28]
878008d8:	e1a06000 	mov	r6, r0
878008dc:	e5940014 	ldr	r0, [r4, #20]
878008e0:	e2847014 	add	r7, r4, #20
878008e4:	e1815005 	orr	r5, r1, r5
878008e8:	e1570000 	cmp	r7, r0
878008ec:	e584501c 	str	r5, [r4, #28]
878008f0:	e3a05000 	mov	r5, #0
878008f4:	0a00001e 	beq	87800974 <rt_event_send+0xb8>
878008f8:	e5d0202c 	ldrb	r2, [r0, #44]	; 0x2c
878008fc:	e2123001 	ands	r3, r2, #1
87800900:	0a000005 	beq	8780091c <rt_event_send+0x60>
87800904:	e5903028 	ldr	r3, [r0, #40]	; 0x28
87800908:	e594101c 	ldr	r1, [r4, #28]
8780090c:	e1d33001 	bics	r3, r3, r1
87800910:	13e03000 	mvnne	r3, #0
87800914:	03a03000 	moveq	r3, #0
87800918:	ea000007 	b	8780093c <rt_event_send+0x80>
8780091c:	e3120002 	tst	r2, #2
87800920:	0a000004 	beq	87800938 <rt_event_send+0x7c>
87800924:	e5901028 	ldr	r1, [r0, #40]	; 0x28
87800928:	e594c01c 	ldr	ip, [r4, #28]
8780092c:	e011100c 	ands	r1, r1, ip
87800930:	15801028 	strne	r1, [r0, #40]	; 0x28
87800934:	1a000000 	bne	8780093c <rt_event_send+0x80>
87800938:	e3e03000 	mvn	r3, #0
8780093c:	e5908000 	ldr	r8, [r0]
87800940:	e3530000 	cmp	r3, #0
87800944:	1a000007 	bne	87800968 <rt_event_send+0xac>
87800948:	e3120004 	tst	r2, #4
8780094c:	e2400014 	sub	r0, r0, #20
87800950:	e3a05001 	mov	r5, #1
87800954:	1590203c 	ldrne	r2, [r0, #60]	; 0x3c
87800958:	1594301c 	ldrne	r3, [r4, #28]
8780095c:	11c33002 	bicne	r3, r3, r2
87800960:	1584301c 	strne	r3, [r4, #28]
87800964:	eb0009c7 	bl	87803088 <rt_thread_resume>
87800968:	e1570008 	cmp	r7, r8
8780096c:	11a00008 	movne	r0, r8
87800970:	1affffe0 	bne	878008f8 <rt_event_send+0x3c>
87800974:	e1a00006 	mov	r0, r6
87800978:	ebfffdf5 	bl	87800154 <rt_hw_interrupt_enable>
8780097c:	e3550001 	cmp	r5, #1
87800980:	1a000003 	bne	87800994 <rt_event_send+0xd8>
87800984:	eb00083d 	bl	87802a80 <rt_schedule>
87800988:	ea000001 	b	87800994 <rt_event_send+0xd8>
8780098c:	e3e00000 	mvn	r0, #0
87800990:	e12fff1e 	bx	lr
87800994:	e3a00000 	mov	r0, #0
87800998:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

8780099c <rt_event_recv>:
8780099c:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
878009a0:	e3510000 	cmp	r1, #0
878009a4:	e58d3004 	str	r3, [sp, #4]
878009a8:	03e00000 	mvneq	r0, #0
878009ac:	e59d8028 	ldr	r8, [sp, #40]	; 0x28
878009b0:	0a00003e 	beq	87800ab0 <rt_event_recv+0x114>
878009b4:	e1a07002 	mov	r7, r2
878009b8:	e1a06001 	mov	r6, r1
878009bc:	e1a05000 	mov	r5, r0
878009c0:	eb000900 	bl	87802dc8 <rt_thread_self>
878009c4:	e3a03000 	mov	r3, #0
878009c8:	e1a04000 	mov	r4, r0
878009cc:	e5803030 	str	r3, [r0, #48]	; 0x30
878009d0:	ebfffde0 	bl	87800158 <rt_hw_interrupt_disable>
878009d4:	e3170001 	tst	r7, #1
878009d8:	e1a09000 	mov	r9, r0
878009dc:	0a000003 	beq	878009f0 <rt_event_recv+0x54>
878009e0:	e595301c 	ldr	r3, [r5, #28]
878009e4:	e1d63003 	bics	r3, r6, r3
878009e8:	1a000005 	bne	87800a04 <rt_event_recv+0x68>
878009ec:	ea000026 	b	87800a8c <rt_event_recv+0xf0>
878009f0:	e3170002 	tst	r7, #2
878009f4:	0a000002 	beq	87800a04 <rt_event_recv+0x68>
878009f8:	e595301c 	ldr	r3, [r5, #28]
878009fc:	e1160003 	tst	r6, r3
87800a00:	1a000021 	bne	87800a8c <rt_event_recv+0xf0>
87800a04:	e59d3004 	ldr	r3, [sp, #4]
87800a08:	e3530000 	cmp	r3, #0
87800a0c:	03e03001 	mvneq	r3, #1
87800a10:	05843030 	streq	r3, [r4, #48]	; 0x30
87800a14:	0a000019 	beq	87800a80 <rt_event_recv+0xe4>
87800a18:	e584603c 	str	r6, [r4, #60]	; 0x3c
87800a1c:	e1a01004 	mov	r1, r4
87800a20:	e5c47040 	strb	r7, [r4, #64]	; 0x40
87800a24:	e2850014 	add	r0, r5, #20
87800a28:	e5d52009 	ldrb	r2, [r5, #9]
87800a2c:	ebfffe1d 	bl	878002a8 <rt_ipc_list_suspend>
87800a30:	e59d3004 	ldr	r3, [sp, #4]
87800a34:	e3530000 	cmp	r3, #0
87800a38:	da000006 	ble	87800a58 <rt_event_recv+0xbc>
87800a3c:	e284504c 	add	r5, r4, #76	; 0x4c
87800a40:	e28d2004 	add	r2, sp, #4
87800a44:	e3a01000 	mov	r1, #0
87800a48:	e1a00005 	mov	r0, r5
87800a4c:	eb000a8b 	bl	87803480 <rt_timer_control>
87800a50:	e1a00005 	mov	r0, r5
87800a54:	eb000a49 	bl	87803380 <rt_timer_start>
87800a58:	e1a00009 	mov	r0, r9
87800a5c:	ebfffdbc 	bl	87800154 <rt_hw_interrupt_enable>
87800a60:	eb000806 	bl	87802a80 <rt_schedule>
87800a64:	e5940030 	ldr	r0, [r4, #48]	; 0x30
87800a68:	e3500000 	cmp	r0, #0
87800a6c:	1a00000f 	bne	87800ab0 <rt_event_recv+0x114>
87800a70:	ebfffdb8 	bl	87800158 <rt_hw_interrupt_disable>
87800a74:	e3580000 	cmp	r8, #0
87800a78:	1594303c 	ldrne	r3, [r4, #60]	; 0x3c
87800a7c:	15883000 	strne	r3, [r8]
87800a80:	ebfffdb3 	bl	87800154 <rt_hw_interrupt_enable>
87800a84:	e5940030 	ldr	r0, [r4, #48]	; 0x30
87800a88:	ea000008 	b	87800ab0 <rt_event_recv+0x114>
87800a8c:	e3580000 	cmp	r8, #0
87800a90:	1595301c 	ldrne	r3, [r5, #28]
87800a94:	10033006 	andne	r3, r3, r6
87800a98:	15883000 	strne	r3, [r8]
87800a9c:	e3170004 	tst	r7, #4
87800aa0:	1595101c 	ldrne	r1, [r5, #28]
87800aa4:	11c16006 	bicne	r6, r1, r6
87800aa8:	1585601c 	strne	r6, [r5, #28]
87800aac:	eafffff3 	b	87800a80 <rt_event_recv+0xe4>
87800ab0:	e28dd00c 	add	sp, sp, #12
87800ab4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

87800ab8 <rt_event_control>:
87800ab8:	e3510001 	cmp	r1, #1
87800abc:	1a00000c 	bne	87800af4 <rt_event_control+0x3c>
87800ac0:	e92d4070 	push	{r4, r5, r6, lr}
87800ac4:	e1a05000 	mov	r5, r0
87800ac8:	e3a04000 	mov	r4, #0
87800acc:	ebfffda1 	bl	87800158 <rt_hw_interrupt_disable>
87800ad0:	e1a06000 	mov	r6, r0
87800ad4:	e2850014 	add	r0, r5, #20
87800ad8:	ebfffddc 	bl	87800250 <rt_ipc_list_resume_all>
87800adc:	e585401c 	str	r4, [r5, #28]
87800ae0:	e1a00006 	mov	r0, r6
87800ae4:	ebfffd9a 	bl	87800154 <rt_hw_interrupt_enable>
87800ae8:	eb0007e4 	bl	87802a80 <rt_schedule>
87800aec:	e1a00004 	mov	r0, r4
87800af0:	e8bd8070 	pop	{r4, r5, r6, pc}
87800af4:	e3e00000 	mvn	r0, #0
87800af8:	e12fff1e 	bx	lr

87800afc <rt_mb_init>:
87800afc:	e92d4070 	push	{r4, r5, r6, lr}
87800b00:	e1a06002 	mov	r6, r2
87800b04:	e1a02001 	mov	r2, r1
87800b08:	e3a01005 	mov	r1, #5
87800b0c:	e1a04000 	mov	r4, r0
87800b10:	e1a05003 	mov	r5, r3
87800b14:	eb0006f3 	bl	878026e8 <rt_object_init>
87800b18:	e5dd3010 	ldrb	r3, [sp, #16]
87800b1c:	e3a00000 	mov	r0, #0
87800b20:	e584601c 	str	r6, [r4, #28]
87800b24:	e2842014 	add	r2, r4, #20
87800b28:	e5c43009 	strb	r3, [r4, #9]
87800b2c:	e2843028 	add	r3, r4, #40	; 0x28
87800b30:	e5842018 	str	r2, [r4, #24]
87800b34:	e5842014 	str	r2, [r4, #20]
87800b38:	e1c452b0 	strh	r5, [r4, #32]
87800b3c:	e1c402b2 	strh	r0, [r4, #34]	; 0x22
87800b40:	e1c402b4 	strh	r0, [r4, #36]	; 0x24
87800b44:	e1c402b6 	strh	r0, [r4, #38]	; 0x26
87800b48:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800b4c:	e5843028 	str	r3, [r4, #40]	; 0x28
87800b50:	e8bd8070 	pop	{r4, r5, r6, pc}

87800b54 <rt_mb_detach>:
87800b54:	e92d4010 	push	{r4, lr}
87800b58:	e1a04000 	mov	r4, r0
87800b5c:	e2800014 	add	r0, r0, #20
87800b60:	ebfffdba 	bl	87800250 <rt_ipc_list_resume_all>
87800b64:	e2840028 	add	r0, r4, #40	; 0x28
87800b68:	ebfffdb8 	bl	87800250 <rt_ipc_list_resume_all>
87800b6c:	e1a00004 	mov	r0, r4
87800b70:	eb0006fa 	bl	87802760 <rt_object_detach>
87800b74:	e3a00000 	mov	r0, #0
87800b78:	e8bd8010 	pop	{r4, pc}

87800b7c <rt_mb_create>:
87800b7c:	e92d4070 	push	{r4, r5, r6, lr}
87800b80:	e1a05001 	mov	r5, r1
87800b84:	e1a01000 	mov	r1, r0
87800b88:	e3a00005 	mov	r0, #5
87800b8c:	e1a06002 	mov	r6, r2
87800b90:	eb000701 	bl	8780279c <rt_object_allocate>
87800b94:	e2504000 	subs	r4, r0, #0
87800b98:	0a000016 	beq	87800bf8 <rt_mb_create+0x7c>
87800b9c:	e1c452b0 	strh	r5, [r4, #32]
87800ba0:	e6ff0075 	uxth	r0, r5
87800ba4:	e5c46009 	strb	r6, [r4, #9]
87800ba8:	e2843014 	add	r3, r4, #20
87800bac:	e5843018 	str	r3, [r4, #24]
87800bb0:	e5843014 	str	r3, [r4, #20]
87800bb4:	e1a00100 	lsl	r0, r0, #2
87800bb8:	eb0005c8 	bl	878022e0 <rt_malloc>
87800bbc:	e584001c 	str	r0, [r4, #28]
87800bc0:	e3500000 	cmp	r0, #0
87800bc4:	e1a05000 	mov	r5, r0
87800bc8:	e3a03000 	mov	r3, #0
87800bcc:	1a000003 	bne	87800be0 <rt_mb_create+0x64>
87800bd0:	e1a00004 	mov	r0, r4
87800bd4:	eb00070d 	bl	87802810 <rt_object_delete>
87800bd8:	e1a00005 	mov	r0, r5
87800bdc:	e8bd8070 	pop	{r4, r5, r6, pc}
87800be0:	e1c432b2 	strh	r3, [r4, #34]	; 0x22
87800be4:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87800be8:	e1c432b6 	strh	r3, [r4, #38]	; 0x26
87800bec:	e2843028 	add	r3, r4, #40	; 0x28
87800bf0:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800bf4:	e5843028 	str	r3, [r4, #40]	; 0x28
87800bf8:	e1a00004 	mov	r0, r4
87800bfc:	e8bd8070 	pop	{r4, r5, r6, pc}

87800c00 <rt_mb_delete>:
87800c00:	e92d4010 	push	{r4, lr}
87800c04:	e1a04000 	mov	r4, r0
87800c08:	e2800014 	add	r0, r0, #20
87800c0c:	ebfffd8f 	bl	87800250 <rt_ipc_list_resume_all>
87800c10:	e2840028 	add	r0, r4, #40	; 0x28
87800c14:	ebfffd8d 	bl	87800250 <rt_ipc_list_resume_all>
87800c18:	e594001c 	ldr	r0, [r4, #28]
87800c1c:	eb00061d 	bl	87802498 <rt_free>
87800c20:	e1a00004 	mov	r0, r4
87800c24:	eb0006f9 	bl	87802810 <rt_object_delete>
87800c28:	e3a00000 	mov	r0, #0
87800c2c:	e8bd8010 	pop	{r4, pc}

87800c30 <rt_mb_send_wait>:
87800c30:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87800c34:	e1a04000 	mov	r4, r0
87800c38:	e58d2004 	str	r2, [sp, #4]
87800c3c:	e1a09001 	mov	r9, r1
87800c40:	eb000860 	bl	87802dc8 <rt_thread_self>
87800c44:	e1a07000 	mov	r7, r0
87800c48:	ebfffd42 	bl	87800158 <rt_hw_interrupt_disable>
87800c4c:	e1d422b2 	ldrh	r2, [r4, #34]	; 0x22
87800c50:	e1a06000 	mov	r6, r0
87800c54:	e1d412b0 	ldrh	r1, [r4, #32]
87800c58:	e1520001 	cmp	r2, r1
87800c5c:	1a000033 	bne	87800d30 <rt_mb_send_wait+0x100>
87800c60:	e59d3004 	ldr	r3, [sp, #4]
87800c64:	e3530000 	cmp	r3, #0
87800c68:	0a00002d 	beq	87800d24 <rt_mb_send_wait+0xf4>
87800c6c:	e3a05000 	mov	r5, #0
87800c70:	e284b028 	add	fp, r4, #40	; 0x28
87800c74:	e1a0a005 	mov	sl, r5
87800c78:	e287804c 	add	r8, r7, #76	; 0x4c
87800c7c:	ea00001f 	b	87800d00 <rt_mb_send_wait+0xd0>
87800c80:	e5d42009 	ldrb	r2, [r4, #9]
87800c84:	e1a01007 	mov	r1, r7
87800c88:	e1a0000b 	mov	r0, fp
87800c8c:	ebfffd85 	bl	878002a8 <rt_ipc_list_suspend>
87800c90:	e59d3004 	ldr	r3, [sp, #4]
87800c94:	e3530000 	cmp	r3, #0
87800c98:	da000007 	ble	87800cbc <rt_mb_send_wait+0x8c>
87800c9c:	ebfffd3b 	bl	87800190 <rt_tick_get>
87800ca0:	e1a05000 	mov	r5, r0
87800ca4:	e28d2004 	add	r2, sp, #4
87800ca8:	e3a01000 	mov	r1, #0
87800cac:	e1a00008 	mov	r0, r8
87800cb0:	eb0009f2 	bl	87803480 <rt_timer_control>
87800cb4:	e1a00008 	mov	r0, r8
87800cb8:	eb0009b0 	bl	87803380 <rt_timer_start>
87800cbc:	e1a00006 	mov	r0, r6
87800cc0:	ebfffd23 	bl	87800154 <rt_hw_interrupt_enable>
87800cc4:	eb00076d 	bl	87802a80 <rt_schedule>
87800cc8:	e5970030 	ldr	r0, [r7, #48]	; 0x30
87800ccc:	e3500000 	cmp	r0, #0
87800cd0:	1a00002b 	bne	87800d84 <rt_mb_send_wait+0x154>
87800cd4:	ebfffd1f 	bl	87800158 <rt_hw_interrupt_disable>
87800cd8:	e59d3004 	ldr	r3, [sp, #4]
87800cdc:	e1a06000 	mov	r6, r0
87800ce0:	e3530000 	cmp	r3, #0
87800ce4:	da000005 	ble	87800d00 <rt_mb_send_wait+0xd0>
87800ce8:	ebfffd28 	bl	87800190 <rt_tick_get>
87800cec:	e59d3004 	ldr	r3, [sp, #4]
87800cf0:	e0655000 	rsb	r5, r5, r0
87800cf4:	e0533005 	subs	r3, r3, r5
87800cf8:	43a03000 	movmi	r3, #0
87800cfc:	e58d3004 	str	r3, [sp, #4]
87800d00:	e1d422b2 	ldrh	r2, [r4, #34]	; 0x22
87800d04:	e1d412b0 	ldrh	r1, [r4, #32]
87800d08:	e1520001 	cmp	r2, r1
87800d0c:	1a000007 	bne	87800d30 <rt_mb_send_wait+0x100>
87800d10:	e59d3004 	ldr	r3, [sp, #4]
87800d14:	e587a030 	str	sl, [r7, #48]	; 0x30
87800d18:	e3530000 	cmp	r3, #0
87800d1c:	1affffd7 	bne	87800c80 <rt_mb_send_wait+0x50>
87800d20:	e1a00006 	mov	r0, r6
87800d24:	ebfffd0a 	bl	87800154 <rt_hw_interrupt_enable>
87800d28:	e3e00002 	mvn	r0, #2
87800d2c:	ea000014 	b	87800d84 <rt_mb_send_wait+0x154>
87800d30:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87800d34:	e2822001 	add	r2, r2, #1
87800d38:	e594001c 	ldr	r0, [r4, #28]
87800d3c:	e7809103 	str	r9, [r0, r3, lsl #2]
87800d40:	e2833001 	add	r3, r3, #1
87800d44:	e1c422b2 	strh	r2, [r4, #34]	; 0x22
87800d48:	e6ff3073 	uxth	r3, r3
87800d4c:	e1530001 	cmp	r3, r1
87800d50:	23a03000 	movcs	r3, #0
87800d54:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87800d58:	e5b40014 	ldr	r0, [r4, #20]!
87800d5c:	e1500004 	cmp	r0, r4
87800d60:	0a000004 	beq	87800d78 <rt_mb_send_wait+0x148>
87800d64:	ebfffd4a 	bl	87800294 <rt_ipc_list_resume.isra.0>
87800d68:	e1a00006 	mov	r0, r6
87800d6c:	ebfffcf8 	bl	87800154 <rt_hw_interrupt_enable>
87800d70:	eb000742 	bl	87802a80 <rt_schedule>
87800d74:	ea000001 	b	87800d80 <rt_mb_send_wait+0x150>
87800d78:	e1a00006 	mov	r0, r6
87800d7c:	ebfffcf4 	bl	87800154 <rt_hw_interrupt_enable>
87800d80:	e3a00000 	mov	r0, #0
87800d84:	e28dd00c 	add	sp, sp, #12
87800d88:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87800d8c <rt_mb_send>:
87800d8c:	e3a02000 	mov	r2, #0
87800d90:	eaffffa6 	b	87800c30 <rt_mb_send_wait>

87800d94 <rt_mb_recv>:
87800d94:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87800d98:	e1a04000 	mov	r4, r0
87800d9c:	e58d2004 	str	r2, [sp, #4]
87800da0:	e1a09001 	mov	r9, r1
87800da4:	eb000807 	bl	87802dc8 <rt_thread_self>
87800da8:	e1a07000 	mov	r7, r0
87800dac:	ebfffce9 	bl	87800158 <rt_hw_interrupt_disable>
87800db0:	e1d4b2b2 	ldrh	fp, [r4, #34]	; 0x22
87800db4:	e1a05000 	mov	r5, r0
87800db8:	e35b0000 	cmp	fp, #0
87800dbc:	1a000034 	bne	87800e94 <rt_mb_recv+0x100>
87800dc0:	e59d3004 	ldr	r3, [sp, #4]
87800dc4:	e3530000 	cmp	r3, #0
87800dc8:	11a0600b 	movne	r6, fp
87800dcc:	1284a014 	addne	sl, r4, #20
87800dd0:	1287804c 	addne	r8, r7, #76	; 0x4c
87800dd4:	1a000022 	bne	87800e64 <rt_mb_recv+0xd0>
87800dd8:	ebfffcdd 	bl	87800154 <rt_hw_interrupt_enable>
87800ddc:	e3e00001 	mvn	r0, #1
87800de0:	ea000043 	b	87800ef4 <rt_mb_recv+0x160>
87800de4:	e5d42009 	ldrb	r2, [r4, #9]
87800de8:	e1a01007 	mov	r1, r7
87800dec:	e1a0000a 	mov	r0, sl
87800df0:	ebfffd2c 	bl	878002a8 <rt_ipc_list_suspend>
87800df4:	e59d3004 	ldr	r3, [sp, #4]
87800df8:	e3530000 	cmp	r3, #0
87800dfc:	da000007 	ble	87800e20 <rt_mb_recv+0x8c>
87800e00:	ebfffce2 	bl	87800190 <rt_tick_get>
87800e04:	e1a06000 	mov	r6, r0
87800e08:	e28d2004 	add	r2, sp, #4
87800e0c:	e1a0100b 	mov	r1, fp
87800e10:	e1a00008 	mov	r0, r8
87800e14:	eb000999 	bl	87803480 <rt_timer_control>
87800e18:	e1a00008 	mov	r0, r8
87800e1c:	eb000957 	bl	87803380 <rt_timer_start>
87800e20:	e1a00005 	mov	r0, r5
87800e24:	ebfffcca 	bl	87800154 <rt_hw_interrupt_enable>
87800e28:	eb000714 	bl	87802a80 <rt_schedule>
87800e2c:	e5970030 	ldr	r0, [r7, #48]	; 0x30
87800e30:	e3500000 	cmp	r0, #0
87800e34:	1a00002e 	bne	87800ef4 <rt_mb_recv+0x160>
87800e38:	ebfffcc6 	bl	87800158 <rt_hw_interrupt_disable>
87800e3c:	e59d3004 	ldr	r3, [sp, #4]
87800e40:	e1a05000 	mov	r5, r0
87800e44:	e3530000 	cmp	r3, #0
87800e48:	da000005 	ble	87800e64 <rt_mb_recv+0xd0>
87800e4c:	ebfffccf 	bl	87800190 <rt_tick_get>
87800e50:	e59d3004 	ldr	r3, [sp, #4]
87800e54:	e0666000 	rsb	r6, r6, r0
87800e58:	e0533006 	subs	r3, r3, r6
87800e5c:	43a03000 	movmi	r3, #0
87800e60:	e58d3004 	str	r3, [sp, #4]
87800e64:	e1d4b2b2 	ldrh	fp, [r4, #34]	; 0x22
87800e68:	e35b0000 	cmp	fp, #0
87800e6c:	1a000008 	bne	87800e94 <rt_mb_recv+0x100>
87800e70:	e59d3004 	ldr	r3, [sp, #4]
87800e74:	e587b030 	str	fp, [r7, #48]	; 0x30
87800e78:	e3530000 	cmp	r3, #0
87800e7c:	1affffd8 	bne	87800de4 <rt_mb_recv+0x50>
87800e80:	e1a00005 	mov	r0, r5
87800e84:	ebfffcb2 	bl	87800154 <rt_hw_interrupt_enable>
87800e88:	e3e00001 	mvn	r0, #1
87800e8c:	e5870030 	str	r0, [r7, #48]	; 0x30
87800e90:	ea000017 	b	87800ef4 <rt_mb_recv+0x160>
87800e94:	e1d432b6 	ldrh	r3, [r4, #38]	; 0x26
87800e98:	e24bb001 	sub	fp, fp, #1
87800e9c:	e594201c 	ldr	r2, [r4, #28]
87800ea0:	e7922103 	ldr	r2, [r2, r3, lsl #2]
87800ea4:	e2833001 	add	r3, r3, #1
87800ea8:	e6ff3073 	uxth	r3, r3
87800eac:	e5892000 	str	r2, [r9]
87800eb0:	e1d422b0 	ldrh	r2, [r4, #32]
87800eb4:	e1c432b6 	strh	r3, [r4, #38]	; 0x26
87800eb8:	e1520003 	cmp	r2, r3
87800ebc:	e1c4b2b2 	strh	fp, [r4, #34]	; 0x22
87800ec0:	93a03000 	movls	r3, #0
87800ec4:	91c432b6 	strhls	r3, [r4, #38]	; 0x26
87800ec8:	e5b40028 	ldr	r0, [r4, #40]!	; 0x28
87800ecc:	e1500004 	cmp	r0, r4
87800ed0:	0a000004 	beq	87800ee8 <rt_mb_recv+0x154>
87800ed4:	ebfffcee 	bl	87800294 <rt_ipc_list_resume.isra.0>
87800ed8:	e1a00005 	mov	r0, r5
87800edc:	ebfffc9c 	bl	87800154 <rt_hw_interrupt_enable>
87800ee0:	eb0006e6 	bl	87802a80 <rt_schedule>
87800ee4:	ea000001 	b	87800ef0 <rt_mb_recv+0x15c>
87800ee8:	e1a00005 	mov	r0, r5
87800eec:	ebfffc98 	bl	87800154 <rt_hw_interrupt_enable>
87800ef0:	e3a00000 	mov	r0, #0
87800ef4:	e28dd00c 	add	sp, sp, #12
87800ef8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87800efc <rt_mb_control>:
87800efc:	e3510001 	cmp	r1, #1
87800f00:	1a000010 	bne	87800f48 <rt_mb_control+0x4c>
87800f04:	e92d4070 	push	{r4, r5, r6, lr}
87800f08:	e1a05000 	mov	r5, r0
87800f0c:	e3a04000 	mov	r4, #0
87800f10:	ebfffc90 	bl	87800158 <rt_hw_interrupt_disable>
87800f14:	e1a06000 	mov	r6, r0
87800f18:	e2850014 	add	r0, r5, #20
87800f1c:	ebfffccb 	bl	87800250 <rt_ipc_list_resume_all>
87800f20:	e2850028 	add	r0, r5, #40	; 0x28
87800f24:	ebfffcc9 	bl	87800250 <rt_ipc_list_resume_all>
87800f28:	e1c542b2 	strh	r4, [r5, #34]	; 0x22
87800f2c:	e1a00006 	mov	r0, r6
87800f30:	e1c542b4 	strh	r4, [r5, #36]	; 0x24
87800f34:	e1c542b6 	strh	r4, [r5, #38]	; 0x26
87800f38:	ebfffc85 	bl	87800154 <rt_hw_interrupt_enable>
87800f3c:	eb0006cf 	bl	87802a80 <rt_schedule>
87800f40:	e1a00004 	mov	r0, r4
87800f44:	e8bd8070 	pop	{r4, r5, r6, pc}
87800f48:	e3e00000 	mvn	r0, #0
87800f4c:	e12fff1e 	bx	lr

87800f50 <rt_mq_init>:
87800f50:	e92d4070 	push	{r4, r5, r6, lr}
87800f54:	e1a05003 	mov	r5, r3
87800f58:	e1a06002 	mov	r6, r2
87800f5c:	e2855003 	add	r5, r5, #3
87800f60:	e3c55003 	bic	r5, r5, #3
87800f64:	e1a02001 	mov	r2, r1
87800f68:	e3a01006 	mov	r1, #6
87800f6c:	e1a04000 	mov	r4, r0
87800f70:	e6ff5075 	uxth	r5, r5
87800f74:	eb0005db 	bl	878026e8 <rt_object_init>
87800f78:	e5dd3014 	ldrb	r3, [sp, #20]
87800f7c:	e1c452b0 	strh	r5, [r4, #32]
87800f80:	e2855004 	add	r5, r5, #4
87800f84:	e5c43009 	strb	r3, [r4, #9]
87800f88:	e2843014 	add	r3, r4, #20
87800f8c:	e5843018 	str	r3, [r4, #24]
87800f90:	e1a01005 	mov	r1, r5
87800f94:	e5843014 	str	r3, [r4, #20]
87800f98:	e584601c 	str	r6, [r4, #28]
87800f9c:	e59d0010 	ldr	r0, [sp, #16]
87800fa0:	fa0009b8 	blx	87803688 <__aeabi_uidiv>
87800fa4:	e1c402b2 	strh	r0, [r4, #34]	; 0x22
87800fa8:	e1a02006 	mov	r2, r6
87800fac:	e6ff0070 	uxth	r0, r0
87800fb0:	e3a03000 	mov	r3, #0
87800fb4:	e5843028 	str	r3, [r4, #40]	; 0x28
87800fb8:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800fbc:	e5843030 	str	r3, [r4, #48]	; 0x30
87800fc0:	e1530000 	cmp	r3, r0
87800fc4:	aa000005 	bge	87800fe0 <rt_mq_init+0x90>
87800fc8:	e5941030 	ldr	r1, [r4, #48]	; 0x30
87800fcc:	e2833001 	add	r3, r3, #1
87800fd0:	e5821000 	str	r1, [r2]
87800fd4:	e5842030 	str	r2, [r4, #48]	; 0x30
87800fd8:	e0822005 	add	r2, r2, r5
87800fdc:	eafffff7 	b	87800fc0 <rt_mq_init+0x70>
87800fe0:	e2843034 	add	r3, r4, #52	; 0x34
87800fe4:	e3a00000 	mov	r0, #0
87800fe8:	e1c402b4 	strh	r0, [r4, #36]	; 0x24
87800fec:	e5843038 	str	r3, [r4, #56]	; 0x38
87800ff0:	e5843034 	str	r3, [r4, #52]	; 0x34
87800ff4:	e8bd8070 	pop	{r4, r5, r6, pc}

87800ff8 <rt_mq_detach>:
87800ff8:	e92d4010 	push	{r4, lr}
87800ffc:	e1a04000 	mov	r4, r0
87801000:	e2800014 	add	r0, r0, #20
87801004:	ebfffc91 	bl	87800250 <rt_ipc_list_resume_all>
87801008:	e2840034 	add	r0, r4, #52	; 0x34
8780100c:	ebfffc8f 	bl	87800250 <rt_ipc_list_resume_all>
87801010:	e1a00004 	mov	r0, r4
87801014:	eb0005d1 	bl	87802760 <rt_object_detach>
87801018:	e3a00000 	mov	r0, #0
8780101c:	e8bd8010 	pop	{r4, pc}

87801020 <rt_mq_delete>:
87801020:	e92d4010 	push	{r4, lr}
87801024:	e1a04000 	mov	r4, r0
87801028:	e2800014 	add	r0, r0, #20
8780102c:	ebfffc87 	bl	87800250 <rt_ipc_list_resume_all>
87801030:	e2840034 	add	r0, r4, #52	; 0x34
87801034:	ebfffc85 	bl	87800250 <rt_ipc_list_resume_all>
87801038:	e594001c 	ldr	r0, [r4, #28]
8780103c:	eb000515 	bl	87802498 <rt_free>
87801040:	e1a00004 	mov	r0, r4
87801044:	eb0005f1 	bl	87802810 <rt_object_delete>
87801048:	e3a00000 	mov	r0, #0
8780104c:	e8bd8010 	pop	{r4, pc}

87801050 <rt_mq_create>:
87801050:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87801054:	e1a05001 	mov	r5, r1
87801058:	e1a01000 	mov	r1, r0
8780105c:	e3a00006 	mov	r0, #6
87801060:	e1a06002 	mov	r6, r2
87801064:	e1a07003 	mov	r7, r3
87801068:	eb0005cb 	bl	8780279c <rt_object_allocate>
8780106c:	e2504000 	subs	r4, r0, #0
87801070:	0a000029 	beq	8780111c <rt_mq_create+0xcc>
87801074:	e1c462b2 	strh	r6, [r4, #34]	; 0x22
87801078:	e2850003 	add	r0, r5, #3
8780107c:	e3c00003 	bic	r0, r0, #3
87801080:	e2843014 	add	r3, r4, #20
87801084:	e5843018 	str	r3, [r4, #24]
87801088:	e6ff0070 	uxth	r0, r0
8780108c:	e1c402b0 	strh	r0, [r4, #32]
87801090:	e6ff6076 	uxth	r6, r6
87801094:	e5843014 	str	r3, [r4, #20]
87801098:	e2800004 	add	r0, r0, #4
8780109c:	e5c47009 	strb	r7, [r4, #9]
878010a0:	e0000096 	mul	r0, r6, r0
878010a4:	eb00048d 	bl	878022e0 <rt_malloc>
878010a8:	e584001c 	str	r0, [r4, #28]
878010ac:	e3500000 	cmp	r0, #0
878010b0:	e1a05000 	mov	r5, r0
878010b4:	e3a03000 	mov	r3, #0
878010b8:	1a000003 	bne	878010cc <rt_mq_create+0x7c>
878010bc:	e1a00004 	mov	r0, r4
878010c0:	ebffffd6 	bl	87801020 <rt_mq_delete>
878010c4:	e1a00005 	mov	r0, r5
878010c8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878010cc:	e1d412b2 	ldrh	r1, [r4, #34]	; 0x22
878010d0:	e5843028 	str	r3, [r4, #40]	; 0x28
878010d4:	e584302c 	str	r3, [r4, #44]	; 0x2c
878010d8:	e5843030 	str	r3, [r4, #48]	; 0x30
878010dc:	e1530001 	cmp	r3, r1
878010e0:	aa000008 	bge	87801108 <rt_mq_create+0xb8>
878010e4:	e1d422b0 	ldrh	r2, [r4, #32]
878010e8:	e594c030 	ldr	ip, [r4, #48]	; 0x30
878010ec:	e2822004 	add	r2, r2, #4
878010f0:	e0020293 	mul	r2, r3, r2
878010f4:	e2833001 	add	r3, r3, #1
878010f8:	e0850002 	add	r0, r5, r2
878010fc:	e785c002 	str	ip, [r5, r2]
87801100:	e5840030 	str	r0, [r4, #48]	; 0x30
87801104:	eafffff4 	b	878010dc <rt_mq_create+0x8c>
87801108:	e3a03000 	mov	r3, #0
8780110c:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87801110:	e2843034 	add	r3, r4, #52	; 0x34
87801114:	e5843038 	str	r3, [r4, #56]	; 0x38
87801118:	e5843034 	str	r3, [r4, #52]	; 0x34
8780111c:	e1a00004 	mov	r0, r4
87801120:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87801124 <rt_mq_send_wait>:
87801124:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801128:	e58d3004 	str	r3, [sp, #4]
8780112c:	e1d032b0 	ldrh	r3, [r0, #32]
87801130:	e1530002 	cmp	r3, r2
87801134:	33e00000 	mvncc	r0, #0
87801138:	3a00005d 	bcc	878012b4 <rt_mq_send_wait+0x190>
8780113c:	e58d2000 	str	r2, [sp]
87801140:	e1a04000 	mov	r4, r0
87801144:	e1a09001 	mov	r9, r1
87801148:	eb00071e 	bl	87802dc8 <rt_thread_self>
8780114c:	e1a08000 	mov	r8, r0
87801150:	ebfffc00 	bl	87800158 <rt_hw_interrupt_disable>
87801154:	e59d5004 	ldr	r5, [sp, #4]
87801158:	e1a07000 	mov	r7, r0
8780115c:	e5943030 	ldr	r3, [r4, #48]	; 0x30
87801160:	e3530000 	cmp	r3, #0
87801164:	03550000 	cmpeq	r5, #0
87801168:	03a05001 	moveq	r5, #1
8780116c:	13a05000 	movne	r5, #0
87801170:	1284b034 	addne	fp, r4, #52	; 0x34
87801174:	1288a04c 	addne	sl, r8, #76	; 0x4c
87801178:	1a000020 	bne	87801200 <rt_mq_send_wait+0xdc>
8780117c:	ea000027 	b	87801220 <rt_mq_send_wait+0xfc>
87801180:	e5d42009 	ldrb	r2, [r4, #9]
87801184:	e1a01008 	mov	r1, r8
87801188:	e1a0000b 	mov	r0, fp
8780118c:	ebfffc45 	bl	878002a8 <rt_ipc_list_suspend>
87801190:	e59d2004 	ldr	r2, [sp, #4]
87801194:	e3520000 	cmp	r2, #0
87801198:	da000007 	ble	878011bc <rt_mq_send_wait+0x98>
8780119c:	ebfffbfb 	bl	87800190 <rt_tick_get>
878011a0:	e1a05000 	mov	r5, r0
878011a4:	e28d2004 	add	r2, sp, #4
878011a8:	e1a01006 	mov	r1, r6
878011ac:	e1a0000a 	mov	r0, sl
878011b0:	eb0008b2 	bl	87803480 <rt_timer_control>
878011b4:	e1a0000a 	mov	r0, sl
878011b8:	eb000870 	bl	87803380 <rt_timer_start>
878011bc:	e1a00007 	mov	r0, r7
878011c0:	ebfffbe3 	bl	87800154 <rt_hw_interrupt_enable>
878011c4:	eb00062d 	bl	87802a80 <rt_schedule>
878011c8:	e5980030 	ldr	r0, [r8, #48]	; 0x30
878011cc:	e3500000 	cmp	r0, #0
878011d0:	1a000037 	bne	878012b4 <rt_mq_send_wait+0x190>
878011d4:	ebfffbdf 	bl	87800158 <rt_hw_interrupt_disable>
878011d8:	e59d3004 	ldr	r3, [sp, #4]
878011dc:	e1a07000 	mov	r7, r0
878011e0:	e3530000 	cmp	r3, #0
878011e4:	da000005 	ble	87801200 <rt_mq_send_wait+0xdc>
878011e8:	ebfffbe8 	bl	87800190 <rt_tick_get>
878011ec:	e59d3004 	ldr	r3, [sp, #4]
878011f0:	e0655000 	rsb	r5, r5, r0
878011f4:	e0533005 	subs	r3, r3, r5
878011f8:	43a03000 	movmi	r3, #0
878011fc:	e58d3004 	str	r3, [sp, #4]
87801200:	e5946030 	ldr	r6, [r4, #48]	; 0x30
87801204:	e3560000 	cmp	r6, #0
87801208:	1a000007 	bne	8780122c <rt_mq_send_wait+0x108>
8780120c:	e59d2004 	ldr	r2, [sp, #4]
87801210:	e5886030 	str	r6, [r8, #48]	; 0x30
87801214:	e3520000 	cmp	r2, #0
87801218:	1affffd8 	bne	87801180 <rt_mq_send_wait+0x5c>
8780121c:	e1a00007 	mov	r0, r7
87801220:	ebfffbcb 	bl	87800154 <rt_hw_interrupt_enable>
87801224:	e3e00002 	mvn	r0, #2
87801228:	ea000021 	b	878012b4 <rt_mq_send_wait+0x190>
8780122c:	e5962000 	ldr	r2, [r6]
87801230:	e1a00007 	mov	r0, r7
87801234:	e5842030 	str	r2, [r4, #48]	; 0x30
87801238:	ebfffbc5 	bl	87800154 <rt_hw_interrupt_enable>
8780123c:	e1a00006 	mov	r0, r6
87801240:	e3a02000 	mov	r2, #0
87801244:	e1a01009 	mov	r1, r9
87801248:	e4802004 	str	r2, [r0], #4
8780124c:	e59d2000 	ldr	r2, [sp]
87801250:	eb0001c3 	bl	87801964 <rt_memcpy>
87801254:	ebfffbbf 	bl	87800158 <rt_hw_interrupt_disable>
87801258:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
8780125c:	e1a05000 	mov	r5, r0
87801260:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87801264:	e5940014 	ldr	r0, [r4, #20]
87801268:	e3520000 	cmp	r2, #0
8780126c:	15826000 	strne	r6, [r2]
87801270:	e2833001 	add	r3, r3, #1
87801274:	e5942028 	ldr	r2, [r4, #40]	; 0x28
87801278:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
8780127c:	e2843014 	add	r3, r4, #20
87801280:	e584602c 	str	r6, [r4, #44]	; 0x2c
87801284:	e3520000 	cmp	r2, #0
87801288:	05846028 	streq	r6, [r4, #40]	; 0x28
8780128c:	e1500003 	cmp	r0, r3
87801290:	0a000004 	beq	878012a8 <rt_mq_send_wait+0x184>
87801294:	ebfffbfe 	bl	87800294 <rt_ipc_list_resume.isra.0>
87801298:	e1a00005 	mov	r0, r5
8780129c:	ebfffbac 	bl	87800154 <rt_hw_interrupt_enable>
878012a0:	eb0005f6 	bl	87802a80 <rt_schedule>
878012a4:	ea000001 	b	878012b0 <rt_mq_send_wait+0x18c>
878012a8:	e1a00005 	mov	r0, r5
878012ac:	ebfffba8 	bl	87800154 <rt_hw_interrupt_enable>
878012b0:	e3a00000 	mov	r0, #0
878012b4:	e28dd00c 	add	sp, sp, #12
878012b8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

878012bc <rt_mq_send>:
878012bc:	e3a03000 	mov	r3, #0
878012c0:	eaffff97 	b	87801124 <rt_mq_send_wait>

878012c4 <rt_mq_urgent>:
878012c4:	e1d032b0 	ldrh	r3, [r0, #32]
878012c8:	e1530002 	cmp	r3, r2
878012cc:	3a00002a 	bcc	8780137c <rt_mq_urgent+0xb8>
878012d0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878012d4:	e1a04000 	mov	r4, r0
878012d8:	e1a06002 	mov	r6, r2
878012dc:	e1a08001 	mov	r8, r1
878012e0:	ebfffb9c 	bl	87800158 <rt_hw_interrupt_disable>
878012e4:	e5945030 	ldr	r5, [r4, #48]	; 0x30
878012e8:	e3550000 	cmp	r5, #0
878012ec:	1a000002 	bne	878012fc <rt_mq_urgent+0x38>
878012f0:	ebfffb97 	bl	87800154 <rt_hw_interrupt_enable>
878012f4:	e3e00002 	mvn	r0, #2
878012f8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878012fc:	e1a07005 	mov	r7, r5
87801300:	e4973004 	ldr	r3, [r7], #4
87801304:	e5843030 	str	r3, [r4, #48]	; 0x30
87801308:	ebfffb91 	bl	87800154 <rt_hw_interrupt_enable>
8780130c:	e1a02006 	mov	r2, r6
87801310:	e1a01008 	mov	r1, r8
87801314:	e1a00007 	mov	r0, r7
87801318:	eb000191 	bl	87801964 <rt_memcpy>
8780131c:	ebfffb8d 	bl	87800158 <rt_hw_interrupt_disable>
87801320:	e5943028 	ldr	r3, [r4, #40]	; 0x28
87801324:	e1a06000 	mov	r6, r0
87801328:	e5940014 	ldr	r0, [r4, #20]
8780132c:	e5853000 	str	r3, [r5]
87801330:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
87801334:	e5845028 	str	r5, [r4, #40]	; 0x28
87801338:	e3530000 	cmp	r3, #0
8780133c:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87801340:	0584502c 	streq	r5, [r4, #44]	; 0x2c
87801344:	e2833001 	add	r3, r3, #1
87801348:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
8780134c:	e2843014 	add	r3, r4, #20
87801350:	e1500003 	cmp	r0, r3
87801354:	0a000004 	beq	8780136c <rt_mq_urgent+0xa8>
87801358:	ebfffbcd 	bl	87800294 <rt_ipc_list_resume.isra.0>
8780135c:	e1a00006 	mov	r0, r6
87801360:	ebfffb7b 	bl	87800154 <rt_hw_interrupt_enable>
87801364:	eb0005c5 	bl	87802a80 <rt_schedule>
87801368:	ea000001 	b	87801374 <rt_mq_urgent+0xb0>
8780136c:	e1a00006 	mov	r0, r6
87801370:	ebfffb77 	bl	87800154 <rt_hw_interrupt_enable>
87801374:	e3a00000 	mov	r0, #0
87801378:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780137c:	e3e00000 	mvn	r0, #0
87801380:	e12fff1e 	bx	lr

87801384 <rt_mq_recv>:
87801384:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801388:	e1a04000 	mov	r4, r0
8780138c:	e58d1000 	str	r1, [sp]
87801390:	e1a07002 	mov	r7, r2
87801394:	e58d3004 	str	r3, [sp, #4]
87801398:	eb00068a 	bl	87802dc8 <rt_thread_self>
8780139c:	e1a06000 	mov	r6, r0
878013a0:	ebfffb6c 	bl	87800158 <rt_hw_interrupt_disable>
878013a4:	e1d492b4 	ldrh	r9, [r4, #36]	; 0x24
878013a8:	e1a0b000 	mov	fp, r0
878013ac:	e3590000 	cmp	r9, #0
878013b0:	1a000034 	bne	87801488 <rt_mq_recv+0x104>
878013b4:	e59d2004 	ldr	r2, [sp, #4]
878013b8:	e3520000 	cmp	r2, #0
878013bc:	11a05009 	movne	r5, r9
878013c0:	1284a014 	addne	sl, r4, #20
878013c4:	1286804c 	addne	r8, r6, #76	; 0x4c
878013c8:	1a000022 	bne	87801458 <rt_mq_recv+0xd4>
878013cc:	ebfffb60 	bl	87800154 <rt_hw_interrupt_enable>
878013d0:	e3e00001 	mvn	r0, #1
878013d4:	ea00004d 	b	87801510 <rt_mq_recv+0x18c>
878013d8:	e5d42009 	ldrb	r2, [r4, #9]
878013dc:	e1a01006 	mov	r1, r6
878013e0:	e1a0000a 	mov	r0, sl
878013e4:	ebfffbaf 	bl	878002a8 <rt_ipc_list_suspend>
878013e8:	e59d2004 	ldr	r2, [sp, #4]
878013ec:	e3520000 	cmp	r2, #0
878013f0:	da000007 	ble	87801414 <rt_mq_recv+0x90>
878013f4:	ebfffb65 	bl	87800190 <rt_tick_get>
878013f8:	e1a05000 	mov	r5, r0
878013fc:	e28d2004 	add	r2, sp, #4
87801400:	e1a01009 	mov	r1, r9
87801404:	e1a00008 	mov	r0, r8
87801408:	eb00081c 	bl	87803480 <rt_timer_control>
8780140c:	e1a00008 	mov	r0, r8
87801410:	eb0007da 	bl	87803380 <rt_timer_start>
87801414:	e1a0000b 	mov	r0, fp
87801418:	ebfffb4d 	bl	87800154 <rt_hw_interrupt_enable>
8780141c:	eb000597 	bl	87802a80 <rt_schedule>
87801420:	e5960030 	ldr	r0, [r6, #48]	; 0x30
87801424:	e3500000 	cmp	r0, #0
87801428:	1a000038 	bne	87801510 <rt_mq_recv+0x18c>
8780142c:	ebfffb49 	bl	87800158 <rt_hw_interrupt_disable>
87801430:	e59d3004 	ldr	r3, [sp, #4]
87801434:	e1a0b000 	mov	fp, r0
87801438:	e3530000 	cmp	r3, #0
8780143c:	da000005 	ble	87801458 <rt_mq_recv+0xd4>
87801440:	ebfffb52 	bl	87800190 <rt_tick_get>
87801444:	e59d3004 	ldr	r3, [sp, #4]
87801448:	e0655000 	rsb	r5, r5, r0
8780144c:	e0533005 	subs	r3, r3, r5
87801450:	43a03000 	movmi	r3, #0
87801454:	e58d3004 	str	r3, [sp, #4]
87801458:	e1d492b4 	ldrh	r9, [r4, #36]	; 0x24
8780145c:	e3590000 	cmp	r9, #0
87801460:	1a000008 	bne	87801488 <rt_mq_recv+0x104>
87801464:	e59d2004 	ldr	r2, [sp, #4]
87801468:	e5869030 	str	r9, [r6, #48]	; 0x30
8780146c:	e3520000 	cmp	r2, #0
87801470:	1affffd8 	bne	878013d8 <rt_mq_recv+0x54>
87801474:	e1a0000b 	mov	r0, fp
87801478:	ebfffb35 	bl	87800154 <rt_hw_interrupt_enable>
8780147c:	e3e00001 	mvn	r0, #1
87801480:	e5860030 	str	r0, [r6, #48]	; 0x30
87801484:	ea000021 	b	87801510 <rt_mq_recv+0x18c>
87801488:	e5945028 	ldr	r5, [r4, #40]	; 0x28
8780148c:	e2493001 	sub	r3, r9, #1
87801490:	e1a0000b 	mov	r0, fp
87801494:	e5952000 	ldr	r2, [r5]
87801498:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
8780149c:	e5842028 	str	r2, [r4, #40]	; 0x28
878014a0:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
878014a4:	e1550002 	cmp	r5, r2
878014a8:	03a02000 	moveq	r2, #0
878014ac:	0584202c 	streq	r2, [r4, #44]	; 0x2c
878014b0:	ebfffb27 	bl	87800154 <rt_hw_interrupt_enable>
878014b4:	e1d422b0 	ldrh	r2, [r4, #32]
878014b8:	e2851004 	add	r1, r5, #4
878014bc:	e59d0000 	ldr	r0, [sp]
878014c0:	e1520007 	cmp	r2, r7
878014c4:	21a02007 	movcs	r2, r7
878014c8:	eb000125 	bl	87801964 <rt_memcpy>
878014cc:	ebfffb21 	bl	87800158 <rt_hw_interrupt_disable>
878014d0:	e5943030 	ldr	r3, [r4, #48]	; 0x30
878014d4:	e2842034 	add	r2, r4, #52	; 0x34
878014d8:	e1a06000 	mov	r6, r0
878014dc:	e5853000 	str	r3, [r5]
878014e0:	e5943034 	ldr	r3, [r4, #52]	; 0x34
878014e4:	e5845030 	str	r5, [r4, #48]	; 0x30
878014e8:	e1530002 	cmp	r3, r2
878014ec:	0a000005 	beq	87801508 <rt_mq_recv+0x184>
878014f0:	e1a00003 	mov	r0, r3
878014f4:	ebfffb66 	bl	87800294 <rt_ipc_list_resume.isra.0>
878014f8:	e1a00006 	mov	r0, r6
878014fc:	ebfffb14 	bl	87800154 <rt_hw_interrupt_enable>
87801500:	eb00055e 	bl	87802a80 <rt_schedule>
87801504:	ea000000 	b	8780150c <rt_mq_recv+0x188>
87801508:	ebfffb11 	bl	87800154 <rt_hw_interrupt_enable>
8780150c:	e3a00000 	mov	r0, #0
87801510:	e28dd00c 	add	sp, sp, #12
87801514:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87801518 <rt_mq_control>:
87801518:	e3510001 	cmp	r1, #1
8780151c:	1a00001a 	bne	8780158c <rt_mq_control+0x74>
87801520:	e92d4070 	push	{r4, r5, r6, lr}
87801524:	e1a04000 	mov	r4, r0
87801528:	ebfffb0a 	bl	87800158 <rt_hw_interrupt_disable>
8780152c:	e1a06000 	mov	r6, r0
87801530:	e2840014 	add	r0, r4, #20
87801534:	ebfffb45 	bl	87800250 <rt_ipc_list_resume_all>
87801538:	e2840034 	add	r0, r4, #52	; 0x34
8780153c:	ebfffb43 	bl	87800250 <rt_ipc_list_resume_all>
87801540:	e3a03000 	mov	r3, #0
87801544:	e5945028 	ldr	r5, [r4, #40]	; 0x28
87801548:	e3550000 	cmp	r5, #0
8780154c:	0a000008 	beq	87801574 <rt_mq_control+0x5c>
87801550:	e5952000 	ldr	r2, [r5]
87801554:	e5842028 	str	r2, [r4, #40]	; 0x28
87801558:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
8780155c:	e1550002 	cmp	r5, r2
87801560:	e5942030 	ldr	r2, [r4, #48]	; 0x30
87801564:	0584302c 	streq	r3, [r4, #44]	; 0x2c
87801568:	e5852000 	str	r2, [r5]
8780156c:	e5845030 	str	r5, [r4, #48]	; 0x30
87801570:	eafffff3 	b	87801544 <rt_mq_control+0x2c>
87801574:	e1c452b4 	strh	r5, [r4, #36]	; 0x24
87801578:	e1a00006 	mov	r0, r6
8780157c:	ebfffaf4 	bl	87800154 <rt_hw_interrupt_enable>
87801580:	eb00053e 	bl	87802a80 <rt_schedule>
87801584:	e1a00005 	mov	r0, r5
87801588:	e8bd8070 	pop	{r4, r5, r6, pc}
8780158c:	e3e00000 	mvn	r0, #0
87801590:	e12fff1e 	bx	lr

87801594 <rt_interrupt_enter>:
87801594:	e92d4010 	push	{r4, lr}
87801598:	ebfffaee 	bl	87800158 <rt_hw_interrupt_disable>
8780159c:	e59f2014 	ldr	r2, [pc, #20]	; 878015b8 <rt_interrupt_enter+0x24>
878015a0:	e5d23000 	ldrb	r3, [r2]
878015a4:	e2833001 	add	r3, r3, #1
878015a8:	e6ef3073 	uxtb	r3, r3
878015ac:	e5c23000 	strb	r3, [r2]
878015b0:	e8bd4010 	pop	{r4, lr}
878015b4:	eafffae6 	b	87800154 <rt_hw_interrupt_enable>
878015b8:	878042f0 	.word	0x878042f0

878015bc <rt_interrupt_leave>:
878015bc:	e92d4010 	push	{r4, lr}
878015c0:	ebfffae4 	bl	87800158 <rt_hw_interrupt_disable>
878015c4:	e59f2014 	ldr	r2, [pc, #20]	; 878015e0 <rt_interrupt_leave+0x24>
878015c8:	e5d23000 	ldrb	r3, [r2]
878015cc:	e2433001 	sub	r3, r3, #1
878015d0:	e6ef3073 	uxtb	r3, r3
878015d4:	e5c23000 	strb	r3, [r2]
878015d8:	e8bd4010 	pop	{r4, lr}
878015dc:	eafffadc 	b	87800154 <rt_hw_interrupt_enable>
878015e0:	878042f0 	.word	0x878042f0

878015e4 <rt_interrupt_get_nest>:
878015e4:	e92d4010 	push	{r4, lr}
878015e8:	ebfffada 	bl	87800158 <rt_hw_interrupt_disable>
878015ec:	e59f3010 	ldr	r3, [pc, #16]	; 87801604 <rt_interrupt_get_nest+0x20>
878015f0:	e5d34000 	ldrb	r4, [r3]
878015f4:	ebfffad6 	bl	87800154 <rt_hw_interrupt_enable>
878015f8:	e6ef4074 	uxtb	r4, r4
878015fc:	e1a00004 	mov	r0, r4
87801600:	e8bd8010 	pop	{r4, pc}
87801604:	878042f0 	.word	0x878042f0

87801608 <print_number>:
87801608:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
8780160c:	e24dd01c 	sub	sp, sp, #28
87801610:	e1a07002 	mov	r7, r2
87801614:	e1a04000 	mov	r4, r0
87801618:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
8780161c:	e1a09001 	mov	r9, r1
87801620:	e59f21fc 	ldr	r2, [pc, #508]	; 87801824 <print_number+0x21c>
87801624:	e58d3004 	str	r3, [sp, #4]
87801628:	e3160040 	tst	r6, #64	; 0x40
8780162c:	e282a014 	add	sl, r2, #20
87801630:	11a0a002 	movne	sl, r2
87801634:	e3160010 	tst	r6, #16
87801638:	13c66001 	bicne	r6, r6, #1
8780163c:	e3160001 	tst	r6, #1
87801640:	13a0b030 	movne	fp, #48	; 0x30
87801644:	03a0b020 	moveq	fp, #32
87801648:	e2168002 	ands	r8, r6, #2
8780164c:	0a000009 	beq	87801678 <print_number+0x70>
87801650:	e3570000 	cmp	r7, #0
87801654:	b2677000 	rsblt	r7, r7, #0
87801658:	b3a0802d 	movlt	r8, #45	; 0x2d
8780165c:	ba00000a 	blt	8780168c <print_number+0x84>
87801660:	e3160004 	tst	r6, #4
87801664:	13a0802b 	movne	r8, #43	; 0x2b
87801668:	1a000002 	bne	87801678 <print_number+0x70>
8780166c:	e3160008 	tst	r6, #8
87801670:	13a08020 	movne	r8, #32
87801674:	03a08000 	moveq	r8, #0
87801678:	e3570000 	cmp	r7, #0
8780167c:	03a03030 	moveq	r3, #48	; 0x30
87801680:	03a05001 	moveq	r5, #1
87801684:	05cd3008 	strbeq	r3, [sp, #8]
87801688:	0a000012 	beq	878016d8 <print_number+0xd0>
8780168c:	e3a05000 	mov	r5, #0
87801690:	e1a00007 	mov	r0, r7
87801694:	e3a0100a 	mov	r1, #10
87801698:	e2855001 	add	r5, r5, #1
8780169c:	fa000890 	blx	878038e4 <__aeabi_uidivmod>
878016a0:	e59dc004 	ldr	ip, [sp, #4]
878016a4:	e207000f 	and	r0, r7, #15
878016a8:	e59f3178 	ldr	r3, [pc, #376]	; 87801828 <print_number+0x220>
878016ac:	e35c000a 	cmp	ip, #10
878016b0:	e0832397 	umull	r2, r3, r7, r3
878016b4:	11a01000 	movne	r1, r0
878016b8:	01a071a3 	lsreq	r7, r3, #3
878016bc:	11a07227 	lsrne	r7, r7, #4
878016c0:	e28d3008 	add	r3, sp, #8
878016c4:	e083c005 	add	ip, r3, r5
878016c8:	e3570000 	cmp	r7, #0
878016cc:	e7da1001 	ldrb	r1, [sl, r1]
878016d0:	e54c1001 	strb	r1, [ip, #-1]
878016d4:	1affffed 	bne	87801690 <print_number+0x88>
878016d8:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
878016dc:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
878016e0:	e1550003 	cmp	r5, r3
878016e4:	a1a01005 	movge	r1, r5
878016e8:	b1a01003 	movlt	r1, r3
878016ec:	e3160011 	tst	r6, #17
878016f0:	e0610000 	rsb	r0, r1, r0
878016f4:	1a000010 	bne	8780173c <print_number+0x134>
878016f8:	e3580000 	cmp	r8, #0
878016fc:	13500000 	cmpne	r0, #0
87801700:	e1a03004 	mov	r3, r4
87801704:	c2400001 	subgt	r0, r0, #1
87801708:	e3a0c020 	mov	ip, #32
8780170c:	e0632000 	rsb	r2, r3, r0
87801710:	e0842002 	add	r2, r4, r2
87801714:	e3520000 	cmp	r2, #0
87801718:	da000003 	ble	8780172c <print_number+0x124>
8780171c:	e1530009 	cmp	r3, r9
87801720:	e2833001 	add	r3, r3, #1
87801724:	3543c001 	strbcc	ip, [r3, #-1]
87801728:	eafffff7 	b	8780170c <print_number+0x104>
8780172c:	e1c03fc0 	bic	r3, r0, r0, asr #31
87801730:	e2400001 	sub	r0, r0, #1
87801734:	e0844003 	add	r4, r4, r3
87801738:	e0630000 	rsb	r0, r3, r0
8780173c:	e3580000 	cmp	r8, #0
87801740:	0a000003 	beq	87801754 <print_number+0x14c>
87801744:	e1540009 	cmp	r4, r9
87801748:	e2400001 	sub	r0, r0, #1
8780174c:	35c48000 	strbcc	r8, [r4]
87801750:	e2844001 	add	r4, r4, #1
87801754:	e3160010 	tst	r6, #16
87801758:	01a03004 	moveq	r3, r4
8780175c:	1a00000b 	bne	87801790 <print_number+0x188>
87801760:	e0632000 	rsb	r2, r3, r0
87801764:	e0842002 	add	r2, r4, r2
87801768:	e3520000 	cmp	r2, #0
8780176c:	da000003 	ble	87801780 <print_number+0x178>
87801770:	e1530009 	cmp	r3, r9
87801774:	e2833001 	add	r3, r3, #1
87801778:	3543b001 	strbcc	fp, [r3, #-1]
8780177c:	eafffff7 	b	87801760 <print_number+0x158>
87801780:	e1c03fc0 	bic	r3, r0, r0, asr #31
87801784:	e2400001 	sub	r0, r0, #1
87801788:	e0844003 	add	r4, r4, r3
8780178c:	e0630000 	rsb	r0, r3, r0
87801790:	e1a03004 	mov	r3, r4
87801794:	e3a0c030 	mov	ip, #48	; 0x30
87801798:	e0632001 	rsb	r2, r3, r1
8780179c:	e0842002 	add	r2, r4, r2
878017a0:	e1520005 	cmp	r2, r5
878017a4:	da000003 	ble	878017b8 <print_number+0x1b0>
878017a8:	e1530009 	cmp	r3, r9
878017ac:	e2833001 	add	r3, r3, #1
878017b0:	3543c001 	strbcc	ip, [r3, #-1]
878017b4:	eafffff7 	b	87801798 <print_number+0x190>
878017b8:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
878017bc:	e3520000 	cmp	r2, #0
878017c0:	13550000 	cmpne	r5, #0
878017c4:	da000007 	ble	878017e8 <print_number+0x1e0>
878017c8:	e1530009 	cmp	r3, r9
878017cc:	e2833001 	add	r3, r3, #1
878017d0:	328d2008 	addcc	r2, sp, #8
878017d4:	30822005 	addcc	r2, r2, r5
878017d8:	e2455001 	sub	r5, r5, #1
878017dc:	35522001 	ldrbcc	r2, [r2, #-1]
878017e0:	35432001 	strbcc	r2, [r3, #-1]
878017e4:	eafffff3 	b	878017b8 <print_number+0x1b0>
878017e8:	e1a02003 	mov	r2, r3
878017ec:	e3a0c020 	mov	ip, #32
878017f0:	e0621000 	rsb	r1, r2, r0
878017f4:	e0831001 	add	r1, r3, r1
878017f8:	e3510000 	cmp	r1, #0
878017fc:	da000003 	ble	87801810 <print_number+0x208>
87801800:	e1520009 	cmp	r2, r9
87801804:	e2822001 	add	r2, r2, #1
87801808:	3542c001 	strbcc	ip, [r2, #-1]
8780180c:	eafffff7 	b	878017f0 <print_number+0x1e8>
87801810:	e3500000 	cmp	r0, #0
87801814:	a0830000 	addge	r0, r3, r0
87801818:	b2830000 	addlt	r0, r3, #0
8780181c:	e28dd01c 	add	sp, sp, #28
87801820:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
87801824:	87803cf0 	.word	0x87803cf0
87801828:	cccccccd 	.word	0xcccccccd

8780182c <rt_get_errno>:
8780182c:	e92d4010 	push	{r4, lr}
87801830:	ebffff6b 	bl	878015e4 <rt_interrupt_get_nest>
87801834:	e3500000 	cmp	r0, #0
87801838:	1a000002 	bne	87801848 <rt_get_errno+0x1c>
8780183c:	eb000561 	bl	87802dc8 <rt_thread_self>
87801840:	e3500000 	cmp	r0, #0
87801844:	1a000002 	bne	87801854 <rt_get_errno+0x28>
87801848:	e59f300c 	ldr	r3, [pc, #12]	; 8780185c <rt_get_errno+0x30>
8780184c:	e5930000 	ldr	r0, [r3]
87801850:	e8bd8010 	pop	{r4, pc}
87801854:	e5900030 	ldr	r0, [r0, #48]	; 0x30
87801858:	e8bd8010 	pop	{r4, pc}
8780185c:	878042f4 	.word	0x878042f4

87801860 <rt_set_errno>:
87801860:	e92d4010 	push	{r4, lr}
87801864:	e1a04000 	mov	r4, r0
87801868:	ebffff5d 	bl	878015e4 <rt_interrupt_get_nest>
8780186c:	e3500000 	cmp	r0, #0
87801870:	1a000002 	bne	87801880 <rt_set_errno+0x20>
87801874:	eb000553 	bl	87802dc8 <rt_thread_self>
87801878:	e3500000 	cmp	r0, #0
8780187c:	1a000002 	bne	8780188c <rt_set_errno+0x2c>
87801880:	e59f300c 	ldr	r3, [pc, #12]	; 87801894 <rt_set_errno+0x34>
87801884:	e5834000 	str	r4, [r3]
87801888:	e8bd8010 	pop	{r4, pc}
8780188c:	e5804030 	str	r4, [r0, #48]	; 0x30
87801890:	e8bd8010 	pop	{r4, pc}
87801894:	878042f4 	.word	0x878042f4

87801898 <_rt_errno>:
87801898:	e92d4010 	push	{r4, lr}
8780189c:	ebffff50 	bl	878015e4 <rt_interrupt_get_nest>
878018a0:	e3500000 	cmp	r0, #0
878018a4:	0a000001 	beq	878018b0 <_rt_errno+0x18>
878018a8:	e59f0014 	ldr	r0, [pc, #20]	; 878018c4 <_rt_errno+0x2c>
878018ac:	e8bd8010 	pop	{r4, pc}
878018b0:	eb000544 	bl	87802dc8 <rt_thread_self>
878018b4:	e3500000 	cmp	r0, #0
878018b8:	0afffffa 	beq	878018a8 <_rt_errno+0x10>
878018bc:	e2800030 	add	r0, r0, #48	; 0x30
878018c0:	e8bd8010 	pop	{r4, pc}
878018c4:	878042f4 	.word	0x878042f4

878018c8 <rt_memset>:
878018c8:	e3520003 	cmp	r2, #3
878018cc:	e92d4010 	push	{r4, lr}
878018d0:	9a00001d 	bls	8780194c <rt_memset+0x84>
878018d4:	e3100003 	tst	r0, #3
878018d8:	1a00001b 	bne	8780194c <rt_memset+0x84>
878018dc:	e6efc071 	uxtb	ip, r1
878018e0:	e2803010 	add	r3, r0, #16
878018e4:	e2824010 	add	r4, r2, #16
878018e8:	e18cc40c 	orr	ip, ip, ip, lsl #8
878018ec:	e18cc80c 	orr	ip, ip, ip, lsl #16
878018f0:	e063e004 	rsb	lr, r3, r4
878018f4:	e080e00e 	add	lr, r0, lr
878018f8:	e35e000f 	cmp	lr, #15
878018fc:	9a000005 	bls	87801918 <rt_memset+0x50>
87801900:	e503c010 	str	ip, [r3, #-16]
87801904:	e2833010 	add	r3, r3, #16
87801908:	e503c01c 	str	ip, [r3, #-28]	; 0xffffffe4
8780190c:	e503c018 	str	ip, [r3, #-24]	; 0xffffffe8
87801910:	e503c014 	str	ip, [r3, #-20]	; 0xffffffec
87801914:	eafffff5 	b	878018f0 <rt_memset+0x28>
87801918:	e1a03222 	lsr	r3, r2, #4
8780191c:	e0422203 	sub	r2, r2, r3, lsl #4
87801920:	e0803203 	add	r3, r0, r3, lsl #4
87801924:	e1a04003 	mov	r4, r3
87801928:	e064e002 	rsb	lr, r4, r2
8780192c:	e083e00e 	add	lr, r3, lr
87801930:	e35e0003 	cmp	lr, #3
87801934:	8484c004 	strhi	ip, [r4], #4
87801938:	8afffffa 	bhi	87801928 <rt_memset+0x60>
8780193c:	e1a0c122 	lsr	ip, r2, #2
87801940:	e042210c 	sub	r2, r2, ip, lsl #2
87801944:	e083310c 	add	r3, r3, ip, lsl #2
87801948:	ea000000 	b	87801950 <rt_memset+0x88>
8780194c:	e1a03000 	mov	r3, r0
87801950:	e0832002 	add	r2, r3, r2
87801954:	e1530002 	cmp	r3, r2
87801958:	14c31001 	strbne	r1, [r3], #1
8780195c:	1afffffc 	bne	87801954 <rt_memset+0x8c>
87801960:	e8bd8010 	pop	{r4, pc}

87801964 <rt_memcpy>:
87801964:	e352000f 	cmp	r2, #15
87801968:	e1a03002 	mov	r3, r2
8780196c:	e92d4010 	push	{r4, lr}
87801970:	9a000027 	bls	87801a14 <rt_memcpy+0xb0>
87801974:	e180c001 	orr	ip, r0, r1
87801978:	e31c0003 	tst	ip, #3
8780197c:	02803010 	addeq	r3, r0, #16
87801980:	01a0c001 	moveq	ip, r1
87801984:	02824010 	addeq	r4, r2, #16
87801988:	1a000021 	bne	87801a14 <rt_memcpy+0xb0>
8780198c:	e063e004 	rsb	lr, r3, r4
87801990:	e28cc010 	add	ip, ip, #16
87801994:	e080e00e 	add	lr, r0, lr
87801998:	e35e000f 	cmp	lr, #15
8780199c:	9a000009 	bls	878019c8 <rt_memcpy+0x64>
878019a0:	e51ce010 	ldr	lr, [ip, #-16]
878019a4:	e2833010 	add	r3, r3, #16
878019a8:	e503e020 	str	lr, [r3, #-32]	; 0xffffffe0
878019ac:	e51ce00c 	ldr	lr, [ip, #-12]
878019b0:	e503e01c 	str	lr, [r3, #-28]	; 0xffffffe4
878019b4:	e51ce008 	ldr	lr, [ip, #-8]
878019b8:	e503e018 	str	lr, [r3, #-24]	; 0xffffffe8
878019bc:	e51ce004 	ldr	lr, [ip, #-4]
878019c0:	e503e014 	str	lr, [r3, #-20]	; 0xffffffec
878019c4:	eafffff0 	b	8780198c <rt_memcpy+0x28>
878019c8:	e1a03222 	lsr	r3, r2, #4
878019cc:	e1a0e203 	lsl	lr, r3, #4
878019d0:	e080c00e 	add	ip, r0, lr
878019d4:	e081100e 	add	r1, r1, lr
878019d8:	e24c4004 	sub	r4, ip, #4
878019dc:	e0422203 	sub	r2, r2, r3, lsl #4
878019e0:	e1a0e001 	mov	lr, r1
878019e4:	e06e3002 	rsb	r3, lr, r2
878019e8:	e0813003 	add	r3, r1, r3
878019ec:	e3530003 	cmp	r3, #3
878019f0:	c49e3004 	ldrgt	r3, [lr], #4
878019f4:	c5a43004 	strgt	r3, [r4, #4]!
878019f8:	cafffff9 	bgt	878019e4 <rt_memcpy+0x80>
878019fc:	e1a03122 	lsr	r3, r2, #2
87801a00:	e1a0e103 	lsl	lr, r3, #2
87801a04:	e08cc00e 	add	ip, ip, lr
87801a08:	e081100e 	add	r1, r1, lr
87801a0c:	e0423103 	sub	r3, r2, r3, lsl #2
87801a10:	ea000000 	b	87801a18 <rt_memcpy+0xb4>
87801a14:	e1a0c000 	mov	ip, r0
87801a18:	e0812003 	add	r2, r1, r3
87801a1c:	e24cc001 	sub	ip, ip, #1
87801a20:	e1510002 	cmp	r1, r2
87801a24:	14d13001 	ldrbne	r3, [r1], #1
87801a28:	15ec3001 	strbne	r3, [ip, #1]!
87801a2c:	1afffffb 	bne	87801a20 <rt_memcpy+0xbc>
87801a30:	e8bd8010 	pop	{r4, pc}

87801a34 <rt_memmove>:
87801a34:	e1500001 	cmp	r0, r1
87801a38:	e0813002 	add	r3, r1, r2
87801a3c:	8a000001 	bhi	87801a48 <rt_memmove+0x14>
87801a40:	e2402001 	sub	r2, r0, #1
87801a44:	ea000008 	b	87801a6c <rt_memmove+0x38>
87801a48:	e1500003 	cmp	r0, r3
87801a4c:	30801002 	addcc	r1, r0, r2
87801a50:	30632002 	rsbcc	r2, r3, r2
87801a54:	2afffff9 	bcs	87801a40 <rt_memmove+0xc>
87801a58:	e1730002 	cmn	r3, r2
87801a5c:	1573c001 	ldrbne	ip, [r3, #-1]!
87801a60:	1561c001 	strbne	ip, [r1, #-1]!
87801a64:	1afffffb 	bne	87801a58 <rt_memmove+0x24>
87801a68:	e12fff1e 	bx	lr
87801a6c:	e1510003 	cmp	r1, r3
87801a70:	14d1c001 	ldrbne	ip, [r1], #1
87801a74:	15e2c001 	strbne	ip, [r2, #1]!
87801a78:	1afffffb 	bne	87801a6c <rt_memmove+0x38>
87801a7c:	e12fff1e 	bx	lr

87801a80 <rt_memcmp>:
87801a80:	e0812002 	add	r2, r1, r2
87801a84:	e240c001 	sub	ip, r0, #1
87801a88:	e1510002 	cmp	r1, r2
87801a8c:	0a000005 	beq	87801aa8 <rt_memcmp+0x28>
87801a90:	e5fc3001 	ldrb	r3, [ip, #1]!
87801a94:	e5d10000 	ldrb	r0, [r1]
87801a98:	e0530000 	subs	r0, r3, r0
87801a9c:	112fff1e 	bxne	lr
87801aa0:	e2811001 	add	r1, r1, #1
87801aa4:	eafffff7 	b	87801a88 <rt_memcmp+0x8>
87801aa8:	e3a00000 	mov	r0, #0
87801aac:	e12fff1e 	bx	lr

87801ab0 <rt_strcasecmp>:
87801ab0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87801ab4:	e4d02001 	ldrb	r2, [r0], #1
87801ab8:	e4d1c001 	ldrb	ip, [r1], #1
87801abc:	e242e041 	sub	lr, r2, #65	; 0x41
87801ac0:	e2823020 	add	r3, r2, #32
87801ac4:	e35e0019 	cmp	lr, #25
87801ac8:	e24ce041 	sub	lr, ip, #65	; 0x41
87801acc:	81a03002 	movhi	r3, r2
87801ad0:	e28c2020 	add	r2, ip, #32
87801ad4:	e35e0019 	cmp	lr, #25
87801ad8:	91a0c002 	movls	ip, r2
87801adc:	e3530000 	cmp	r3, #0
87801ae0:	e06c2003 	rsb	r2, ip, r3
87801ae4:	e16f2f12 	clz	r2, r2
87801ae8:	e1a022a2 	lsr	r2, r2, #5
87801aec:	03a02000 	moveq	r2, #0
87801af0:	e3520000 	cmp	r2, #0
87801af4:	1affffee 	bne	87801ab4 <rt_strcasecmp+0x4>
87801af8:	e06c0003 	rsb	r0, ip, r3
87801afc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87801b00 <rt_strncpy>:
87801b00:	e3520000 	cmp	r2, #0
87801b04:	012fff1e 	bxeq	lr
87801b08:	e1a0c000 	mov	ip, r0
87801b0c:	e4d13001 	ldrb	r3, [r1], #1
87801b10:	e4cc3001 	strb	r3, [ip], #1
87801b14:	e3530000 	cmp	r3, #0
87801b18:	1a000003 	bne	87801b2c <rt_strncpy+0x2c>
87801b1c:	e2522001 	subs	r2, r2, #1
87801b20:	14cc3001 	strbne	r3, [ip], #1
87801b24:	1afffffc 	bne	87801b1c <rt_strncpy+0x1c>
87801b28:	e12fff1e 	bx	lr
87801b2c:	e2522001 	subs	r2, r2, #1
87801b30:	1afffff5 	bne	87801b0c <rt_strncpy+0xc>
87801b34:	e12fff1e 	bx	lr

87801b38 <rt_strncmp>:
87801b38:	e0812002 	add	r2, r1, r2
87801b3c:	e2403001 	sub	r3, r0, #1
87801b40:	e1510002 	cmp	r1, r2
87801b44:	0a000008 	beq	87801b6c <rt_strncmp+0x34>
87801b48:	e5f3c001 	ldrb	ip, [r3, #1]!
87801b4c:	e4d10001 	ldrb	r0, [r1], #1
87801b50:	e060000c 	rsb	r0, r0, ip
87801b54:	e6af0070 	sxtb	r0, r0
87801b58:	e3500000 	cmp	r0, #0
87801b5c:	112fff1e 	bxne	lr
87801b60:	e35c0000 	cmp	ip, #0
87801b64:	1afffff5 	bne	87801b40 <rt_strncmp+0x8>
87801b68:	e12fff1e 	bx	lr
87801b6c:	e3a00000 	mov	r0, #0
87801b70:	e12fff1e 	bx	lr

87801b74 <rt_strcmp>:
87801b74:	e2400001 	sub	r0, r0, #1
87801b78:	e5f03001 	ldrb	r3, [r0, #1]!
87801b7c:	e1a02001 	mov	r2, r1
87801b80:	e3530000 	cmp	r3, #0
87801b84:	0a000003 	beq	87801b98 <rt_strcmp+0x24>
87801b88:	e5d2c000 	ldrb	ip, [r2]
87801b8c:	e2811001 	add	r1, r1, #1
87801b90:	e15c0003 	cmp	ip, r3
87801b94:	0afffff7 	beq	87801b78 <rt_strcmp+0x4>
87801b98:	e5d20000 	ldrb	r0, [r2]
87801b9c:	e0600003 	rsb	r0, r0, r3
87801ba0:	e12fff1e 	bx	lr

87801ba4 <rt_strnlen>:
87801ba4:	e1a03000 	mov	r3, r0
87801ba8:	e5d32000 	ldrb	r2, [r3]
87801bac:	e3520000 	cmp	r2, #0
87801bb0:	e0602003 	rsb	r2, r0, r3
87801bb4:	0a000002 	beq	87801bc4 <rt_strnlen+0x20>
87801bb8:	e1520001 	cmp	r2, r1
87801bbc:	32833001 	addcc	r3, r3, #1
87801bc0:	3afffff8 	bcc	87801ba8 <rt_strnlen+0x4>
87801bc4:	e1a00002 	mov	r0, r2
87801bc8:	e12fff1e 	bx	lr

87801bcc <rt_strlen>:
87801bcc:	e1a03000 	mov	r3, r0
87801bd0:	e5d32000 	ldrb	r2, [r3]
87801bd4:	e2831001 	add	r1, r3, #1
87801bd8:	e3520000 	cmp	r2, #0
87801bdc:	11a03001 	movne	r3, r1
87801be0:	1afffffa 	bne	87801bd0 <rt_strlen+0x4>
87801be4:	e0600003 	rsb	r0, r0, r3
87801be8:	e12fff1e 	bx	lr

87801bec <rt_strstr>:
87801bec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
87801bf0:	e1a06000 	mov	r6, r0
87801bf4:	e1a00001 	mov	r0, r1
87801bf8:	e1a09001 	mov	r9, r1
87801bfc:	ebfffff2 	bl	87801bcc <rt_strlen>
87801c00:	e2507000 	subs	r7, r0, #0
87801c04:	e1a00006 	mov	r0, r6
87801c08:	0a000011 	beq	87801c54 <rt_strstr+0x68>
87801c0c:	ebffffee 	bl	87801bcc <rt_strlen>
87801c10:	e1a08000 	mov	r8, r0
87801c14:	e1a05000 	mov	r5, r0
87801c18:	e1550007 	cmp	r5, r7
87801c1c:	e0650008 	rsb	r0, r5, r8
87801c20:	e0864000 	add	r4, r6, r0
87801c24:	ba000008 	blt	87801c4c <rt_strstr+0x60>
87801c28:	e1a02007 	mov	r2, r7
87801c2c:	e1a01009 	mov	r1, r9
87801c30:	e1a00004 	mov	r0, r4
87801c34:	e2455001 	sub	r5, r5, #1
87801c38:	ebffff90 	bl	87801a80 <rt_memcmp>
87801c3c:	e3500000 	cmp	r0, #0
87801c40:	1afffff4 	bne	87801c18 <rt_strstr+0x2c>
87801c44:	e1a00004 	mov	r0, r4
87801c48:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87801c4c:	e3a00000 	mov	r0, #0
87801c50:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87801c54:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

87801c58 <rt_strdup>:
87801c58:	e92d4070 	push	{r4, r5, r6, lr}
87801c5c:	e1a06000 	mov	r6, r0
87801c60:	ebffffd9 	bl	87801bcc <rt_strlen>
87801c64:	e2804001 	add	r4, r0, #1
87801c68:	e1a00004 	mov	r0, r4
87801c6c:	eb00019b 	bl	878022e0 <rt_malloc>
87801c70:	e2505000 	subs	r5, r0, #0
87801c74:	0a000002 	beq	87801c84 <rt_strdup+0x2c>
87801c78:	e1a02004 	mov	r2, r4
87801c7c:	e1a01006 	mov	r1, r6
87801c80:	ebffff37 	bl	87801964 <rt_memcpy>
87801c84:	e1a00005 	mov	r0, r5
87801c88:	e8bd8070 	pop	{r4, r5, r6, pc}

87801c8c <rt_show_version>:
87801c8c:	e12fff1e 	bx	lr

87801c90 <rt_vsnprintf>:
87801c90:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801c94:	e1a06002 	mov	r6, r2
87801c98:	e0907001 	adds	r7, r0, r1
87801c9c:	e24dd024 	sub	sp, sp, #36	; 0x24
87801ca0:	21e09000 	mvncs	r9, r0
87801ca4:	e1a08000 	mov	r8, r0
87801ca8:	e1a02003 	mov	r2, r3
87801cac:	23e07000 	mvncs	r7, #0
87801cb0:	31a09001 	movcc	r9, r1
87801cb4:	e1a04000 	mov	r4, r0
87801cb8:	e3a0a020 	mov	sl, #32
87801cbc:	e5d63000 	ldrb	r3, [r6]
87801cc0:	e3530000 	cmp	r3, #0
87801cc4:	0a0000ea 	beq	87802074 <rt_vsnprintf+0x3e4>
87801cc8:	e3530025 	cmp	r3, #37	; 0x25
87801ccc:	03a05000 	moveq	r5, #0
87801cd0:	01a03006 	moveq	r3, r6
87801cd4:	0a000005 	beq	87801cf0 <rt_vsnprintf+0x60>
87801cd8:	e1540007 	cmp	r4, r7
87801cdc:	35c43000 	strbcc	r3, [r4]
87801ce0:	ea0000ba 	b	87801fd0 <rt_vsnprintf+0x340>
87801ce4:	e351002b 	cmp	r1, #43	; 0x2b
87801ce8:	03855004 	orreq	r5, r5, #4
87801cec:	1a000004 	bne	87801d04 <rt_vsnprintf+0x74>
87801cf0:	e5f31001 	ldrb	r1, [r3, #1]!
87801cf4:	e351002d 	cmp	r1, #45	; 0x2d
87801cf8:	03855010 	orreq	r5, r5, #16
87801cfc:	1afffff8 	bne	87801ce4 <rt_vsnprintf+0x54>
87801d00:	eafffffa 	b	87801cf0 <rt_vsnprintf+0x60>
87801d04:	e3510020 	cmp	r1, #32
87801d08:	03855008 	orreq	r5, r5, #8
87801d0c:	0afffff7 	beq	87801cf0 <rt_vsnprintf+0x60>
87801d10:	e3510023 	cmp	r1, #35	; 0x23
87801d14:	03855020 	orreq	r5, r5, #32
87801d18:	0afffff4 	beq	87801cf0 <rt_vsnprintf+0x60>
87801d1c:	e3510030 	cmp	r1, #48	; 0x30
87801d20:	03855001 	orreq	r5, r5, #1
87801d24:	0afffff1 	beq	87801cf0 <rt_vsnprintf+0x60>
87801d28:	e2410030 	sub	r0, r1, #48	; 0x30
87801d2c:	e3500009 	cmp	r0, #9
87801d30:	91a0c003 	movls	ip, r3
87801d34:	93a01000 	movls	r1, #0
87801d38:	93a0e00a 	movls	lr, #10
87801d3c:	8a000008 	bhi	87801d64 <rt_vsnprintf+0xd4>
87801d40:	e1a0300c 	mov	r3, ip
87801d44:	e28cc001 	add	ip, ip, #1
87801d48:	e5d30000 	ldrb	r0, [r3]
87801d4c:	e2406030 	sub	r6, r0, #48	; 0x30
87801d50:	e3560009 	cmp	r6, #9
87801d54:	8a00000c 	bhi	87801d8c <rt_vsnprintf+0xfc>
87801d58:	e021019e 	mla	r1, lr, r1, r0
87801d5c:	e2411030 	sub	r1, r1, #48	; 0x30
87801d60:	eafffff6 	b	87801d40 <rt_vsnprintf+0xb0>
87801d64:	e351002a 	cmp	r1, #42	; 0x2a
87801d68:	13e01000 	mvnne	r1, #0
87801d6c:	1a000006 	bne	87801d8c <rt_vsnprintf+0xfc>
87801d70:	e5921000 	ldr	r1, [r2]
87801d74:	e2820004 	add	r0, r2, #4
87801d78:	e2833001 	add	r3, r3, #1
87801d7c:	e1a02000 	mov	r2, r0
87801d80:	e3510000 	cmp	r1, #0
87801d84:	b2611000 	rsblt	r1, r1, #0
87801d88:	b3855010 	orrlt	r5, r5, #16
87801d8c:	e5d30000 	ldrb	r0, [r3]
87801d90:	e350002e 	cmp	r0, #46	; 0x2e
87801d94:	11a06003 	movne	r6, r3
87801d98:	13e03000 	mvnne	r3, #0
87801d9c:	1a000017 	bne	87801e00 <rt_vsnprintf+0x170>
87801da0:	e5d30001 	ldrb	r0, [r3, #1]
87801da4:	e2836001 	add	r6, r3, #1
87801da8:	e240c030 	sub	ip, r0, #48	; 0x30
87801dac:	e35c0009 	cmp	ip, #9
87801db0:	91a00006 	movls	r0, r6
87801db4:	93a03000 	movls	r3, #0
87801db8:	93a0b00a 	movls	fp, #10
87801dbc:	8a000008 	bhi	87801de4 <rt_vsnprintf+0x154>
87801dc0:	e1a06000 	mov	r6, r0
87801dc4:	e2800001 	add	r0, r0, #1
87801dc8:	e5d6c000 	ldrb	ip, [r6]
87801dcc:	e24ce030 	sub	lr, ip, #48	; 0x30
87801dd0:	e35e0009 	cmp	lr, #9
87801dd4:	8a000008 	bhi	87801dfc <rt_vsnprintf+0x16c>
87801dd8:	e023c39b 	mla	r3, fp, r3, ip
87801ddc:	e2433030 	sub	r3, r3, #48	; 0x30
87801de0:	eafffff6 	b	87801dc0 <rt_vsnprintf+0x130>
87801de4:	e350002a 	cmp	r0, #42	; 0x2a
87801de8:	13a03000 	movne	r3, #0
87801dec:	1a000003 	bne	87801e00 <rt_vsnprintf+0x170>
87801df0:	e2836002 	add	r6, r3, #2
87801df4:	e2822004 	add	r2, r2, #4
87801df8:	e5123004 	ldr	r3, [r2, #-4]
87801dfc:	e1c33fc3 	bic	r3, r3, r3, asr #31
87801e00:	e5d6c000 	ldrb	ip, [r6]
87801e04:	e20c00fb 	and	r0, ip, #251	; 0xfb
87801e08:	e3500068 	cmp	r0, #104	; 0x68
87801e0c:	02866001 	addeq	r6, r6, #1
87801e10:	13a0c000 	movne	ip, #0
87801e14:	e5d60000 	ldrb	r0, [r6]
87801e18:	e3500069 	cmp	r0, #105	; 0x69
87801e1c:	0a000070 	beq	87801fe4 <rt_vsnprintf+0x354>
87801e20:	8a00000c 	bhi	87801e58 <rt_vsnprintf+0x1c8>
87801e24:	e3500058 	cmp	r0, #88	; 0x58
87801e28:	0a00006a 	beq	87801fd8 <rt_vsnprintf+0x348>
87801e2c:	8a000004 	bhi	87801e44 <rt_vsnprintf+0x1b4>
87801e30:	e3500025 	cmp	r0, #37	; 0x25
87801e34:	1a00006c 	bne	87801fec <rt_vsnprintf+0x35c>
87801e38:	e1540007 	cmp	r4, r7
87801e3c:	35c40000 	strbcc	r0, [r4]
87801e40:	ea000062 	b	87801fd0 <rt_vsnprintf+0x340>
87801e44:	e3500063 	cmp	r0, #99	; 0x63
87801e48:	0a000016 	beq	87801ea8 <rt_vsnprintf+0x218>
87801e4c:	e3500064 	cmp	r0, #100	; 0x64
87801e50:	0a000063 	beq	87801fe4 <rt_vsnprintf+0x354>
87801e54:	ea000064 	b	87801fec <rt_vsnprintf+0x35c>
87801e58:	e3500073 	cmp	r0, #115	; 0x73
87801e5c:	0a000028 	beq	87801f04 <rt_vsnprintf+0x274>
87801e60:	8a00000b 	bhi	87801e94 <rt_vsnprintf+0x204>
87801e64:	e350006f 	cmp	r0, #111	; 0x6f
87801e68:	0a00006e 	beq	87802028 <rt_vsnprintf+0x398>
87801e6c:	e3500070 	cmp	r0, #112	; 0x70
87801e70:	1a00005d 	bne	87801fec <rt_vsnprintf+0x35c>
87801e74:	e3710001 	cmn	r1, #1
87801e78:	e282b004 	add	fp, r2, #4
87801e7c:	03855001 	orreq	r5, r5, #1
87801e80:	03a01008 	moveq	r1, #8
87801e84:	e88d002a 	stm	sp, {r1, r3, r5}
87801e88:	e5922000 	ldr	r2, [r2]
87801e8c:	e3a03010 	mov	r3, #16
87801e90:	ea000070 	b	87802058 <rt_vsnprintf+0x3c8>
87801e94:	e3500075 	cmp	r0, #117	; 0x75
87801e98:	0a000060 	beq	87802020 <rt_vsnprintf+0x390>
87801e9c:	e3500078 	cmp	r0, #120	; 0x78
87801ea0:	0a00004d 	beq	87801fdc <rt_vsnprintf+0x34c>
87801ea4:	ea000050 	b	87801fec <rt_vsnprintf+0x35c>
87801ea8:	e3150010 	tst	r5, #16
87801eac:	1a000006 	bne	87801ecc <rt_vsnprintf+0x23c>
87801eb0:	e2411001 	sub	r1, r1, #1
87801eb4:	e3510000 	cmp	r1, #0
87801eb8:	da000003 	ble	87801ecc <rt_vsnprintf+0x23c>
87801ebc:	e1540007 	cmp	r4, r7
87801ec0:	e2844001 	add	r4, r4, #1
87801ec4:	3544a001 	strbcc	sl, [r4, #-1]
87801ec8:	eafffff8 	b	87801eb0 <rt_vsnprintf+0x220>
87801ecc:	e1540007 	cmp	r4, r7
87801ed0:	e2823004 	add	r3, r2, #4
87801ed4:	e2840001 	add	r0, r4, #1
87801ed8:	35922000 	ldrcc	r2, [r2]
87801edc:	35c42000 	strbcc	r2, [r4]
87801ee0:	e2411001 	sub	r1, r1, #1
87801ee4:	e3510000 	cmp	r1, #0
87801ee8:	da000003 	ble	87801efc <rt_vsnprintf+0x26c>
87801eec:	e1500007 	cmp	r0, r7
87801ef0:	e2800001 	add	r0, r0, #1
87801ef4:	3540a001 	strbcc	sl, [r0, #-1]
87801ef8:	eafffff8 	b	87801ee0 <rt_vsnprintf+0x250>
87801efc:	e1a02003 	mov	r2, r3
87801f00:	ea000058 	b	87802068 <rt_vsnprintf+0x3d8>
87801f04:	e58d3018 	str	r3, [sp, #24]
87801f08:	e282b004 	add	fp, r2, #4
87801f0c:	e5922000 	ldr	r2, [r2]
87801f10:	e59f317c 	ldr	r3, [pc, #380]	; 87802094 <rt_vsnprintf+0x404>
87801f14:	e58d101c 	str	r1, [sp, #28]
87801f18:	e3520000 	cmp	r2, #0
87801f1c:	01a02003 	moveq	r2, r3
87801f20:	e58d2014 	str	r2, [sp, #20]
87801f24:	e1a00002 	mov	r0, r2
87801f28:	ebffff27 	bl	87801bcc <rt_strlen>
87801f2c:	e59d3018 	ldr	r3, [sp, #24]
87801f30:	e59d2014 	ldr	r2, [sp, #20]
87801f34:	e59d101c 	ldr	r1, [sp, #28]
87801f38:	e3530000 	cmp	r3, #0
87801f3c:	d3a0c000 	movle	ip, #0
87801f40:	c3a0c001 	movgt	ip, #1
87801f44:	e1530000 	cmp	r3, r0
87801f48:	a3a0c000 	movge	ip, #0
87801f4c:	e35c0000 	cmp	ip, #0
87801f50:	01a03000 	moveq	r3, r0
87801f54:	e3150010 	tst	r5, #16
87801f58:	1a000007 	bne	87801f7c <rt_vsnprintf+0x2ec>
87801f5c:	e2411001 	sub	r1, r1, #1
87801f60:	e2810001 	add	r0, r1, #1
87801f64:	e1500003 	cmp	r0, r3
87801f68:	da000003 	ble	87801f7c <rt_vsnprintf+0x2ec>
87801f6c:	e1540007 	cmp	r4, r7
87801f70:	e2844001 	add	r4, r4, #1
87801f74:	3544a001 	strbcc	sl, [r4, #-1]
87801f78:	eafffff7 	b	87801f5c <rt_vsnprintf+0x2cc>
87801f7c:	e1a00004 	mov	r0, r4
87801f80:	e064c000 	rsb	ip, r4, r0
87801f84:	e153000c 	cmp	r3, ip
87801f88:	da000005 	ble	87801fa4 <rt_vsnprintf+0x314>
87801f8c:	e1500007 	cmp	r0, r7
87801f90:	e2822001 	add	r2, r2, #1
87801f94:	e2800001 	add	r0, r0, #1
87801f98:	3552c001 	ldrbcc	ip, [r2, #-1]
87801f9c:	3540c001 	strbcc	ip, [r0, #-1]
87801fa0:	eafffff6 	b	87801f80 <rt_vsnprintf+0x2f0>
87801fa4:	e3530000 	cmp	r3, #0
87801fa8:	a0844003 	addge	r4, r4, r3
87801fac:	e1a00004 	mov	r0, r4
87801fb0:	e0602001 	rsb	r2, r0, r1
87801fb4:	e0842002 	add	r2, r4, r2
87801fb8:	e1520003 	cmp	r2, r3
87801fbc:	da000028 	ble	87802064 <rt_vsnprintf+0x3d4>
87801fc0:	e1500007 	cmp	r0, r7
87801fc4:	e2800001 	add	r0, r0, #1
87801fc8:	3540a001 	strbcc	sl, [r0, #-1]
87801fcc:	eafffff7 	b	87801fb0 <rt_vsnprintf+0x320>
87801fd0:	e2840001 	add	r0, r4, #1
87801fd4:	ea000023 	b	87802068 <rt_vsnprintf+0x3d8>
87801fd8:	e3855040 	orr	r5, r5, #64	; 0x40
87801fdc:	e3a00010 	mov	r0, #16
87801fe0:	ea000011 	b	8780202c <rt_vsnprintf+0x39c>
87801fe4:	e3855002 	orr	r5, r5, #2
87801fe8:	ea00000c 	b	87802020 <rt_vsnprintf+0x390>
87801fec:	e1540007 	cmp	r4, r7
87801ff0:	e2840001 	add	r0, r4, #1
87801ff4:	33a03025 	movcc	r3, #37	; 0x25
87801ff8:	35c43000 	strbcc	r3, [r4]
87801ffc:	e5d63000 	ldrb	r3, [r6]
87802000:	e3530000 	cmp	r3, #0
87802004:	0a000003 	beq	87802018 <rt_vsnprintf+0x388>
87802008:	e1570000 	cmp	r7, r0
8780200c:	e2840002 	add	r0, r4, #2
87802010:	85c43001 	strbhi	r3, [r4, #1]
87802014:	ea000013 	b	87802068 <rt_vsnprintf+0x3d8>
87802018:	e2466001 	sub	r6, r6, #1
8780201c:	ea000011 	b	87802068 <rt_vsnprintf+0x3d8>
87802020:	e3a0000a 	mov	r0, #10
87802024:	ea000000 	b	8780202c <rt_vsnprintf+0x39c>
87802028:	e3a00008 	mov	r0, #8
8780202c:	e35c006c 	cmp	ip, #108	; 0x6c
87802030:	e282b004 	add	fp, r2, #4
87802034:	e5922000 	ldr	r2, [r2]
87802038:	0a000004 	beq	87802050 <rt_vsnprintf+0x3c0>
8780203c:	e35c0068 	cmp	ip, #104	; 0x68
87802040:	1a000002 	bne	87802050 <rt_vsnprintf+0x3c0>
87802044:	e3150002 	tst	r5, #2
87802048:	06ff2072 	uxtheq	r2, r2
8780204c:	16bf2072 	sxthne	r2, r2
87802050:	e88d002a 	stm	sp, {r1, r3, r5}
87802054:	e1a03000 	mov	r3, r0
87802058:	e1a01007 	mov	r1, r7
8780205c:	e1a00004 	mov	r0, r4
87802060:	ebfffd68 	bl	87801608 <print_number>
87802064:	e1a0200b 	mov	r2, fp
87802068:	e2866001 	add	r6, r6, #1
8780206c:	e1a04000 	mov	r4, r0
87802070:	eaffff11 	b	87801cbc <rt_vsnprintf+0x2c>
87802074:	e3590000 	cmp	r9, #0
87802078:	0a000002 	beq	87802088 <rt_vsnprintf+0x3f8>
8780207c:	e1540007 	cmp	r4, r7
87802080:	35c43000 	strbcc	r3, [r4]
87802084:	25473001 	strbcs	r3, [r7, #-1]
87802088:	e0680004 	rsb	r0, r8, r4
8780208c:	e28dd024 	add	sp, sp, #36	; 0x24
87802090:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
87802094:	87803e18 	.word	0x87803e18

87802098 <rt_snprintf>:
87802098:	e92d000c 	push	{r2, r3}
8780209c:	e92d4007 	push	{r0, r1, r2, lr}
878020a0:	e28d3014 	add	r3, sp, #20
878020a4:	e59d2010 	ldr	r2, [sp, #16]
878020a8:	e58d3004 	str	r3, [sp, #4]
878020ac:	ebfffef7 	bl	87801c90 <rt_vsnprintf>
878020b0:	e28dd00c 	add	sp, sp, #12
878020b4:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878020b8:	e28dd008 	add	sp, sp, #8
878020bc:	e12fff1e 	bx	lr

878020c0 <rt_vsprintf>:
878020c0:	e1a03002 	mov	r3, r2
878020c4:	e1a02001 	mov	r2, r1
878020c8:	e3e01000 	mvn	r1, #0
878020cc:	eafffeef 	b	87801c90 <rt_vsnprintf>

878020d0 <rt_sprintf>:
878020d0:	e92d000e 	push	{r1, r2, r3}
878020d4:	e92d4003 	push	{r0, r1, lr}
878020d8:	e28d2010 	add	r2, sp, #16
878020dc:	e59d100c 	ldr	r1, [sp, #12]
878020e0:	e58d2004 	str	r2, [sp, #4]
878020e4:	ebfffff5 	bl	878020c0 <rt_vsprintf>
878020e8:	e28dd008 	add	sp, sp, #8
878020ec:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878020f0:	e28dd00c 	add	sp, sp, #12
878020f4:	e12fff1e 	bx	lr

878020f8 <rt_malloc_align>:
878020f8:	e2811003 	add	r1, r1, #3
878020fc:	e2800003 	add	r0, r0, #3
87802100:	e92d4010 	push	{r4, lr}
87802104:	e3c00003 	bic	r0, r0, #3
87802108:	e3c14003 	bic	r4, r1, #3
8780210c:	e0800004 	add	r0, r0, r4
87802110:	eb000072 	bl	878022e0 <rt_malloc>
87802114:	e3500000 	cmp	r0, #0
87802118:	08bd8010 	popeq	{r4, pc}
8780211c:	e2443001 	sub	r3, r4, #1
87802120:	e1a02000 	mov	r2, r0
87802124:	e1100003 	tst	r0, r3
87802128:	10830000 	addne	r0, r3, r0
8780212c:	12644000 	rsbne	r4, r4, #0
87802130:	00840000 	addeq	r0, r4, r0
87802134:	10000004 	andne	r0, r0, r4
87802138:	e5002004 	str	r2, [r0, #-4]
8780213c:	e8bd8010 	pop	{r4, pc}

87802140 <rt_free_align>:
87802140:	e5100004 	ldr	r0, [r0, #-4]
87802144:	ea0000d3 	b	87802498 <rt_free>

87802148 <__rt_ffs>:
87802148:	e3500000 	cmp	r0, #0
8780214c:	012fff1e 	bxeq	lr
87802150:	e59f3054 	ldr	r3, [pc, #84]	; 878021ac <__rt_ffs+0x64>
87802154:	e21020ff 	ands	r2, r0, #255	; 0xff
87802158:	0a000003 	beq	8780216c <__rt_ffs+0x24>
8780215c:	e0830002 	add	r0, r3, r2
87802160:	e5d00028 	ldrb	r0, [r0, #40]	; 0x28
87802164:	e2800001 	add	r0, r0, #1
87802168:	e12fff1e 	bx	lr
8780216c:	e3100cff 	tst	r0, #65280	; 0xff00
87802170:	0a000004 	beq	87802188 <__rt_ffs+0x40>
87802174:	e7e70450 	ubfx	r0, r0, #8, #8
87802178:	e0830000 	add	r0, r3, r0
8780217c:	e5d00028 	ldrb	r0, [r0, #40]	; 0x28
87802180:	e2800009 	add	r0, r0, #9
87802184:	e12fff1e 	bx	lr
87802188:	e31008ff 	tst	r0, #16711680	; 0xff0000
8780218c:	17e70850 	ubfxne	r0, r0, #16, #8
87802190:	10830000 	addne	r0, r3, r0
87802194:	15d00028 	ldrbne	r0, [r0, #40]	; 0x28
87802198:	12800011 	addne	r0, r0, #17
8780219c:	00830c20 	addeq	r0, r3, r0, lsr #24
878021a0:	05d00028 	ldrbeq	r0, [r0, #40]	; 0x28
878021a4:	02800019 	addeq	r0, r0, #25
878021a8:	e12fff1e 	bx	lr
878021ac:	87803cf0 	.word	0x87803cf0

878021b0 <plug_holes>:
878021b0:	e59f1094 	ldr	r1, [pc, #148]	; 8780224c <plug_holes+0x9c>
878021b4:	e5903004 	ldr	r3, [r0, #4]
878021b8:	e5912000 	ldr	r2, [r1]
878021bc:	e0823003 	add	r3, r2, r3
878021c0:	e1500003 	cmp	r0, r3
878021c4:	0a00000e 	beq	87802204 <plug_holes+0x54>
878021c8:	e1d3c0b2 	ldrh	ip, [r3, #2]
878021cc:	e35c0000 	cmp	ip, #0
878021d0:	1a00000b 	bne	87802204 <plug_holes+0x54>
878021d4:	e591c004 	ldr	ip, [r1, #4]
878021d8:	e153000c 	cmp	r3, ip
878021dc:	0a000008 	beq	87802204 <plug_holes+0x54>
878021e0:	e591c008 	ldr	ip, [r1, #8]
878021e4:	e153000c 	cmp	r3, ip
878021e8:	e593c004 	ldr	ip, [r3, #4]
878021ec:	05810008 	streq	r0, [r1, #8]
878021f0:	e580c004 	str	ip, [r0, #4]
878021f4:	e062c000 	rsb	ip, r2, r0
878021f8:	e5933004 	ldr	r3, [r3, #4]
878021fc:	e0823003 	add	r3, r2, r3
87802200:	e583c008 	str	ip, [r3, #8]
87802204:	e590c008 	ldr	ip, [r0, #8]
87802208:	e082300c 	add	r3, r2, ip
8780220c:	e1500003 	cmp	r0, r3
87802210:	012fff1e 	bxeq	lr
87802214:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87802218:	e1d3e0b2 	ldrh	lr, [r3, #2]
8780221c:	e35e0000 	cmp	lr, #0
87802220:	149df004 	popne	{pc}		; (ldrne pc, [sp], #4)
87802224:	e5911008 	ldr	r1, [r1, #8]
87802228:	e1500001 	cmp	r0, r1
8780222c:	059f1018 	ldreq	r1, [pc, #24]	; 8780224c <plug_holes+0x9c>
87802230:	05813008 	streq	r3, [r1, #8]
87802234:	e5901004 	ldr	r1, [r0, #4]
87802238:	e5831004 	str	r1, [r3, #4]
8780223c:	e5903004 	ldr	r3, [r0, #4]
87802240:	e0822003 	add	r2, r2, r3
87802244:	e582c008 	str	ip, [r2, #8]
87802248:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
8780224c:	878042f8 	.word	0x878042f8

87802250 <rt_system_heap_init>:
87802250:	e3c11003 	bic	r1, r1, #3
87802254:	e3510018 	cmp	r1, #24
87802258:	912fff1e 	bxls	lr
8780225c:	e2800003 	add	r0, r0, #3
87802260:	e2413018 	sub	r3, r1, #24
87802264:	e3c00003 	bic	r0, r0, #3
87802268:	e1500003 	cmp	r0, r3
8780226c:	812fff1e 	bxhi	lr
87802270:	e92d4010 	push	{r4, lr}
87802274:	e0601001 	rsb	r1, r0, r1
87802278:	e59f4058 	ldr	r4, [pc, #88]	; 878022d8 <rt_system_heap_init+0x88>
8780227c:	e2413018 	sub	r3, r1, #24
87802280:	e241100c 	sub	r1, r1, #12
87802284:	e3012ea0 	movw	r2, #7840	; 0x1ea0
87802288:	e080c001 	add	ip, r0, r1
8780228c:	e584300c 	str	r3, [r4, #12]
87802290:	e3a03000 	mov	r3, #0
87802294:	e1c020b0 	strh	r2, [r0]
87802298:	e5801004 	str	r1, [r0, #4]
8780229c:	e5803008 	str	r3, [r0, #8]
878022a0:	e1c030b2 	strh	r3, [r0, #2]
878022a4:	e18020b1 	strh	r2, [r0, r1]
878022a8:	e3a02001 	mov	r2, #1
878022ac:	e5840000 	str	r0, [r4]
878022b0:	e2840010 	add	r0, r4, #16
878022b4:	e58c1004 	str	r1, [ip, #4]
878022b8:	e58c1008 	str	r1, [ip, #8]
878022bc:	e1cc20b2 	strh	r2, [ip, #2]
878022c0:	e59f1014 	ldr	r1, [pc, #20]	; 878022dc <rt_system_heap_init+0x8c>
878022c4:	e584c004 	str	ip, [r4, #4]
878022c8:	ebfff818 	bl	87800330 <rt_sem_init>
878022cc:	e5943000 	ldr	r3, [r4]
878022d0:	e5843008 	str	r3, [r4, #8]
878022d4:	e8bd8010 	pop	{r4, pc}
878022d8:	878042f8 	.word	0x878042f8
878022dc:	87803e1f 	.word	0x87803e1f

878022e0 <rt_malloc>:
878022e0:	e3500000 	cmp	r0, #0
878022e4:	012fff1e 	bxeq	lr
878022e8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
878022ec:	e2800003 	add	r0, r0, #3
878022f0:	e59f516c 	ldr	r5, [pc, #364]	; 87802464 <rt_malloc+0x184>
878022f4:	e3c06003 	bic	r6, r0, #3
878022f8:	e595300c 	ldr	r3, [r5, #12]
878022fc:	e1560003 	cmp	r6, r3
87802300:	8a000055 	bhi	8780245c <rt_malloc+0x17c>
87802304:	e356000b 	cmp	r6, #11
87802308:	e3e01000 	mvn	r1, #0
8780230c:	e2850010 	add	r0, r5, #16
87802310:	93a0600c 	movls	r6, #12
87802314:	ebfff830 	bl	878003dc <rt_sem_take>
87802318:	e595c008 	ldr	ip, [r5, #8]
8780231c:	e5951000 	ldr	r1, [r5]
87802320:	e595000c 	ldr	r0, [r5, #12]
87802324:	e061300c 	rsb	r3, r1, ip
87802328:	e0669000 	rsb	r9, r6, r0
8780232c:	e1530009 	cmp	r3, r9
87802330:	2a000047 	bcs	87802454 <rt_malloc+0x174>
87802334:	e0814003 	add	r4, r1, r3
87802338:	e1d480b2 	ldrh	r8, [r4, #2]
8780233c:	e5947004 	ldr	r7, [r4, #4]
87802340:	e3580000 	cmp	r8, #0
87802344:	1a000040 	bne	8780244c <rt_malloc+0x16c>
87802348:	e0632007 	rsb	r2, r3, r7
8780234c:	e242e00c 	sub	lr, r2, #12
87802350:	e156000e 	cmp	r6, lr
87802354:	8a00003c 	bhi	8780244c <rt_malloc+0x16c>
87802358:	e2869018 	add	r9, r6, #24
8780235c:	e15e0009 	cmp	lr, r9
87802360:	3a000018 	bcc	878023c8 <rt_malloc+0xe8>
87802364:	e286200c 	add	r2, r6, #12
87802368:	e3019ea0 	movw	r9, #7840	; 0x1ea0
8780236c:	e0822003 	add	r2, r2, r3
87802370:	e280000c 	add	r0, r0, #12
87802374:	e081e002 	add	lr, r1, r2
87802378:	e18190b2 	strh	r9, [r1, r2]
8780237c:	e58e3008 	str	r3, [lr, #8]
87802380:	e3a03001 	mov	r3, #1
87802384:	e58e7004 	str	r7, [lr, #4]
87802388:	e1ce80b2 	strh	r8, [lr, #2]
8780238c:	e5842004 	str	r2, [r4, #4]
87802390:	e1c430b2 	strh	r3, [r4, #2]
87802394:	e59e3004 	ldr	r3, [lr, #4]
87802398:	e1530000 	cmp	r3, r0
8780239c:	e5950030 	ldr	r0, [r5, #48]	; 0x30
878023a0:	10811003 	addne	r1, r1, r3
878023a4:	e5953034 	ldr	r3, [r5, #52]	; 0x34
878023a8:	e280000c 	add	r0, r0, #12
878023ac:	e0800006 	add	r0, r0, r6
878023b0:	15812008 	strne	r2, [r1, #8]
878023b4:	e1500003 	cmp	r0, r3
878023b8:	e5850030 	str	r0, [r5, #48]	; 0x30
878023bc:	859f30a0 	ldrhi	r3, [pc, #160]	; 87802464 <rt_malloc+0x184>
878023c0:	85830034 	strhi	r0, [r3, #52]	; 0x34
878023c4:	ea000008 	b	878023ec <rt_malloc+0x10c>
878023c8:	e3a03001 	mov	r3, #1
878023cc:	e1c430b2 	strh	r3, [r4, #2]
878023d0:	e5953030 	ldr	r3, [r5, #48]	; 0x30
878023d4:	e0823003 	add	r3, r2, r3
878023d8:	e5952034 	ldr	r2, [r5, #52]	; 0x34
878023dc:	e5853030 	str	r3, [r5, #48]	; 0x30
878023e0:	e1530002 	cmp	r3, r2
878023e4:	859f2078 	ldrhi	r2, [pc, #120]	; 87802464 <rt_malloc+0x184>
878023e8:	85823034 	strhi	r3, [r2, #52]	; 0x34
878023ec:	e15c0004 	cmp	ip, r4
878023f0:	e3013ea0 	movw	r3, #7840	; 0x1ea0
878023f4:	e1c430b0 	strh	r3, [r4]
878023f8:	1a00000c 	bne	87802430 <rt_malloc+0x150>
878023fc:	e895000b 	ldm	r5, {r0, r1, r3}
87802400:	e3a02000 	mov	r2, #0
87802404:	ea000004 	b	8780241c <rt_malloc+0x13c>
87802408:	e1510003 	cmp	r1, r3
8780240c:	0a00000b 	beq	87802440 <rt_malloc+0x160>
87802410:	e5933004 	ldr	r3, [r3, #4]
87802414:	e3a02001 	mov	r2, #1
87802418:	e0803003 	add	r3, r0, r3
8780241c:	e1d3c0b2 	ldrh	ip, [r3, #2]
87802420:	e35c0000 	cmp	ip, #0
87802424:	1afffff7 	bne	87802408 <rt_malloc+0x128>
87802428:	e3520000 	cmp	r2, #0
8780242c:	15853008 	strne	r3, [r5, #8]
87802430:	e59f0030 	ldr	r0, [pc, #48]	; 87802468 <rt_malloc+0x188>
87802434:	ebfff815 	bl	87800490 <rt_sem_release>
87802438:	e284000c 	add	r0, r4, #12
8780243c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802440:	e3520000 	cmp	r2, #0
87802444:	15851008 	strne	r1, [r5, #8]
87802448:	eafffff8 	b	87802430 <rt_malloc+0x150>
8780244c:	e1a03007 	mov	r3, r7
87802450:	eaffffb5 	b	8780232c <rt_malloc+0x4c>
87802454:	e59f000c 	ldr	r0, [pc, #12]	; 87802468 <rt_malloc+0x188>
87802458:	ebfff80c 	bl	87800490 <rt_sem_release>
8780245c:	e3a00000 	mov	r0, #0
87802460:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802464:	878042f8 	.word	0x878042f8
87802468:	87804308 	.word	0x87804308

8780246c <rt_calloc>:
8780246c:	e92d4070 	push	{r4, r5, r6, lr}
87802470:	e0040091 	mul	r4, r1, r0
87802474:	e1a00004 	mov	r0, r4
87802478:	ebffff98 	bl	878022e0 <rt_malloc>
8780247c:	e2505000 	subs	r5, r0, #0
87802480:	0a000002 	beq	87802490 <rt_calloc+0x24>
87802484:	e1a02004 	mov	r2, r4
87802488:	e3a01000 	mov	r1, #0
8780248c:	ebfffd0d 	bl	878018c8 <rt_memset>
87802490:	e1a00005 	mov	r0, r5
87802494:	e8bd8070 	pop	{r4, r5, r6, pc}

87802498 <rt_free>:
87802498:	e3500000 	cmp	r0, #0
8780249c:	012fff1e 	bxeq	lr
878024a0:	e92d4070 	push	{r4, r5, r6, lr}
878024a4:	e59f4074 	ldr	r4, [pc, #116]	; 87802520 <rt_free+0x88>
878024a8:	e5943000 	ldr	r3, [r4]
878024ac:	e1500003 	cmp	r0, r3
878024b0:	38bd8070 	popcc	{r4, r5, r6, pc}
878024b4:	e5943004 	ldr	r3, [r4, #4]
878024b8:	e1500003 	cmp	r0, r3
878024bc:	28bd8070 	popcs	{r4, r5, r6, pc}
878024c0:	e240600c 	sub	r6, r0, #12
878024c4:	e1a05000 	mov	r5, r0
878024c8:	e3e01000 	mvn	r1, #0
878024cc:	e2840010 	add	r0, r4, #16
878024d0:	ebfff7c1 	bl	878003dc <rt_sem_take>
878024d4:	e5152008 	ldr	r2, [r5, #-8]
878024d8:	e3a03000 	mov	r3, #0
878024dc:	e14530ba 	strh	r3, [r5, #-10]
878024e0:	e3013ea0 	movw	r3, #7840	; 0x1ea0
878024e4:	e14530bc 	strh	r3, [r5, #-12]
878024e8:	e1a00006 	mov	r0, r6
878024ec:	e5943008 	ldr	r3, [r4, #8]
878024f0:	e1560003 	cmp	r6, r3
878024f4:	e5943030 	ldr	r3, [r4, #48]	; 0x30
878024f8:	35846008 	strcc	r6, [r4, #8]
878024fc:	e0622003 	rsb	r2, r2, r3
87802500:	e5943000 	ldr	r3, [r4]
87802504:	e0633006 	rsb	r3, r3, r6
87802508:	e0823003 	add	r3, r2, r3
8780250c:	e5843030 	str	r3, [r4, #48]	; 0x30
87802510:	ebffff26 	bl	878021b0 <plug_holes>
87802514:	e59f0008 	ldr	r0, [pc, #8]	; 87802524 <rt_free+0x8c>
87802518:	e8bd4070 	pop	{r4, r5, r6, lr}
8780251c:	eafff7db 	b	87800490 <rt_sem_release>
87802520:	878042f8 	.word	0x878042f8
87802524:	87804308 	.word	0x87804308

87802528 <rt_realloc>:
87802528:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780252c:	e2811003 	add	r1, r1, #3
87802530:	e59f5130 	ldr	r5, [pc, #304]	; 87802668 <rt_realloc+0x140>
87802534:	e3c14003 	bic	r4, r1, #3
87802538:	e595300c 	ldr	r3, [r5, #12]
8780253c:	e1540003 	cmp	r4, r3
87802540:	8a000044 	bhi	87802658 <rt_realloc+0x130>
87802544:	e3540000 	cmp	r4, #0
87802548:	1a000002 	bne	87802558 <rt_realloc+0x30>
8780254c:	ebffffd1 	bl	87802498 <rt_free>
87802550:	e1a00004 	mov	r0, r4
87802554:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802558:	e3500000 	cmp	r0, #0
8780255c:	e1a07000 	mov	r7, r0
87802560:	1a000002 	bne	87802570 <rt_realloc+0x48>
87802564:	e1a00004 	mov	r0, r4
87802568:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
8780256c:	eaffff5b 	b	878022e0 <rt_malloc>
87802570:	e3e01000 	mvn	r1, #0
87802574:	e2850010 	add	r0, r5, #16
87802578:	ebfff797 	bl	878003dc <rt_sem_take>
8780257c:	e5953000 	ldr	r3, [r5]
87802580:	e1570003 	cmp	r7, r3
87802584:	3a000021 	bcc	87802610 <rt_realloc+0xe8>
87802588:	e5952004 	ldr	r2, [r5, #4]
8780258c:	e1570002 	cmp	r7, r2
87802590:	2a00001e 	bcs	87802610 <rt_realloc+0xe8>
87802594:	e517e008 	ldr	lr, [r7, #-8]
87802598:	e247c00c 	sub	ip, r7, #12
8780259c:	e063c00c 	rsb	ip, r3, ip
878025a0:	e24e600c 	sub	r6, lr, #12
878025a4:	e06c6006 	rsb	r6, ip, r6
878025a8:	e1540006 	cmp	r4, r6
878025ac:	0a000017 	beq	87802610 <rt_realloc+0xe8>
878025b0:	e2842018 	add	r2, r4, #24
878025b4:	e1560002 	cmp	r6, r2
878025b8:	9a000018 	bls	87802620 <rt_realloc+0xf8>
878025bc:	e5952030 	ldr	r2, [r5, #48]	; 0x30
878025c0:	e084100c 	add	r1, r4, ip
878025c4:	e0842002 	add	r2, r4, r2
878025c8:	e281100c 	add	r1, r1, #12
878025cc:	e0830001 	add	r0, r3, r1
878025d0:	e0666002 	rsb	r6, r6, r2
878025d4:	e5856030 	str	r6, [r5, #48]	; 0x30
878025d8:	e3012ea0 	movw	r2, #7840	; 0x1ea0
878025dc:	e18320b1 	strh	r2, [r3, r1]
878025e0:	e3a02000 	mov	r2, #0
878025e4:	e1c020b2 	strh	r2, [r0, #2]
878025e8:	e595200c 	ldr	r2, [r5, #12]
878025ec:	e580e004 	str	lr, [r0, #4]
878025f0:	e580c008 	str	ip, [r0, #8]
878025f4:	e282200c 	add	r2, r2, #12
878025f8:	e5071008 	str	r1, [r7, #-8]
878025fc:	e590c004 	ldr	ip, [r0, #4]
87802600:	e15c0002 	cmp	ip, r2
87802604:	1083300c 	addne	r3, r3, ip
87802608:	15831008 	strne	r1, [r3, #8]
8780260c:	ebfffee7 	bl	878021b0 <plug_holes>
87802610:	e59f0054 	ldr	r0, [pc, #84]	; 8780266c <rt_realloc+0x144>
87802614:	ebfff79d 	bl	87800490 <rt_sem_release>
87802618:	e1a00007 	mov	r0, r7
8780261c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802620:	e2850010 	add	r0, r5, #16
87802624:	ebfff799 	bl	87800490 <rt_sem_release>
87802628:	e1a00004 	mov	r0, r4
8780262c:	ebffff2b 	bl	878022e0 <rt_malloc>
87802630:	e2505000 	subs	r5, r0, #0
87802634:	0a000009 	beq	87802660 <rt_realloc+0x138>
87802638:	e1540006 	cmp	r4, r6
8780263c:	e1a01007 	mov	r1, r7
87802640:	31a02004 	movcc	r2, r4
87802644:	21a02006 	movcs	r2, r6
87802648:	ebfffcc5 	bl	87801964 <rt_memcpy>
8780264c:	e1a00007 	mov	r0, r7
87802650:	ebffff90 	bl	87802498 <rt_free>
87802654:	ea000001 	b	87802660 <rt_realloc+0x138>
87802658:	e3a00000 	mov	r0, #0
8780265c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802660:	e1a00005 	mov	r0, r5
87802664:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802668:	878042f8 	.word	0x878042f8
8780266c:	87804308 	.word	0x87804308

87802670 <rt_memory_info>:
87802670:	e3500000 	cmp	r0, #0
87802674:	159f3028 	ldrne	r3, [pc, #40]	; 878026a4 <rt_memory_info+0x34>
87802678:	1593300c 	ldrne	r3, [r3, #12]
8780267c:	15803000 	strne	r3, [r0]
87802680:	e3510000 	cmp	r1, #0
87802684:	159f3018 	ldrne	r3, [pc, #24]	; 878026a4 <rt_memory_info+0x34>
87802688:	15933030 	ldrne	r3, [r3, #48]	; 0x30
8780268c:	15813000 	strne	r3, [r1]
87802690:	e3520000 	cmp	r2, #0
87802694:	159f3008 	ldrne	r3, [pc, #8]	; 878026a4 <rt_memory_info+0x34>
87802698:	15933034 	ldrne	r3, [r3, #52]	; 0x34
8780269c:	15823000 	strne	r3, [r2]
878026a0:	e12fff1e 	bx	lr
878026a4:	878042f8 	.word	0x878042f8

878026a8 <rt_system_object_init>:
878026a8:	e12fff1e 	bx	lr

878026ac <rt_object_get_information>:
878026ac:	e59f2030 	ldr	r2, [pc, #48]	; 878026e4 <rt_object_get_information+0x38>
878026b0:	e3a03000 	mov	r3, #0
878026b4:	e7d2c203 	ldrb	ip, [r2, r3, lsl #4]
878026b8:	e1a01203 	lsl	r1, r3, #4
878026bc:	e15c0000 	cmp	ip, r0
878026c0:	1a000002 	bne	878026d0 <rt_object_get_information+0x24>
878026c4:	e59f3018 	ldr	r3, [pc, #24]	; 878026e4 <rt_object_get_information+0x38>
878026c8:	e0830001 	add	r0, r3, r1
878026cc:	e12fff1e 	bx	lr
878026d0:	e2833001 	add	r3, r3, #1
878026d4:	e3530007 	cmp	r3, #7
878026d8:	1afffff5 	bne	878026b4 <rt_object_get_information+0x8>
878026dc:	e3a00000 	mov	r0, #0
878026e0:	e12fff1e 	bx	lr
878026e4:	87803e28 	.word	0x87803e28

878026e8 <rt_object_init>:
878026e8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878026ec:	e1a05000 	mov	r5, r0
878026f0:	e1a00001 	mov	r0, r1
878026f4:	e1a04001 	mov	r4, r1
878026f8:	e1a08002 	mov	r8, r2
878026fc:	ebffffea 	bl	878026ac <rt_object_get_information>
87802700:	e1a07000 	mov	r7, r0
87802704:	eb000127 	bl	87802ba8 <rt_enter_critical>
87802708:	e1a03007 	mov	r3, r7
8780270c:	e5b36004 	ldr	r6, [r3, #4]!
87802710:	e1560003 	cmp	r6, r3
87802714:	15966000 	ldrne	r6, [r6]
87802718:	1afffffc 	bne	87802710 <rt_object_init+0x28>
8780271c:	eb00012a 	bl	87802bcc <rt_exit_critical>
87802720:	e1e01c84 	mvn	r1, r4, lsl #25
87802724:	e3a02008 	mov	r2, #8
87802728:	e1a00005 	mov	r0, r5
8780272c:	e1e01ca1 	mvn	r1, r1, lsr #25
87802730:	e5c51008 	strb	r1, [r5, #8]
87802734:	e1a01008 	mov	r1, r8
87802738:	ebfffcf0 	bl	87801b00 <rt_strncpy>
8780273c:	ebfff685 	bl	87800158 <rt_hw_interrupt_disable>
87802740:	e5972004 	ldr	r2, [r7, #4]
87802744:	e285300c 	add	r3, r5, #12
87802748:	e5823004 	str	r3, [r2, #4]
8780274c:	e585200c 	str	r2, [r5, #12]
87802750:	e5873004 	str	r3, [r7, #4]
87802754:	e5856010 	str	r6, [r5, #16]
87802758:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
8780275c:	eafff67c 	b	87800154 <rt_hw_interrupt_enable>

87802760 <rt_object_detach>:
87802760:	e92d4010 	push	{r4, lr}
87802764:	e3a03000 	mov	r3, #0
87802768:	e5c03008 	strb	r3, [r0, #8]
8780276c:	e1a04000 	mov	r4, r0
87802770:	ebfff678 	bl	87800158 <rt_hw_interrupt_disable>
87802774:	e5941010 	ldr	r1, [r4, #16]
87802778:	e284300c 	add	r3, r4, #12
8780277c:	e594200c 	ldr	r2, [r4, #12]
87802780:	e5821004 	str	r1, [r2, #4]
87802784:	e5941010 	ldr	r1, [r4, #16]
87802788:	e5812000 	str	r2, [r1]
8780278c:	e5843010 	str	r3, [r4, #16]
87802790:	e584300c 	str	r3, [r4, #12]
87802794:	e8bd4010 	pop	{r4, lr}
87802798:	eafff66d 	b	87800154 <rt_hw_interrupt_enable>

8780279c <rt_object_allocate>:
8780279c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878027a0:	e1a06001 	mov	r6, r1
878027a4:	e1a07000 	mov	r7, r0
878027a8:	ebffffbf 	bl	878026ac <rt_object_get_information>
878027ac:	e1a04000 	mov	r4, r0
878027b0:	e590000c 	ldr	r0, [r0, #12]
878027b4:	ebfffec9 	bl	878022e0 <rt_malloc>
878027b8:	e2505000 	subs	r5, r0, #0
878027bc:	0a000011 	beq	87802808 <rt_object_allocate+0x6c>
878027c0:	e594200c 	ldr	r2, [r4, #12]
878027c4:	e3a01000 	mov	r1, #0
878027c8:	ebfffc3e 	bl	878018c8 <rt_memset>
878027cc:	e5c57008 	strb	r7, [r5, #8]
878027d0:	e3a03000 	mov	r3, #0
878027d4:	e5c53009 	strb	r3, [r5, #9]
878027d8:	e3a02008 	mov	r2, #8
878027dc:	e1a01006 	mov	r1, r6
878027e0:	e1a00005 	mov	r0, r5
878027e4:	ebfffcc5 	bl	87801b00 <rt_strncpy>
878027e8:	ebfff65a 	bl	87800158 <rt_hw_interrupt_disable>
878027ec:	e5942004 	ldr	r2, [r4, #4]
878027f0:	e285300c 	add	r3, r5, #12
878027f4:	e5823004 	str	r3, [r2, #4]
878027f8:	e585200c 	str	r2, [r5, #12]
878027fc:	e5a43004 	str	r3, [r4, #4]!
87802800:	e5854010 	str	r4, [r5, #16]
87802804:	ebfff652 	bl	87800154 <rt_hw_interrupt_enable>
87802808:	e1a00005 	mov	r0, r5
8780280c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87802810 <rt_object_delete>:
87802810:	e92d4010 	push	{r4, lr}
87802814:	e3a03000 	mov	r3, #0
87802818:	e5c03008 	strb	r3, [r0, #8]
8780281c:	e1a04000 	mov	r4, r0
87802820:	ebfff64c 	bl	87800158 <rt_hw_interrupt_disable>
87802824:	e5941010 	ldr	r1, [r4, #16]
87802828:	e284300c 	add	r3, r4, #12
8780282c:	e594200c 	ldr	r2, [r4, #12]
87802830:	e5821004 	str	r1, [r2, #4]
87802834:	e5941010 	ldr	r1, [r4, #16]
87802838:	e5812000 	str	r2, [r1]
8780283c:	e5843010 	str	r3, [r4, #16]
87802840:	e584300c 	str	r3, [r4, #12]
87802844:	ebfff642 	bl	87800154 <rt_hw_interrupt_enable>
87802848:	e1a00004 	mov	r0, r4
8780284c:	e8bd4010 	pop	{r4, lr}
87802850:	eaffff10 	b	87802498 <rt_free>

87802854 <rt_object_is_systemobject>:
87802854:	e1d000d8 	ldrsb	r0, [r0, #8]
87802858:	e1a00fa0 	lsr	r0, r0, #31
8780285c:	e12fff1e 	bx	lr

87802860 <rt_object_get_type>:
87802860:	e5d00008 	ldrb	r0, [r0, #8]
87802864:	e200007f 	and	r0, r0, #127	; 0x7f
87802868:	e12fff1e 	bx	lr

8780286c <rt_object_find>:
8780286c:	e351000c 	cmp	r1, #12
87802870:	93a03000 	movls	r3, #0
87802874:	83a03001 	movhi	r3, #1
87802878:	e3500000 	cmp	r0, #0
8780287c:	03833001 	orreq	r3, r3, #1
87802880:	e3530000 	cmp	r3, #0
87802884:	1a000018 	bne	878028ec <rt_object_find+0x80>
87802888:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780288c:	e1a04001 	mov	r4, r1
87802890:	e1a06000 	mov	r6, r0
87802894:	eb0000c3 	bl	87802ba8 <rt_enter_critical>
87802898:	e1a00004 	mov	r0, r4
8780289c:	ebffff82 	bl	878026ac <rt_object_get_information>
878028a0:	e1a07000 	mov	r7, r0
878028a4:	e5b75004 	ldr	r5, [r7, #4]!
878028a8:	e1550007 	cmp	r5, r7
878028ac:	0a00000b 	beq	878028e0 <rt_object_find+0x74>
878028b0:	e245400c 	sub	r4, r5, #12
878028b4:	e3a02008 	mov	r2, #8
878028b8:	e1a01006 	mov	r1, r6
878028bc:	e1a00004 	mov	r0, r4
878028c0:	ebfffc9c 	bl	87801b38 <rt_strncmp>
878028c4:	e3500000 	cmp	r0, #0
878028c8:	1a000002 	bne	878028d8 <rt_object_find+0x6c>
878028cc:	eb0000be 	bl	87802bcc <rt_exit_critical>
878028d0:	e1a00004 	mov	r0, r4
878028d4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878028d8:	e5955000 	ldr	r5, [r5]
878028dc:	eafffff1 	b	878028a8 <rt_object_find+0x3c>
878028e0:	eb0000b9 	bl	87802bcc <rt_exit_critical>
878028e4:	e3a00000 	mov	r0, #0
878028e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878028ec:	e3a00000 	mov	r0, #0
878028f0:	e12fff1e 	bx	lr

878028f4 <rt_system_scheduler_init>:
878028f4:	e59f203c 	ldr	r2, [pc, #60]	; 87802938 <rt_system_scheduler_init+0x44>
878028f8:	e3a03000 	mov	r3, #0
878028fc:	e59f1038 	ldr	r1, [pc, #56]	; 8780293c <rt_system_scheduler_init+0x48>
87802900:	e1c230b0 	strh	r3, [r2]
87802904:	e0832001 	add	r2, r3, r1
87802908:	e5822004 	str	r2, [r2, #4]
8780290c:	e7832001 	str	r2, [r3, r1]
87802910:	e2833008 	add	r3, r3, #8
87802914:	e3530c01 	cmp	r3, #256	; 0x100
87802918:	1afffff9 	bne	87802904 <rt_system_scheduler_init+0x10>
8780291c:	e59f301c 	ldr	r3, [pc, #28]	; 87802940 <rt_system_scheduler_init+0x4c>
87802920:	e3a02000 	mov	r2, #0
87802924:	e5832000 	str	r2, [r3]
87802928:	e59f3014 	ldr	r3, [pc, #20]	; 87802944 <rt_system_scheduler_init+0x50>
8780292c:	e5833004 	str	r3, [r3, #4]
87802930:	e5833000 	str	r3, [r3]
87802934:	e12fff1e 	bx	lr
87802938:	87804330 	.word	0x87804330
8780293c:	87804340 	.word	0x87804340
87802940:	87804448 	.word	0x87804448
87802944:	8780444c 	.word	0x8780444c

87802948 <rt_schedule_insert_thread>:
87802948:	e92d4010 	push	{r4, lr}
8780294c:	e1a04000 	mov	r4, r0
87802950:	ebfff600 	bl	87800158 <rt_hw_interrupt_disable>
87802954:	e59f3068 	ldr	r3, [pc, #104]	; 878029c4 <rt_schedule_insert_thread+0x7c>
87802958:	e5932000 	ldr	r2, [r3]
8780295c:	e1520004 	cmp	r2, r4
87802960:	05d23034 	ldrbeq	r3, [r2, #52]	; 0x34
87802964:	03c3300f 	biceq	r3, r3, #15
87802968:	03833003 	orreq	r3, r3, #3
8780296c:	05c23034 	strbeq	r3, [r2, #52]	; 0x34
87802970:	0a000011 	beq	878029bc <rt_schedule_insert_thread+0x74>
87802974:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
87802978:	e2842014 	add	r2, r4, #20
8780297c:	e5d41035 	ldrb	r1, [r4, #53]	; 0x35
87802980:	e3c3300f 	bic	r3, r3, #15
87802984:	e3833001 	orr	r3, r3, #1
87802988:	e5c43034 	strb	r3, [r4, #52]	; 0x34
8780298c:	e59f3034 	ldr	r3, [pc, #52]	; 878029c8 <rt_schedule_insert_thread+0x80>
87802990:	e0833181 	add	r3, r3, r1, lsl #3
87802994:	e5931004 	ldr	r1, [r3, #4]
87802998:	e5812000 	str	r2, [r1]
8780299c:	e5841018 	str	r1, [r4, #24]
878029a0:	e5832004 	str	r2, [r3, #4]
878029a4:	e59f2020 	ldr	r2, [pc, #32]	; 878029cc <rt_schedule_insert_thread+0x84>
878029a8:	e5843014 	str	r3, [r4, #20]
878029ac:	e5941038 	ldr	r1, [r4, #56]	; 0x38
878029b0:	e5923000 	ldr	r3, [r2]
878029b4:	e1813003 	orr	r3, r1, r3
878029b8:	e5823000 	str	r3, [r2]
878029bc:	e8bd4010 	pop	{r4, lr}
878029c0:	eafff5e3 	b	87800154 <rt_hw_interrupt_enable>
878029c4:	87804444 	.word	0x87804444
878029c8:	87804340 	.word	0x87804340
878029cc:	87804448 	.word	0x87804448

878029d0 <rt_schedule_remove_thread>:
878029d0:	e92d4010 	push	{r4, lr}
878029d4:	e1a04000 	mov	r4, r0
878029d8:	ebfff5de 	bl	87800158 <rt_hw_interrupt_disable>
878029dc:	e5942014 	ldr	r2, [r4, #20]
878029e0:	e2843014 	add	r3, r4, #20
878029e4:	e5941018 	ldr	r1, [r4, #24]
878029e8:	e5821004 	str	r1, [r2, #4]
878029ec:	e5941018 	ldr	r1, [r4, #24]
878029f0:	e5812000 	str	r2, [r1]
878029f4:	e5843014 	str	r3, [r4, #20]
878029f8:	e5d42035 	ldrb	r2, [r4, #53]	; 0x35
878029fc:	e5843018 	str	r3, [r4, #24]
87802a00:	e59f3024 	ldr	r3, [pc, #36]	; 87802a2c <rt_schedule_remove_thread+0x5c>
87802a04:	e0831182 	add	r1, r3, r2, lsl #3
87802a08:	e7933182 	ldr	r3, [r3, r2, lsl #3]
87802a0c:	e1530001 	cmp	r3, r1
87802a10:	059f2018 	ldreq	r2, [pc, #24]	; 87802a30 <rt_schedule_remove_thread+0x60>
87802a14:	05941038 	ldreq	r1, [r4, #56]	; 0x38
87802a18:	05923000 	ldreq	r3, [r2]
87802a1c:	e8bd4010 	pop	{r4, lr}
87802a20:	01c33001 	biceq	r3, r3, r1
87802a24:	05823000 	streq	r3, [r2]
87802a28:	eafff5c9 	b	87800154 <rt_hw_interrupt_enable>
87802a2c:	87804340 	.word	0x87804340
87802a30:	87804448 	.word	0x87804448

87802a34 <rt_system_scheduler_start>:
87802a34:	e59f3038 	ldr	r3, [pc, #56]	; 87802a74 <rt_system_scheduler_start+0x40>
87802a38:	e92d4010 	push	{r4, lr}
87802a3c:	e5930000 	ldr	r0, [r3]
87802a40:	ebfffdc0 	bl	87802148 <__rt_ffs>
87802a44:	e59f302c 	ldr	r3, [pc, #44]	; 87802a78 <rt_system_scheduler_start+0x44>
87802a48:	e2400001 	sub	r0, r0, #1
87802a4c:	e7934180 	ldr	r4, [r3, r0, lsl #3]
87802a50:	e59f3024 	ldr	r3, [pc, #36]	; 87802a7c <rt_system_scheduler_start+0x48>
87802a54:	e2440014 	sub	r0, r4, #20
87802a58:	e5830000 	str	r0, [r3]
87802a5c:	ebffffdb 	bl	878029d0 <rt_schedule_remove_thread>
87802a60:	e3a03003 	mov	r3, #3
87802a64:	e2840008 	add	r0, r4, #8
87802a68:	e5c43020 	strb	r3, [r4, #32]
87802a6c:	e8bd4010 	pop	{r4, lr}
87802a70:	eafff5ba 	b	87800160 <rt_hw_context_switch_to>
87802a74:	87804448 	.word	0x87804448
87802a78:	87804340 	.word	0x87804340
87802a7c:	87804444 	.word	0x87804444

87802a80 <rt_schedule>:
87802a80:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802a84:	ebfff5b3 	bl	87800158 <rt_hw_interrupt_disable>
87802a88:	e59f3100 	ldr	r3, [pc, #256]	; 87802b90 <rt_schedule+0x110>
87802a8c:	e1a07000 	mov	r7, r0
87802a90:	e1d330f0 	ldrsh	r3, [r3]
87802a94:	e3530000 	cmp	r3, #0
87802a98:	1a00001e 	bne	87802b18 <rt_schedule+0x98>
87802a9c:	e59f30f0 	ldr	r3, [pc, #240]	; 87802b94 <rt_schedule+0x114>
87802aa0:	e5930000 	ldr	r0, [r3]
87802aa4:	e3500000 	cmp	r0, #0
87802aa8:	0a00001a 	beq	87802b18 <rt_schedule+0x98>
87802aac:	ebfffda5 	bl	87802148 <__rt_ffs>
87802ab0:	e59f30e0 	ldr	r3, [pc, #224]	; 87802b98 <rt_schedule+0x118>
87802ab4:	e2400001 	sub	r0, r0, #1
87802ab8:	e7935180 	ldr	r5, [r3, r0, lsl #3]
87802abc:	e59f30d8 	ldr	r3, [pc, #216]	; 87802b9c <rt_schedule+0x11c>
87802ac0:	e2456014 	sub	r6, r5, #20
87802ac4:	e5934000 	ldr	r4, [r3]
87802ac8:	e1a08003 	mov	r8, r3
87802acc:	e5d42034 	ldrb	r2, [r4, #52]	; 0x34
87802ad0:	e202200f 	and	r2, r2, #15
87802ad4:	e3520003 	cmp	r2, #3
87802ad8:	1a000026 	bne	87802b78 <rt_schedule+0xf8>
87802adc:	e5d42035 	ldrb	r2, [r4, #53]	; 0x35
87802ae0:	e1520000 	cmp	r2, r0
87802ae4:	33a02000 	movcc	r2, #0
87802ae8:	23a02001 	movcs	r2, #1
87802aec:	e1540006 	cmp	r4, r6
87802af0:	03a02000 	moveq	r2, #0
87802af4:	e3520000 	cmp	r2, #0
87802af8:	1a000009 	bne	87802b24 <rt_schedule+0xa4>
87802afc:	e1a00004 	mov	r0, r4
87802b00:	ebffffb2 	bl	878029d0 <rt_schedule_remove_thread>
87802b04:	e5982000 	ldr	r2, [r8]
87802b08:	e5d23034 	ldrb	r3, [r2, #52]	; 0x34
87802b0c:	e3c3300f 	bic	r3, r3, #15
87802b10:	e3833003 	orr	r3, r3, #3
87802b14:	e5c23034 	strb	r3, [r2, #52]	; 0x34
87802b18:	e1a00007 	mov	r0, r7
87802b1c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87802b20:	eafff58b 	b	87800154 <rt_hw_interrupt_enable>
87802b24:	e59f2074 	ldr	r2, [pc, #116]	; 87802ba0 <rt_schedule+0x120>
87802b28:	e5836000 	str	r6, [r3]
87802b2c:	e5c20000 	strb	r0, [r2]
87802b30:	e1a00004 	mov	r0, r4
87802b34:	ebffff83 	bl	87802948 <rt_schedule_insert_thread>
87802b38:	e1a00006 	mov	r0, r6
87802b3c:	ebffffa3 	bl	878029d0 <rt_schedule_remove_thread>
87802b40:	e5d53020 	ldrb	r3, [r5, #32]
87802b44:	e2851008 	add	r1, r5, #8
87802b48:	e284001c 	add	r0, r4, #28
87802b4c:	e3c3300f 	bic	r3, r3, #15
87802b50:	e3833003 	orr	r3, r3, #3
87802b54:	e5c53020 	strb	r3, [r5, #32]
87802b58:	e59f3044 	ldr	r3, [pc, #68]	; 87802ba4 <rt_schedule+0x124>
87802b5c:	e5d33000 	ldrb	r3, [r3]
87802b60:	e3530000 	cmp	r3, #0
87802b64:	1a000001 	bne	87802b70 <rt_schedule+0xf0>
87802b68:	ebfff57b 	bl	8780015c <rt_hw_context_switch>
87802b6c:	eaffffe9 	b	87802b18 <rt_schedule+0x98>
87802b70:	ebfff57b 	bl	87800164 <rt_hw_context_switch_interrupt>
87802b74:	eaffffe7 	b	87802b18 <rt_schedule+0x98>
87802b78:	e1540006 	cmp	r4, r6
87802b7c:	0affffde 	beq	87802afc <rt_schedule+0x7c>
87802b80:	e59f2018 	ldr	r2, [pc, #24]	; 87802ba0 <rt_schedule+0x120>
87802b84:	e5836000 	str	r6, [r3]
87802b88:	e5c20000 	strb	r0, [r2]
87802b8c:	eaffffe9 	b	87802b38 <rt_schedule+0xb8>
87802b90:	87804330 	.word	0x87804330
87802b94:	87804448 	.word	0x87804448
87802b98:	87804340 	.word	0x87804340
87802b9c:	87804444 	.word	0x87804444
87802ba0:	87804440 	.word	0x87804440
87802ba4:	878042f0 	.word	0x878042f0

87802ba8 <rt_enter_critical>:
87802ba8:	e92d4010 	push	{r4, lr}
87802bac:	ebfff569 	bl	87800158 <rt_hw_interrupt_disable>
87802bb0:	e59f2010 	ldr	r2, [pc, #16]	; 87802bc8 <rt_enter_critical+0x20>
87802bb4:	e8bd4010 	pop	{r4, lr}
87802bb8:	e1d230b0 	ldrh	r3, [r2]
87802bbc:	e2833001 	add	r3, r3, #1
87802bc0:	e1c230b0 	strh	r3, [r2]
87802bc4:	eafff562 	b	87800154 <rt_hw_interrupt_enable>
87802bc8:	87804330 	.word	0x87804330

87802bcc <rt_exit_critical>:
87802bcc:	e92d4010 	push	{r4, lr}
87802bd0:	ebfff560 	bl	87800158 <rt_hw_interrupt_disable>
87802bd4:	e59f2040 	ldr	r2, [pc, #64]	; 87802c1c <rt_exit_critical+0x50>
87802bd8:	e1d230b0 	ldrh	r3, [r2]
87802bdc:	e2433001 	sub	r3, r3, #1
87802be0:	e6bf3073 	sxth	r3, r3
87802be4:	e1c230b0 	strh	r3, [r2]
87802be8:	e3530000 	cmp	r3, #0
87802bec:	ca000008 	bgt	87802c14 <rt_exit_critical+0x48>
87802bf0:	e3a03000 	mov	r3, #0
87802bf4:	e1c230b0 	strh	r3, [r2]
87802bf8:	ebfff555 	bl	87800154 <rt_hw_interrupt_enable>
87802bfc:	e59f301c 	ldr	r3, [pc, #28]	; 87802c20 <rt_exit_critical+0x54>
87802c00:	e5933000 	ldr	r3, [r3]
87802c04:	e3530000 	cmp	r3, #0
87802c08:	08bd8010 	popeq	{r4, pc}
87802c0c:	e8bd4010 	pop	{r4, lr}
87802c10:	eaffff9a 	b	87802a80 <rt_schedule>
87802c14:	e8bd4010 	pop	{r4, lr}
87802c18:	eafff54d 	b	87800154 <rt_hw_interrupt_enable>
87802c1c:	87804330 	.word	0x87804330
87802c20:	87804444 	.word	0x87804444

87802c24 <rt_critical_level>:
87802c24:	e59f3004 	ldr	r3, [pc, #4]	; 87802c30 <rt_critical_level+0xc>
87802c28:	e1d300b0 	ldrh	r0, [r3]
87802c2c:	e12fff1e 	bx	lr
87802c30:	87804330 	.word	0x87804330

87802c34 <rt_thread_exit>:
87802c34:	e59f3078 	ldr	r3, [pc, #120]	; 87802cb4 <rt_thread_exit+0x80>
87802c38:	e92d4070 	push	{r4, r5, r6, lr}
87802c3c:	e5934000 	ldr	r4, [r3]
87802c40:	ebfff544 	bl	87800158 <rt_hw_interrupt_disable>
87802c44:	e1a05000 	mov	r5, r0
87802c48:	e1a00004 	mov	r0, r4
87802c4c:	ebffff5f 	bl	878029d0 <rt_schedule_remove_thread>
87802c50:	e3a03004 	mov	r3, #4
87802c54:	e284004c 	add	r0, r4, #76	; 0x4c
87802c58:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802c5c:	eb00019a 	bl	878032cc <rt_timer_detach>
87802c60:	e1a00004 	mov	r0, r4
87802c64:	ebfffefa 	bl	87802854 <rt_object_is_systemobject>
87802c68:	e3500001 	cmp	r0, #1
87802c6c:	1a000005 	bne	87802c88 <rt_thread_exit+0x54>
87802c70:	e5943078 	ldr	r3, [r4, #120]	; 0x78
87802c74:	e3530000 	cmp	r3, #0
87802c78:	1a000002 	bne	87802c88 <rt_thread_exit+0x54>
87802c7c:	e1a00004 	mov	r0, r4
87802c80:	ebfffeb6 	bl	87802760 <rt_object_detach>
87802c84:	ea000006 	b	87802ca4 <rt_thread_exit+0x70>
87802c88:	e59f3028 	ldr	r3, [pc, #40]	; 87802cb8 <rt_thread_exit+0x84>
87802c8c:	e2842014 	add	r2, r4, #20
87802c90:	e5931000 	ldr	r1, [r3]
87802c94:	e5832000 	str	r2, [r3]
87802c98:	e5812004 	str	r2, [r1, #4]
87802c9c:	e5841014 	str	r1, [r4, #20]
87802ca0:	e5843018 	str	r3, [r4, #24]
87802ca4:	e1a00005 	mov	r0, r5
87802ca8:	ebfff529 	bl	87800154 <rt_hw_interrupt_enable>
87802cac:	e8bd4070 	pop	{r4, r5, r6, lr}
87802cb0:	eaffff72 	b	87802a80 <rt_schedule>
87802cb4:	87804444 	.word	0x87804444
87802cb8:	8780444c 	.word	0x8780444c

87802cbc <rt_thread_timeout>:
87802cbc:	e590c018 	ldr	ip, [r0, #24]
87802cc0:	e3e02001 	mvn	r2, #1
87802cc4:	e5901014 	ldr	r1, [r0, #20]
87802cc8:	e92d4010 	push	{r4, lr}
87802ccc:	e5802030 	str	r2, [r0, #48]	; 0x30
87802cd0:	e2802014 	add	r2, r0, #20
87802cd4:	e581c004 	str	ip, [r1, #4]
87802cd8:	e590c018 	ldr	ip, [r0, #24]
87802cdc:	e58c1000 	str	r1, [ip]
87802ce0:	e5802018 	str	r2, [r0, #24]
87802ce4:	e5802014 	str	r2, [r0, #20]
87802ce8:	ebffff16 	bl	87802948 <rt_schedule_insert_thread>
87802cec:	e8bd4010 	pop	{r4, lr}
87802cf0:	eaffff62 	b	87802a80 <rt_schedule>

87802cf4 <rt_thread_init>:
87802cf4:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
87802cf8:	e1a04000 	mov	r4, r0
87802cfc:	e59d7028 	ldr	r7, [sp, #40]	; 0x28
87802d00:	e1a0a002 	mov	sl, r2
87802d04:	e59d802c 	ldr	r8, [sp, #44]	; 0x2c
87802d08:	e1a02001 	mov	r2, r1
87802d0c:	e5dd5030 	ldrb	r5, [sp, #48]	; 0x30
87802d10:	e3a01001 	mov	r1, #1
87802d14:	e59d6034 	ldr	r6, [sp, #52]	; 0x34
87802d18:	e1a09003 	mov	r9, r3
87802d1c:	ebfffe71 	bl	878026e8 <rt_object_init>
87802d20:	e584a020 	str	sl, [r4, #32]
87802d24:	e2842014 	add	r2, r4, #20
87802d28:	e5842018 	str	r2, [r4, #24]
87802d2c:	e3a01023 	mov	r1, #35	; 0x23
87802d30:	e5842014 	str	r2, [r4, #20]
87802d34:	e1a00007 	mov	r0, r7
87802d38:	e5849024 	str	r9, [r4, #36]	; 0x24
87802d3c:	e1a02008 	mov	r2, r8
87802d40:	e5847028 	str	r7, [r4, #40]	; 0x28
87802d44:	e584802c 	str	r8, [r4, #44]	; 0x2c
87802d48:	ebfffade 	bl	878018c8 <rt_memset>
87802d4c:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87802d50:	e5941028 	ldr	r1, [r4, #40]	; 0x28
87802d54:	e59f3064 	ldr	r3, [pc, #100]	; 87802dc0 <rt_thread_init+0xcc>
87802d58:	e2422004 	sub	r2, r2, #4
87802d5c:	e0812002 	add	r2, r1, r2
87802d60:	e5940020 	ldr	r0, [r4, #32]
87802d64:	e5941024 	ldr	r1, [r4, #36]	; 0x24
87802d68:	ebfff4fe 	bl	87800168 <rt_hw_stack_init>
87802d6c:	e5c45036 	strb	r5, [r4, #54]	; 0x36
87802d70:	e1a03004 	mov	r3, r4
87802d74:	e5c45035 	strb	r5, [r4, #53]	; 0x35
87802d78:	e3a05000 	mov	r5, #0
87802d7c:	e584001c 	str	r0, [r4, #28]
87802d80:	e1a01004 	mov	r1, r4
87802d84:	e5845038 	str	r5, [r4, #56]	; 0x38
87802d88:	e284004c 	add	r0, r4, #76	; 0x4c
87802d8c:	e5846044 	str	r6, [r4, #68]	; 0x44
87802d90:	e5846048 	str	r6, [r4, #72]	; 0x48
87802d94:	e5845030 	str	r5, [r4, #48]	; 0x30
87802d98:	e5c45034 	strb	r5, [r4, #52]	; 0x34
87802d9c:	e5845078 	str	r5, [r4, #120]	; 0x78
87802da0:	e584507c 	str	r5, [r4, #124]	; 0x7c
87802da4:	e58d5004 	str	r5, [sp, #4]
87802da8:	e58d5000 	str	r5, [sp]
87802dac:	e59f2010 	ldr	r2, [pc, #16]	; 87802dc4 <rt_thread_init+0xd0>
87802db0:	eb000131 	bl	8780327c <rt_timer_init>
87802db4:	e1a00005 	mov	r0, r5
87802db8:	e28dd008 	add	sp, sp, #8
87802dbc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802dc0:	87802c34 	.word	0x87802c34
87802dc4:	87802cbc 	.word	0x87802cbc

87802dc8 <rt_thread_self>:
87802dc8:	e59f3004 	ldr	r3, [pc, #4]	; 87802dd4 <rt_thread_self+0xc>
87802dcc:	e5930000 	ldr	r0, [r3]
87802dd0:	e12fff1e 	bx	lr
87802dd4:	87804444 	.word	0x87804444

87802dd8 <rt_thread_detach>:
87802dd8:	e92d4010 	push	{r4, lr}
87802ddc:	e1a04000 	mov	r4, r0
87802de0:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87802de4:	e313000f 	tst	r3, #15
87802de8:	0a000000 	beq	87802df0 <rt_thread_detach+0x18>
87802dec:	ebfffef7 	bl	878029d0 <rt_schedule_remove_thread>
87802df0:	e284004c 	add	r0, r4, #76	; 0x4c
87802df4:	eb000134 	bl	878032cc <rt_timer_detach>
87802df8:	e3a03004 	mov	r3, #4
87802dfc:	e1a00004 	mov	r0, r4
87802e00:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802e04:	ebfffe92 	bl	87802854 <rt_object_is_systemobject>
87802e08:	e3500001 	cmp	r0, #1
87802e0c:	1a000005 	bne	87802e28 <rt_thread_detach+0x50>
87802e10:	e5943078 	ldr	r3, [r4, #120]	; 0x78
87802e14:	e3530000 	cmp	r3, #0
87802e18:	1a000002 	bne	87802e28 <rt_thread_detach+0x50>
87802e1c:	e1a00004 	mov	r0, r4
87802e20:	ebfffe4e 	bl	87802760 <rt_object_detach>
87802e24:	ea000008 	b	87802e4c <rt_thread_detach+0x74>
87802e28:	ebfff4ca 	bl	87800158 <rt_hw_interrupt_disable>
87802e2c:	e59f3020 	ldr	r3, [pc, #32]	; 87802e54 <rt_thread_detach+0x7c>
87802e30:	e2842014 	add	r2, r4, #20
87802e34:	e5931000 	ldr	r1, [r3]
87802e38:	e5832000 	str	r2, [r3]
87802e3c:	e5812004 	str	r2, [r1, #4]
87802e40:	e5841014 	str	r1, [r4, #20]
87802e44:	e5843018 	str	r3, [r4, #24]
87802e48:	ebfff4c1 	bl	87800154 <rt_hw_interrupt_enable>
87802e4c:	e3a00000 	mov	r0, #0
87802e50:	e8bd8010 	pop	{r4, pc}
87802e54:	8780444c 	.word	0x8780444c

87802e58 <rt_thread_create>:
87802e58:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
87802e5c:	e1a0a001 	mov	sl, r1
87802e60:	e5dd7028 	ldrb	r7, [sp, #40]	; 0x28
87802e64:	e1a01000 	mov	r1, r0
87802e68:	e59d602c 	ldr	r6, [sp, #44]	; 0x2c
87802e6c:	e3a00001 	mov	r0, #1
87802e70:	e1a09002 	mov	r9, r2
87802e74:	e1a05003 	mov	r5, r3
87802e78:	ebfffe47 	bl	8780279c <rt_object_allocate>
87802e7c:	e2504000 	subs	r4, r0, #0
87802e80:	0a00002b 	beq	87802f34 <rt_thread_create+0xdc>
87802e84:	e1a00005 	mov	r0, r5
87802e88:	ebfffd14 	bl	878022e0 <rt_malloc>
87802e8c:	e2508000 	subs	r8, r0, #0
87802e90:	1a000003 	bne	87802ea4 <rt_thread_create+0x4c>
87802e94:	e1a00004 	mov	r0, r4
87802e98:	ebfffe5c 	bl	87802810 <rt_object_delete>
87802e9c:	e1a00008 	mov	r0, r8
87802ea0:	ea000024 	b	87802f38 <rt_thread_create+0xe0>
87802ea4:	e584a020 	str	sl, [r4, #32]
87802ea8:	e2843014 	add	r3, r4, #20
87802eac:	e5843018 	str	r3, [r4, #24]
87802eb0:	e1a02005 	mov	r2, r5
87802eb4:	e5843014 	str	r3, [r4, #20]
87802eb8:	e3a01023 	mov	r1, #35	; 0x23
87802ebc:	e5849024 	str	r9, [r4, #36]	; 0x24
87802ec0:	e5848028 	str	r8, [r4, #40]	; 0x28
87802ec4:	e584502c 	str	r5, [r4, #44]	; 0x2c
87802ec8:	ebfffa7e 	bl	878018c8 <rt_memset>
87802ecc:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87802ed0:	e5941028 	ldr	r1, [r4, #40]	; 0x28
87802ed4:	e59f3064 	ldr	r3, [pc, #100]	; 87802f40 <rt_thread_create+0xe8>
87802ed8:	e2422004 	sub	r2, r2, #4
87802edc:	e0812002 	add	r2, r1, r2
87802ee0:	e5940020 	ldr	r0, [r4, #32]
87802ee4:	e5941024 	ldr	r1, [r4, #36]	; 0x24
87802ee8:	ebfff49e 	bl	87800168 <rt_hw_stack_init>
87802eec:	e584001c 	str	r0, [r4, #28]
87802ef0:	e3a03000 	mov	r3, #0
87802ef4:	e5843038 	str	r3, [r4, #56]	; 0x38
87802ef8:	e1a01004 	mov	r1, r4
87802efc:	e5843030 	str	r3, [r4, #48]	; 0x30
87802f00:	e284004c 	add	r0, r4, #76	; 0x4c
87802f04:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802f08:	e5843078 	str	r3, [r4, #120]	; 0x78
87802f0c:	e584307c 	str	r3, [r4, #124]	; 0x7c
87802f10:	e5c47036 	strb	r7, [r4, #54]	; 0x36
87802f14:	e5c47035 	strb	r7, [r4, #53]	; 0x35
87802f18:	e5846044 	str	r6, [r4, #68]	; 0x44
87802f1c:	e5846048 	str	r6, [r4, #72]	; 0x48
87802f20:	e59f201c 	ldr	r2, [pc, #28]	; 87802f44 <rt_thread_create+0xec>
87802f24:	e58d3004 	str	r3, [sp, #4]
87802f28:	e58d3000 	str	r3, [sp]
87802f2c:	e1a03004 	mov	r3, r4
87802f30:	eb0000d1 	bl	8780327c <rt_timer_init>
87802f34:	e1a00004 	mov	r0, r4
87802f38:	e28dd008 	add	sp, sp, #8
87802f3c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802f40:	87802c34 	.word	0x87802c34
87802f44:	87802cbc 	.word	0x87802cbc

87802f48 <rt_thread_delete>:
87802f48:	e92d4010 	push	{r4, lr}
87802f4c:	e1a04000 	mov	r4, r0
87802f50:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87802f54:	e313000f 	tst	r3, #15
87802f58:	0a000000 	beq	87802f60 <rt_thread_delete+0x18>
87802f5c:	ebfffe9b 	bl	878029d0 <rt_schedule_remove_thread>
87802f60:	e284004c 	add	r0, r4, #76	; 0x4c
87802f64:	eb0000d8 	bl	878032cc <rt_timer_detach>
87802f68:	e3a03004 	mov	r3, #4
87802f6c:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802f70:	ebfff478 	bl	87800158 <rt_hw_interrupt_disable>
87802f74:	e59f3020 	ldr	r3, [pc, #32]	; 87802f9c <rt_thread_delete+0x54>
87802f78:	e2842014 	add	r2, r4, #20
87802f7c:	e5931000 	ldr	r1, [r3]
87802f80:	e5832000 	str	r2, [r3]
87802f84:	e5812004 	str	r2, [r1, #4]
87802f88:	e5841014 	str	r1, [r4, #20]
87802f8c:	e5843018 	str	r3, [r4, #24]
87802f90:	ebfff46f 	bl	87800154 <rt_hw_interrupt_enable>
87802f94:	e3a00000 	mov	r0, #0
87802f98:	e8bd8010 	pop	{r4, pc}
87802f9c:	8780444c 	.word	0x8780444c

87802fa0 <rt_thread_yield>:
87802fa0:	e92d4010 	push	{r4, lr}
87802fa4:	ebfffeb5 	bl	87802a80 <rt_schedule>
87802fa8:	e3a00000 	mov	r0, #0
87802fac:	e8bd8010 	pop	{r4, pc}

87802fb0 <rt_thread_suspend>:
87802fb0:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87802fb4:	e203300d 	and	r3, r3, #13
87802fb8:	e3530001 	cmp	r3, #1
87802fbc:	1a00000f 	bne	87803000 <rt_thread_suspend+0x50>
87802fc0:	e92d4070 	push	{r4, r5, r6, lr}
87802fc4:	e1a04000 	mov	r4, r0
87802fc8:	ebfff462 	bl	87800158 <rt_hw_interrupt_disable>
87802fcc:	e1a05000 	mov	r5, r0
87802fd0:	e1a00004 	mov	r0, r4
87802fd4:	ebfffe7d 	bl	878029d0 <rt_schedule_remove_thread>
87802fd8:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
87802fdc:	e284004c 	add	r0, r4, #76	; 0x4c
87802fe0:	e3c3300f 	bic	r3, r3, #15
87802fe4:	e3833002 	orr	r3, r3, #2
87802fe8:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802fec:	eb000111 	bl	87803438 <rt_timer_stop>
87802ff0:	e1a00005 	mov	r0, r5
87802ff4:	ebfff456 	bl	87800154 <rt_hw_interrupt_enable>
87802ff8:	e3a00000 	mov	r0, #0
87802ffc:	e8bd8070 	pop	{r4, r5, r6, pc}
87803000:	e3e00000 	mvn	r0, #0
87803004:	e12fff1e 	bx	lr

87803008 <rt_thread_sleep>:
87803008:	e59f3060 	ldr	r3, [pc, #96]	; 87803070 <rt_thread_sleep+0x68>
8780300c:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
87803010:	e28d5008 	add	r5, sp, #8
87803014:	e5934000 	ldr	r4, [r3]
87803018:	e5250004 	str	r0, [r5, #-4]!
8780301c:	ebfff44d 	bl	87800158 <rt_hw_interrupt_disable>
87803020:	e1a07000 	mov	r7, r0
87803024:	e284604c 	add	r6, r4, #76	; 0x4c
87803028:	e1a00004 	mov	r0, r4
8780302c:	ebffffdf 	bl	87802fb0 <rt_thread_suspend>
87803030:	e1a02005 	mov	r2, r5
87803034:	e3a01000 	mov	r1, #0
87803038:	e1a00006 	mov	r0, r6
8780303c:	eb00010f 	bl	87803480 <rt_timer_control>
87803040:	e1a00006 	mov	r0, r6
87803044:	eb0000cd 	bl	87803380 <rt_timer_start>
87803048:	e1a00007 	mov	r0, r7
8780304c:	ebfff440 	bl	87800154 <rt_hw_interrupt_enable>
87803050:	ebfffe8a 	bl	87802a80 <rt_schedule>
87803054:	e5943030 	ldr	r3, [r4, #48]	; 0x30
87803058:	e3a00000 	mov	r0, #0
8780305c:	e3730002 	cmn	r3, #2
87803060:	03a03000 	moveq	r3, #0
87803064:	05843030 	streq	r3, [r4, #48]	; 0x30
87803068:	e28dd00c 	add	sp, sp, #12
8780306c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
87803070:	87804444 	.word	0x87804444

87803074 <rt_thread_delay>:
87803074:	eaffffe3 	b	87803008 <rt_thread_sleep>

87803078 <rt_thread_mdelay>:
87803078:	e92d4010 	push	{r4, lr}
8780307c:	ebfff460 	bl	87800204 <rt_tick_from_millisecond>
87803080:	e8bd4010 	pop	{r4, lr}
87803084:	eaffffdf 	b	87803008 <rt_thread_sleep>

87803088 <rt_thread_resume>:
87803088:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
8780308c:	e203300f 	and	r3, r3, #15
87803090:	e3530002 	cmp	r3, #2
87803094:	1a000013 	bne	878030e8 <rt_thread_resume+0x60>
87803098:	e92d4070 	push	{r4, r5, r6, lr}
8780309c:	e1a04000 	mov	r4, r0
878030a0:	ebfff42c 	bl	87800158 <rt_hw_interrupt_disable>
878030a4:	e5942014 	ldr	r2, [r4, #20]
878030a8:	e2843014 	add	r3, r4, #20
878030ac:	e5941018 	ldr	r1, [r4, #24]
878030b0:	e1a05000 	mov	r5, r0
878030b4:	e284004c 	add	r0, r4, #76	; 0x4c
878030b8:	e5821004 	str	r1, [r2, #4]
878030bc:	e5941018 	ldr	r1, [r4, #24]
878030c0:	e5812000 	str	r2, [r1]
878030c4:	e5843018 	str	r3, [r4, #24]
878030c8:	e5843014 	str	r3, [r4, #20]
878030cc:	eb0000d9 	bl	87803438 <rt_timer_stop>
878030d0:	e1a00005 	mov	r0, r5
878030d4:	ebfff41e 	bl	87800154 <rt_hw_interrupt_enable>
878030d8:	e1a00004 	mov	r0, r4
878030dc:	ebfffe19 	bl	87802948 <rt_schedule_insert_thread>
878030e0:	e3a00000 	mov	r0, #0
878030e4:	e8bd8070 	pop	{r4, r5, r6, pc}
878030e8:	e3e00000 	mvn	r0, #0
878030ec:	e12fff1e 	bx	lr

878030f0 <rt_thread_startup>:
878030f0:	e92d4010 	push	{r4, lr}
878030f4:	e3a02001 	mov	r2, #1
878030f8:	e5d01036 	ldrb	r1, [r0, #54]	; 0x36
878030fc:	e1a02112 	lsl	r2, r2, r1
87803100:	e5802038 	str	r2, [r0, #56]	; 0x38
87803104:	e3a02002 	mov	r2, #2
87803108:	e5c01035 	strb	r1, [r0, #53]	; 0x35
8780310c:	e5c02034 	strb	r2, [r0, #52]	; 0x34
87803110:	ebffffdc 	bl	87803088 <rt_thread_resume>
87803114:	e59f3014 	ldr	r3, [pc, #20]	; 87803130 <rt_thread_startup+0x40>
87803118:	e5933000 	ldr	r3, [r3]
8780311c:	e3530000 	cmp	r3, #0
87803120:	0a000000 	beq	87803128 <rt_thread_startup+0x38>
87803124:	ebfffe55 	bl	87802a80 <rt_schedule>
87803128:	e3a00000 	mov	r0, #0
8780312c:	e8bd8010 	pop	{r4, pc}
87803130:	87804444 	.word	0x87804444

87803134 <rt_thread_control>:
87803134:	e3510001 	cmp	r1, #1
87803138:	0a00001f 	beq	878031bc <rt_thread_control+0x88>
8780313c:	e3510002 	cmp	r1, #2
87803140:	0a000002 	beq	87803150 <rt_thread_control+0x1c>
87803144:	e3510000 	cmp	r1, #0
87803148:	1a00001c 	bne	878031c0 <rt_thread_control+0x8c>
8780314c:	eaffffe7 	b	878030f0 <rt_thread_startup>
87803150:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87803154:	e1a04000 	mov	r4, r0
87803158:	e1a06002 	mov	r6, r2
8780315c:	ebfff3fd 	bl	87800158 <rt_hw_interrupt_disable>
87803160:	e5d45034 	ldrb	r5, [r4, #52]	; 0x34
87803164:	e1a07000 	mov	r7, r0
87803168:	e205500f 	and	r5, r5, #15
8780316c:	e3550001 	cmp	r5, #1
87803170:	1a000008 	bne	87803198 <rt_thread_control+0x64>
87803174:	e1a00004 	mov	r0, r4
87803178:	ebfffe14 	bl	878029d0 <rt_schedule_remove_thread>
8780317c:	e5d63000 	ldrb	r3, [r6]
87803180:	e1a00004 	mov	r0, r4
87803184:	e1a05315 	lsl	r5, r5, r3
87803188:	e5c43035 	strb	r3, [r4, #53]	; 0x35
8780318c:	e5845038 	str	r5, [r4, #56]	; 0x38
87803190:	ebfffdec 	bl	87802948 <rt_schedule_insert_thread>
87803194:	ea000004 	b	878031ac <rt_thread_control+0x78>
87803198:	e5d62000 	ldrb	r2, [r6]
8780319c:	e3a03001 	mov	r3, #1
878031a0:	e1a03213 	lsl	r3, r3, r2
878031a4:	e5c42035 	strb	r2, [r4, #53]	; 0x35
878031a8:	e5843038 	str	r3, [r4, #56]	; 0x38
878031ac:	e1a00007 	mov	r0, r7
878031b0:	ebfff3e7 	bl	87800154 <rt_hw_interrupt_enable>
878031b4:	e3a00000 	mov	r0, #0
878031b8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878031bc:	eaffff61 	b	87802f48 <rt_thread_delete>
878031c0:	e3a00000 	mov	r0, #0
878031c4:	e12fff1e 	bx	lr

878031c8 <rt_thread_find>:
878031c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878031cc:	e1a08000 	mov	r8, r0
878031d0:	e59f507c 	ldr	r5, [pc, #124]	; 87803254 <rt_thread_find+0x8c>
878031d4:	e5953000 	ldr	r3, [r5]
878031d8:	e3530000 	cmp	r3, #0
878031dc:	0a000000 	beq	878031e4 <rt_thread_find+0x1c>
878031e0:	ebfffe70 	bl	87802ba8 <rt_enter_critical>
878031e4:	e3a00001 	mov	r0, #1
878031e8:	ebfffd2f 	bl	878026ac <rt_object_get_information>
878031ec:	e1a07000 	mov	r7, r0
878031f0:	e5b76004 	ldr	r6, [r7, #4]!
878031f4:	e1560007 	cmp	r6, r7
878031f8:	0a00000d 	beq	87803234 <rt_thread_find+0x6c>
878031fc:	e246400c 	sub	r4, r6, #12
87803200:	e3a02008 	mov	r2, #8
87803204:	e1a01008 	mov	r1, r8
87803208:	e1a00004 	mov	r0, r4
8780320c:	ebfffa49 	bl	87801b38 <rt_strncmp>
87803210:	e3500000 	cmp	r0, #0
87803214:	1a000004 	bne	8780322c <rt_thread_find+0x64>
87803218:	e5953000 	ldr	r3, [r5]
8780321c:	e3530000 	cmp	r3, #0
87803220:	0a000009 	beq	8780324c <rt_thread_find+0x84>
87803224:	ebfffe68 	bl	87802bcc <rt_exit_critical>
87803228:	ea000007 	b	8780324c <rt_thread_find+0x84>
8780322c:	e5966000 	ldr	r6, [r6]
87803230:	eaffffef 	b	878031f4 <rt_thread_find+0x2c>
87803234:	e5950000 	ldr	r0, [r5]
87803238:	e3500000 	cmp	r0, #0
8780323c:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
87803240:	ebfffe61 	bl	87802bcc <rt_exit_critical>
87803244:	e3a00000 	mov	r0, #0
87803248:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780324c:	e1a00004 	mov	r0, r4
87803250:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87803254:	87804444 	.word	0x87804444

87803258 <_rt_timer_remove>:
87803258:	e5901018 	ldr	r1, [r0, #24]
8780325c:	e2803014 	add	r3, r0, #20
87803260:	e5902014 	ldr	r2, [r0, #20]
87803264:	e5821004 	str	r1, [r2, #4]
87803268:	e5901018 	ldr	r1, [r0, #24]
8780326c:	e5812000 	str	r2, [r1]
87803270:	e5803018 	str	r3, [r0, #24]
87803274:	e5803014 	str	r3, [r0, #20]
87803278:	e12fff1e 	bx	lr

8780327c <rt_timer_init>:
8780327c:	e92d4070 	push	{r4, r5, r6, lr}
87803280:	e1a04000 	mov	r4, r0
87803284:	e1a06002 	mov	r6, r2
87803288:	e1a02001 	mov	r2, r1
8780328c:	e3a0100a 	mov	r1, #10
87803290:	e1a05003 	mov	r5, r3
87803294:	ebfffd13 	bl	878026e8 <rt_object_init>
87803298:	e5dd2014 	ldrb	r2, [sp, #20]
8780329c:	e3a03000 	mov	r3, #0
878032a0:	e5843028 	str	r3, [r4, #40]	; 0x28
878032a4:	e59d3010 	ldr	r3, [sp, #16]
878032a8:	e3c22001 	bic	r2, r2, #1
878032ac:	e5843024 	str	r3, [r4, #36]	; 0x24
878032b0:	e2843014 	add	r3, r4, #20
878032b4:	e5c42009 	strb	r2, [r4, #9]
878032b8:	e584601c 	str	r6, [r4, #28]
878032bc:	e5845020 	str	r5, [r4, #32]
878032c0:	e5843018 	str	r3, [r4, #24]
878032c4:	e5843014 	str	r3, [r4, #20]
878032c8:	e8bd8070 	pop	{r4, r5, r6, pc}

878032cc <rt_timer_detach>:
878032cc:	e92d4070 	push	{r4, r5, r6, lr}
878032d0:	e1a04000 	mov	r4, r0
878032d4:	ebfff39f 	bl	87800158 <rt_hw_interrupt_disable>
878032d8:	e1a05000 	mov	r5, r0
878032dc:	e1a00004 	mov	r0, r4
878032e0:	ebffffdc 	bl	87803258 <_rt_timer_remove>
878032e4:	e1a00005 	mov	r0, r5
878032e8:	ebfff399 	bl	87800154 <rt_hw_interrupt_enable>
878032ec:	e1a00004 	mov	r0, r4
878032f0:	ebfffd1a 	bl	87802760 <rt_object_detach>
878032f4:	e3a00000 	mov	r0, #0
878032f8:	e8bd8070 	pop	{r4, r5, r6, pc}

878032fc <rt_timer_create>:
878032fc:	e92d4070 	push	{r4, r5, r6, lr}
87803300:	e1a06001 	mov	r6, r1
87803304:	e1a01000 	mov	r1, r0
87803308:	e3a0000a 	mov	r0, #10
8780330c:	e1a05002 	mov	r5, r2
87803310:	e1a04003 	mov	r4, r3
87803314:	ebfffd20 	bl	8780279c <rt_object_allocate>
87803318:	e3500000 	cmp	r0, #0
8780331c:	08bd8070 	popeq	{r4, r5, r6, pc}
87803320:	e5dd1010 	ldrb	r1, [sp, #16]
87803324:	e3a03000 	mov	r3, #0
87803328:	e5803028 	str	r3, [r0, #40]	; 0x28
8780332c:	e2803014 	add	r3, r0, #20
87803330:	e3c11001 	bic	r1, r1, #1
87803334:	e5c01009 	strb	r1, [r0, #9]
87803338:	e580601c 	str	r6, [r0, #28]
8780333c:	e5805020 	str	r5, [r0, #32]
87803340:	e5804024 	str	r4, [r0, #36]	; 0x24
87803344:	e5803018 	str	r3, [r0, #24]
87803348:	e5803014 	str	r3, [r0, #20]
8780334c:	e8bd8070 	pop	{r4, r5, r6, pc}

87803350 <rt_timer_delete>:
87803350:	e92d4070 	push	{r4, r5, r6, lr}
87803354:	e1a04000 	mov	r4, r0
87803358:	ebfff37e 	bl	87800158 <rt_hw_interrupt_disable>
8780335c:	e1a05000 	mov	r5, r0
87803360:	e1a00004 	mov	r0, r4
87803364:	ebffffbb 	bl	87803258 <_rt_timer_remove>
87803368:	e1a00005 	mov	r0, r5
8780336c:	ebfff378 	bl	87800154 <rt_hw_interrupt_enable>
87803370:	e1a00004 	mov	r0, r4
87803374:	ebfffd25 	bl	87802810 <rt_object_delete>
87803378:	e3a00000 	mov	r0, #0
8780337c:	e8bd8070 	pop	{r4, r5, r6, pc}

87803380 <rt_timer_start>:
87803380:	e92d4070 	push	{r4, r5, r6, lr}
87803384:	e1a04000 	mov	r4, r0
87803388:	ebfff372 	bl	87800158 <rt_hw_interrupt_disable>
8780338c:	e1a05000 	mov	r5, r0
87803390:	e1a00004 	mov	r0, r4
87803394:	ebffffaf 	bl	87803258 <_rt_timer_remove>
87803398:	e5d43009 	ldrb	r3, [r4, #9]
8780339c:	e1a00005 	mov	r0, r5
878033a0:	e3c33001 	bic	r3, r3, #1
878033a4:	e5c43009 	strb	r3, [r4, #9]
878033a8:	ebfff369 	bl	87800154 <rt_hw_interrupt_enable>
878033ac:	ebfff377 	bl	87800190 <rt_tick_get>
878033b0:	e5943024 	ldr	r3, [r4, #36]	; 0x24
878033b4:	e0830000 	add	r0, r3, r0
878033b8:	e5840028 	str	r0, [r4, #40]	; 0x28
878033bc:	ebfff365 	bl	87800158 <rt_hw_interrupt_disable>
878033c0:	e59f306c 	ldr	r3, [pc, #108]	; 87803434 <rt_timer_start+0xb4>
878033c4:	e5935004 	ldr	r5, [r3, #4]
878033c8:	e1a0c003 	mov	ip, r3
878033cc:	e1550003 	cmp	r5, r3
878033d0:	e5932000 	ldr	r2, [r3]
878033d4:	0a000008 	beq	878033fc <rt_timer_start+0x7c>
878033d8:	e5921014 	ldr	r1, [r2, #20]
878033dc:	e594e028 	ldr	lr, [r4, #40]	; 0x28
878033e0:	e151000e 	cmp	r1, lr
878033e4:	0a000002 	beq	878033f4 <rt_timer_start+0x74>
878033e8:	e06e1001 	rsb	r1, lr, r1
878033ec:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
878033f0:	9a000001 	bls	878033fc <rt_timer_start+0x7c>
878033f4:	e1a03002 	mov	r3, r2
878033f8:	eafffff3 	b	878033cc <rt_timer_start+0x4c>
878033fc:	e59c1008 	ldr	r1, [ip, #8]
87803400:	e2811001 	add	r1, r1, #1
87803404:	e58c1008 	str	r1, [ip, #8]
87803408:	e2841014 	add	r1, r4, #20
8780340c:	e5821004 	str	r1, [r2, #4]
87803410:	e5842014 	str	r2, [r4, #20]
87803414:	e5831000 	str	r1, [r3]
87803418:	e5843018 	str	r3, [r4, #24]
8780341c:	e5d43009 	ldrb	r3, [r4, #9]
87803420:	e3833001 	orr	r3, r3, #1
87803424:	e5c43009 	strb	r3, [r4, #9]
87803428:	ebfff349 	bl	87800154 <rt_hw_interrupt_enable>
8780342c:	e3a00000 	mov	r0, #0
87803430:	e8bd8070 	pop	{r4, r5, r6, pc}
87803434:	87804334 	.word	0x87804334

87803438 <rt_timer_stop>:
87803438:	e5d03009 	ldrb	r3, [r0, #9]
8780343c:	e3130001 	tst	r3, #1
87803440:	0a00000c 	beq	87803478 <rt_timer_stop+0x40>
87803444:	e92d4070 	push	{r4, r5, r6, lr}
87803448:	e1a04000 	mov	r4, r0
8780344c:	ebfff341 	bl	87800158 <rt_hw_interrupt_disable>
87803450:	e1a05000 	mov	r5, r0
87803454:	e1a00004 	mov	r0, r4
87803458:	ebffff7e 	bl	87803258 <_rt_timer_remove>
8780345c:	e1a00005 	mov	r0, r5
87803460:	ebfff33b 	bl	87800154 <rt_hw_interrupt_enable>
87803464:	e5d43009 	ldrb	r3, [r4, #9]
87803468:	e3a00000 	mov	r0, #0
8780346c:	e3c33001 	bic	r3, r3, #1
87803470:	e5c43009 	strb	r3, [r4, #9]
87803474:	e8bd8070 	pop	{r4, r5, r6, pc}
87803478:	e3e00000 	mvn	r0, #0
8780347c:	e12fff1e 	bx	lr

87803480 <rt_timer_control>:
87803480:	e3510003 	cmp	r1, #3
87803484:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
87803488:	ea00000f 	b	878034cc <rt_timer_control+0x4c>
8780348c:	878034a8 	.word	0x878034a8
87803490:	8780349c 	.word	0x8780349c
87803494:	878034b4 	.word	0x878034b4
87803498:	878034c0 	.word	0x878034c0
8780349c:	e5903024 	ldr	r3, [r0, #36]	; 0x24
878034a0:	e5823000 	str	r3, [r2]
878034a4:	ea000008 	b	878034cc <rt_timer_control+0x4c>
878034a8:	e5923000 	ldr	r3, [r2]
878034ac:	e5803024 	str	r3, [r0, #36]	; 0x24
878034b0:	ea000005 	b	878034cc <rt_timer_control+0x4c>
878034b4:	e5d03009 	ldrb	r3, [r0, #9]
878034b8:	e3c33002 	bic	r3, r3, #2
878034bc:	ea000001 	b	878034c8 <rt_timer_control+0x48>
878034c0:	e5d03009 	ldrb	r3, [r0, #9]
878034c4:	e3833002 	orr	r3, r3, #2
878034c8:	e5c03009 	strb	r3, [r0, #9]
878034cc:	e3a00000 	mov	r0, #0
878034d0:	e12fff1e 	bx	lr

878034d4 <rt_timer_check>:
878034d4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878034d8:	ebfff32c 	bl	87800190 <rt_tick_get>
878034dc:	e59f5074 	ldr	r5, [pc, #116]	; 87803558 <rt_timer_check+0x84>
878034e0:	e1a06000 	mov	r6, r0
878034e4:	ebfff31b 	bl	87800158 <rt_hw_interrupt_disable>
878034e8:	e1a07000 	mov	r7, r0
878034ec:	e5954000 	ldr	r4, [r5]
878034f0:	e1540005 	cmp	r4, r5
878034f4:	0a000014 	beq	8780354c <rt_timer_check+0x78>
878034f8:	e5940014 	ldr	r0, [r4, #20]
878034fc:	e2448014 	sub	r8, r4, #20
87803500:	e0600006 	rsb	r0, r0, r6
87803504:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
87803508:	8a00000f 	bhi	8780354c <rt_timer_check+0x78>
8780350c:	e1a00008 	mov	r0, r8
87803510:	ebffff50 	bl	87803258 <_rt_timer_remove>
87803514:	e5943008 	ldr	r3, [r4, #8]
87803518:	e594000c 	ldr	r0, [r4, #12]
8780351c:	e12fff33 	blx	r3
87803520:	ebfff31a 	bl	87800190 <rt_tick_get>
87803524:	e554300b 	ldrb	r3, [r4, #-11]
87803528:	e1a06000 	mov	r6, r0
8780352c:	e2032003 	and	r2, r3, #3
87803530:	e3c33001 	bic	r3, r3, #1
87803534:	e3520003 	cmp	r2, #3
87803538:	e544300b 	strb	r3, [r4, #-11]
8780353c:	1affffea 	bne	878034ec <rt_timer_check+0x18>
87803540:	e1a00008 	mov	r0, r8
87803544:	ebffff8d 	bl	87803380 <rt_timer_start>
87803548:	eaffffe7 	b	878034ec <rt_timer_check+0x18>
8780354c:	e1a00007 	mov	r0, r7
87803550:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87803554:	eafff2fe 	b	87800154 <rt_hw_interrupt_enable>
87803558:	87804334 	.word	0x87804334

8780355c <rt_timer_next_timeout_tick>:
8780355c:	e59f2010 	ldr	r2, [pc, #16]	; 87803574 <rt_timer_next_timeout_tick+0x18>
87803560:	e5923000 	ldr	r3, [r2]
87803564:	e1530002 	cmp	r3, r2
87803568:	15930014 	ldrne	r0, [r3, #20]
8780356c:	03e00000 	mvneq	r0, #0
87803570:	e12fff1e 	bx	lr
87803574:	87804334 	.word	0x87804334

87803578 <rt_system_timer_init>:
87803578:	e59f3008 	ldr	r3, [pc, #8]	; 87803588 <rt_system_timer_init+0x10>
8780357c:	e5833004 	str	r3, [r3, #4]
87803580:	e5833000 	str	r3, [r3]
87803584:	e12fff1e 	bx	lr
87803588:	87804334 	.word	0x87804334

8780358c <rt_system_timer_thread_init>:
8780358c:	e12fff1e 	bx	lr

87803590 <atoi>:
87803590:	e5d02000 	ldrb	r2, [r0]
87803594:	e2421009 	sub	r1, r2, #9
87803598:	e3520020 	cmp	r2, #32
8780359c:	13510004 	cmpne	r1, #4
878035a0:	92800001 	addls	r0, r0, #1
878035a4:	9afffff9 	bls	87803590 <atoi>
878035a8:	e352002b 	cmp	r2, #43	; 0x2b
878035ac:	e1a03000 	mov	r3, r0
878035b0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878035b4:	0a000003 	beq	878035c8 <atoi+0x38>
878035b8:	e352002d 	cmp	r2, #45	; 0x2d
878035bc:	03e02000 	mvneq	r2, #0
878035c0:	0a000001 	beq	878035cc <atoi+0x3c>
878035c4:	ea000002 	b	878035d4 <atoi+0x44>
878035c8:	e3a02001 	mov	r2, #1
878035cc:	e2833001 	add	r3, r3, #1
878035d0:	ea000000 	b	878035d8 <atoi+0x48>
878035d4:	e3a02001 	mov	r2, #1
878035d8:	e2433001 	sub	r3, r3, #1
878035dc:	e3a00000 	mov	r0, #0
878035e0:	e3a0e00a 	mov	lr, #10
878035e4:	e5f31001 	ldrb	r1, [r3, #1]!
878035e8:	e241c030 	sub	ip, r1, #48	; 0x30
878035ec:	e35c0009 	cmp	ip, #9
878035f0:	9020109e 	mlals	r0, lr, r0, r1
878035f4:	92400030 	subls	r0, r0, #48	; 0x30
878035f8:	9afffff9 	bls	878035e4 <atoi+0x54>
878035fc:	e3720001 	cmn	r2, #1
87803600:	02600000 	rsbeq	r0, r0, #0
87803604:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87803608 <atol>:
87803608:	e5d01000 	ldrb	r1, [r0]
8780360c:	e2413009 	sub	r3, r1, #9
87803610:	e3510020 	cmp	r1, #32
87803614:	13530004 	cmpne	r3, #4
87803618:	93a03001 	movls	r3, #1
8780361c:	83a03000 	movhi	r3, #0
87803620:	92800001 	addls	r0, r0, #1
87803624:	9afffff7 	bls	87803608 <atol>
87803628:	e351002b 	cmp	r1, #43	; 0x2b
8780362c:	e1a02000 	mov	r2, r0
87803630:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87803634:	0a000002 	beq	87803644 <atol+0x3c>
87803638:	e351002d 	cmp	r1, #45	; 0x2d
8780363c:	1a000001 	bne	87803648 <atol+0x40>
87803640:	e3e03000 	mvn	r3, #0
87803644:	e2822001 	add	r2, r2, #1
87803648:	e2422001 	sub	r2, r2, #1
8780364c:	e3a00000 	mov	r0, #0
87803650:	e3a0e00a 	mov	lr, #10
87803654:	e5f21001 	ldrb	r1, [r2, #1]!
87803658:	e241c030 	sub	ip, r1, #48	; 0x30
8780365c:	e35c0009 	cmp	ip, #9
87803660:	9020109e 	mlals	r0, lr, r0, r1
87803664:	92400030 	subls	r0, r0, #48	; 0x30
87803668:	9afffff9 	bls	87803654 <atol+0x4c>
8780366c:	e3530000 	cmp	r3, #0
87803670:	12600000 	rsbne	r0, r0, #0
87803674:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87803678 <malloc>:
87803678:	eafffb18 	b	878022e0 <rt_malloc>

8780367c <free>:
8780367c:	eafffb85 	b	87802498 <rt_free>

87803680 <realloc>:
87803680:	eafffba8 	b	87802528 <rt_realloc>

87803684 <calloc>:
87803684:	eafffb78 	b	8780246c <rt_calloc>

87803688 <__aeabi_uidiv>:
87803688:	1e4a      	subs	r2, r1, #1
8780368a:	bf08      	it	eq
8780368c:	4770      	bxeq	lr
8780368e:	f0c0 8124 	bcc.w	878038da <__aeabi_uidiv+0x252>
87803692:	4288      	cmp	r0, r1
87803694:	f240 8116 	bls.w	878038c4 <__aeabi_uidiv+0x23c>
87803698:	4211      	tst	r1, r2
8780369a:	f000 8117 	beq.w	878038cc <__aeabi_uidiv+0x244>
8780369e:	fab0 f380 	clz	r3, r0
878036a2:	fab1 f281 	clz	r2, r1
878036a6:	eba2 0303 	sub.w	r3, r2, r3
878036aa:	f1c3 031f 	rsb	r3, r3, #31
878036ae:	a204      	add	r2, pc, #16	; (adr r2, 878036c0 <__aeabi_uidiv+0x38>)
878036b0:	eb02 1303 	add.w	r3, r2, r3, lsl #4
878036b4:	f04f 0200 	mov.w	r2, #0
878036b8:	469f      	mov	pc, r3
878036ba:	bf00      	nop
878036bc:	f3af 8000 	nop.w
878036c0:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
878036c4:	bf00      	nop
878036c6:	eb42 0202 	adc.w	r2, r2, r2
878036ca:	bf28      	it	cs
878036cc:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
878036d0:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
878036d4:	bf00      	nop
878036d6:	eb42 0202 	adc.w	r2, r2, r2
878036da:	bf28      	it	cs
878036dc:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
878036e0:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
878036e4:	bf00      	nop
878036e6:	eb42 0202 	adc.w	r2, r2, r2
878036ea:	bf28      	it	cs
878036ec:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
878036f0:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
878036f4:	bf00      	nop
878036f6:	eb42 0202 	adc.w	r2, r2, r2
878036fa:	bf28      	it	cs
878036fc:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
87803700:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
87803704:	bf00      	nop
87803706:	eb42 0202 	adc.w	r2, r2, r2
8780370a:	bf28      	it	cs
8780370c:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
87803710:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
87803714:	bf00      	nop
87803716:	eb42 0202 	adc.w	r2, r2, r2
8780371a:	bf28      	it	cs
8780371c:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87803720:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87803724:	bf00      	nop
87803726:	eb42 0202 	adc.w	r2, r2, r2
8780372a:	bf28      	it	cs
8780372c:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87803730:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87803734:	bf00      	nop
87803736:	eb42 0202 	adc.w	r2, r2, r2
8780373a:	bf28      	it	cs
8780373c:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
87803740:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
87803744:	bf00      	nop
87803746:	eb42 0202 	adc.w	r2, r2, r2
8780374a:	bf28      	it	cs
8780374c:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
87803750:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
87803754:	bf00      	nop
87803756:	eb42 0202 	adc.w	r2, r2, r2
8780375a:	bf28      	it	cs
8780375c:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
87803760:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
87803764:	bf00      	nop
87803766:	eb42 0202 	adc.w	r2, r2, r2
8780376a:	bf28      	it	cs
8780376c:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
87803770:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
87803774:	bf00      	nop
87803776:	eb42 0202 	adc.w	r2, r2, r2
8780377a:	bf28      	it	cs
8780377c:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
87803780:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
87803784:	bf00      	nop
87803786:	eb42 0202 	adc.w	r2, r2, r2
8780378a:	bf28      	it	cs
8780378c:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
87803790:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
87803794:	bf00      	nop
87803796:	eb42 0202 	adc.w	r2, r2, r2
8780379a:	bf28      	it	cs
8780379c:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
878037a0:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
878037a4:	bf00      	nop
878037a6:	eb42 0202 	adc.w	r2, r2, r2
878037aa:	bf28      	it	cs
878037ac:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
878037b0:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
878037b4:	bf00      	nop
878037b6:	eb42 0202 	adc.w	r2, r2, r2
878037ba:	bf28      	it	cs
878037bc:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
878037c0:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
878037c4:	bf00      	nop
878037c6:	eb42 0202 	adc.w	r2, r2, r2
878037ca:	bf28      	it	cs
878037cc:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
878037d0:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
878037d4:	bf00      	nop
878037d6:	eb42 0202 	adc.w	r2, r2, r2
878037da:	bf28      	it	cs
878037dc:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
878037e0:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
878037e4:	bf00      	nop
878037e6:	eb42 0202 	adc.w	r2, r2, r2
878037ea:	bf28      	it	cs
878037ec:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
878037f0:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
878037f4:	bf00      	nop
878037f6:	eb42 0202 	adc.w	r2, r2, r2
878037fa:	bf28      	it	cs
878037fc:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
87803800:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
87803804:	bf00      	nop
87803806:	eb42 0202 	adc.w	r2, r2, r2
8780380a:	bf28      	it	cs
8780380c:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
87803810:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
87803814:	bf00      	nop
87803816:	eb42 0202 	adc.w	r2, r2, r2
8780381a:	bf28      	it	cs
8780381c:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87803820:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87803824:	bf00      	nop
87803826:	eb42 0202 	adc.w	r2, r2, r2
8780382a:	bf28      	it	cs
8780382c:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87803830:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87803834:	bf00      	nop
87803836:	eb42 0202 	adc.w	r2, r2, r2
8780383a:	bf28      	it	cs
8780383c:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
87803840:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
87803844:	bf00      	nop
87803846:	eb42 0202 	adc.w	r2, r2, r2
8780384a:	bf28      	it	cs
8780384c:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
87803850:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
87803854:	bf00      	nop
87803856:	eb42 0202 	adc.w	r2, r2, r2
8780385a:	bf28      	it	cs
8780385c:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
87803860:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
87803864:	bf00      	nop
87803866:	eb42 0202 	adc.w	r2, r2, r2
8780386a:	bf28      	it	cs
8780386c:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
87803870:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
87803874:	bf00      	nop
87803876:	eb42 0202 	adc.w	r2, r2, r2
8780387a:	bf28      	it	cs
8780387c:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
87803880:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
87803884:	bf00      	nop
87803886:	eb42 0202 	adc.w	r2, r2, r2
8780388a:	bf28      	it	cs
8780388c:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
87803890:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
87803894:	bf00      	nop
87803896:	eb42 0202 	adc.w	r2, r2, r2
8780389a:	bf28      	it	cs
8780389c:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
878038a0:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
878038a4:	bf00      	nop
878038a6:	eb42 0202 	adc.w	r2, r2, r2
878038aa:	bf28      	it	cs
878038ac:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
878038b0:	ebb0 0f01 	cmp.w	r0, r1
878038b4:	bf00      	nop
878038b6:	eb42 0202 	adc.w	r2, r2, r2
878038ba:	bf28      	it	cs
878038bc:	eba0 0001 	subcs.w	r0, r0, r1
878038c0:	4610      	mov	r0, r2
878038c2:	4770      	bx	lr
878038c4:	bf0c      	ite	eq
878038c6:	2001      	moveq	r0, #1
878038c8:	2000      	movne	r0, #0
878038ca:	4770      	bx	lr
878038cc:	fab1 f281 	clz	r2, r1
878038d0:	f1c2 021f 	rsb	r2, r2, #31
878038d4:	fa20 f002 	lsr.w	r0, r0, r2
878038d8:	4770      	bx	lr
878038da:	b108      	cbz	r0, 878038e0 <__aeabi_uidiv+0x258>
878038dc:	f04f 30ff 	mov.w	r0, #4294967295
878038e0:	f000 b966 	b.w	87803bb0 <__aeabi_idiv0>

878038e4 <__aeabi_uidivmod>:
878038e4:	2900      	cmp	r1, #0
878038e6:	d0f8      	beq.n	878038da <__aeabi_uidiv+0x252>
878038e8:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
878038ec:	f7ff fecc 	bl	87803688 <__aeabi_uidiv>
878038f0:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
878038f4:	fb02 f300 	mul.w	r3, r2, r0
878038f8:	eba1 0103 	sub.w	r1, r1, r3
878038fc:	4770      	bx	lr
878038fe:	bf00      	nop

87803900 <__aeabi_idiv>:
87803900:	2900      	cmp	r1, #0
87803902:	f000 813e 	beq.w	87803b82 <.divsi3_skip_div0_test+0x27c>

87803906 <.divsi3_skip_div0_test>:
87803906:	ea80 0c01 	eor.w	ip, r0, r1
8780390a:	bf48      	it	mi
8780390c:	4249      	negmi	r1, r1
8780390e:	1e4a      	subs	r2, r1, #1
87803910:	f000 811f 	beq.w	87803b52 <.divsi3_skip_div0_test+0x24c>
87803914:	0003      	movs	r3, r0
87803916:	bf48      	it	mi
87803918:	4243      	negmi	r3, r0
8780391a:	428b      	cmp	r3, r1
8780391c:	f240 811e 	bls.w	87803b5c <.divsi3_skip_div0_test+0x256>
87803920:	4211      	tst	r1, r2
87803922:	f000 8123 	beq.w	87803b6c <.divsi3_skip_div0_test+0x266>
87803926:	fab3 f283 	clz	r2, r3
8780392a:	fab1 f081 	clz	r0, r1
8780392e:	eba0 0202 	sub.w	r2, r0, r2
87803932:	f1c2 021f 	rsb	r2, r2, #31
87803936:	a004      	add	r0, pc, #16	; (adr r0, 87803948 <.divsi3_skip_div0_test+0x42>)
87803938:	eb00 1202 	add.w	r2, r0, r2, lsl #4
8780393c:	f04f 0000 	mov.w	r0, #0
87803940:	4697      	mov	pc, r2
87803942:	bf00      	nop
87803944:	f3af 8000 	nop.w
87803948:	ebb3 7fc1 	cmp.w	r3, r1, lsl #31
8780394c:	bf00      	nop
8780394e:	eb40 0000 	adc.w	r0, r0, r0
87803952:	bf28      	it	cs
87803954:	eba3 73c1 	subcs.w	r3, r3, r1, lsl #31
87803958:	ebb3 7f81 	cmp.w	r3, r1, lsl #30
8780395c:	bf00      	nop
8780395e:	eb40 0000 	adc.w	r0, r0, r0
87803962:	bf28      	it	cs
87803964:	eba3 7381 	subcs.w	r3, r3, r1, lsl #30
87803968:	ebb3 7f41 	cmp.w	r3, r1, lsl #29
8780396c:	bf00      	nop
8780396e:	eb40 0000 	adc.w	r0, r0, r0
87803972:	bf28      	it	cs
87803974:	eba3 7341 	subcs.w	r3, r3, r1, lsl #29
87803978:	ebb3 7f01 	cmp.w	r3, r1, lsl #28
8780397c:	bf00      	nop
8780397e:	eb40 0000 	adc.w	r0, r0, r0
87803982:	bf28      	it	cs
87803984:	eba3 7301 	subcs.w	r3, r3, r1, lsl #28
87803988:	ebb3 6fc1 	cmp.w	r3, r1, lsl #27
8780398c:	bf00      	nop
8780398e:	eb40 0000 	adc.w	r0, r0, r0
87803992:	bf28      	it	cs
87803994:	eba3 63c1 	subcs.w	r3, r3, r1, lsl #27
87803998:	ebb3 6f81 	cmp.w	r3, r1, lsl #26
8780399c:	bf00      	nop
8780399e:	eb40 0000 	adc.w	r0, r0, r0
878039a2:	bf28      	it	cs
878039a4:	eba3 6381 	subcs.w	r3, r3, r1, lsl #26
878039a8:	ebb3 6f41 	cmp.w	r3, r1, lsl #25
878039ac:	bf00      	nop
878039ae:	eb40 0000 	adc.w	r0, r0, r0
878039b2:	bf28      	it	cs
878039b4:	eba3 6341 	subcs.w	r3, r3, r1, lsl #25
878039b8:	ebb3 6f01 	cmp.w	r3, r1, lsl #24
878039bc:	bf00      	nop
878039be:	eb40 0000 	adc.w	r0, r0, r0
878039c2:	bf28      	it	cs
878039c4:	eba3 6301 	subcs.w	r3, r3, r1, lsl #24
878039c8:	ebb3 5fc1 	cmp.w	r3, r1, lsl #23
878039cc:	bf00      	nop
878039ce:	eb40 0000 	adc.w	r0, r0, r0
878039d2:	bf28      	it	cs
878039d4:	eba3 53c1 	subcs.w	r3, r3, r1, lsl #23
878039d8:	ebb3 5f81 	cmp.w	r3, r1, lsl #22
878039dc:	bf00      	nop
878039de:	eb40 0000 	adc.w	r0, r0, r0
878039e2:	bf28      	it	cs
878039e4:	eba3 5381 	subcs.w	r3, r3, r1, lsl #22
878039e8:	ebb3 5f41 	cmp.w	r3, r1, lsl #21
878039ec:	bf00      	nop
878039ee:	eb40 0000 	adc.w	r0, r0, r0
878039f2:	bf28      	it	cs
878039f4:	eba3 5341 	subcs.w	r3, r3, r1, lsl #21
878039f8:	ebb3 5f01 	cmp.w	r3, r1, lsl #20
878039fc:	bf00      	nop
878039fe:	eb40 0000 	adc.w	r0, r0, r0
87803a02:	bf28      	it	cs
87803a04:	eba3 5301 	subcs.w	r3, r3, r1, lsl #20
87803a08:	ebb3 4fc1 	cmp.w	r3, r1, lsl #19
87803a0c:	bf00      	nop
87803a0e:	eb40 0000 	adc.w	r0, r0, r0
87803a12:	bf28      	it	cs
87803a14:	eba3 43c1 	subcs.w	r3, r3, r1, lsl #19
87803a18:	ebb3 4f81 	cmp.w	r3, r1, lsl #18
87803a1c:	bf00      	nop
87803a1e:	eb40 0000 	adc.w	r0, r0, r0
87803a22:	bf28      	it	cs
87803a24:	eba3 4381 	subcs.w	r3, r3, r1, lsl #18
87803a28:	ebb3 4f41 	cmp.w	r3, r1, lsl #17
87803a2c:	bf00      	nop
87803a2e:	eb40 0000 	adc.w	r0, r0, r0
87803a32:	bf28      	it	cs
87803a34:	eba3 4341 	subcs.w	r3, r3, r1, lsl #17
87803a38:	ebb3 4f01 	cmp.w	r3, r1, lsl #16
87803a3c:	bf00      	nop
87803a3e:	eb40 0000 	adc.w	r0, r0, r0
87803a42:	bf28      	it	cs
87803a44:	eba3 4301 	subcs.w	r3, r3, r1, lsl #16
87803a48:	ebb3 3fc1 	cmp.w	r3, r1, lsl #15
87803a4c:	bf00      	nop
87803a4e:	eb40 0000 	adc.w	r0, r0, r0
87803a52:	bf28      	it	cs
87803a54:	eba3 33c1 	subcs.w	r3, r3, r1, lsl #15
87803a58:	ebb3 3f81 	cmp.w	r3, r1, lsl #14
87803a5c:	bf00      	nop
87803a5e:	eb40 0000 	adc.w	r0, r0, r0
87803a62:	bf28      	it	cs
87803a64:	eba3 3381 	subcs.w	r3, r3, r1, lsl #14
87803a68:	ebb3 3f41 	cmp.w	r3, r1, lsl #13
87803a6c:	bf00      	nop
87803a6e:	eb40 0000 	adc.w	r0, r0, r0
87803a72:	bf28      	it	cs
87803a74:	eba3 3341 	subcs.w	r3, r3, r1, lsl #13
87803a78:	ebb3 3f01 	cmp.w	r3, r1, lsl #12
87803a7c:	bf00      	nop
87803a7e:	eb40 0000 	adc.w	r0, r0, r0
87803a82:	bf28      	it	cs
87803a84:	eba3 3301 	subcs.w	r3, r3, r1, lsl #12
87803a88:	ebb3 2fc1 	cmp.w	r3, r1, lsl #11
87803a8c:	bf00      	nop
87803a8e:	eb40 0000 	adc.w	r0, r0, r0
87803a92:	bf28      	it	cs
87803a94:	eba3 23c1 	subcs.w	r3, r3, r1, lsl #11
87803a98:	ebb3 2f81 	cmp.w	r3, r1, lsl #10
87803a9c:	bf00      	nop
87803a9e:	eb40 0000 	adc.w	r0, r0, r0
87803aa2:	bf28      	it	cs
87803aa4:	eba3 2381 	subcs.w	r3, r3, r1, lsl #10
87803aa8:	ebb3 2f41 	cmp.w	r3, r1, lsl #9
87803aac:	bf00      	nop
87803aae:	eb40 0000 	adc.w	r0, r0, r0
87803ab2:	bf28      	it	cs
87803ab4:	eba3 2341 	subcs.w	r3, r3, r1, lsl #9
87803ab8:	ebb3 2f01 	cmp.w	r3, r1, lsl #8
87803abc:	bf00      	nop
87803abe:	eb40 0000 	adc.w	r0, r0, r0
87803ac2:	bf28      	it	cs
87803ac4:	eba3 2301 	subcs.w	r3, r3, r1, lsl #8
87803ac8:	ebb3 1fc1 	cmp.w	r3, r1, lsl #7
87803acc:	bf00      	nop
87803ace:	eb40 0000 	adc.w	r0, r0, r0
87803ad2:	bf28      	it	cs
87803ad4:	eba3 13c1 	subcs.w	r3, r3, r1, lsl #7
87803ad8:	ebb3 1f81 	cmp.w	r3, r1, lsl #6
87803adc:	bf00      	nop
87803ade:	eb40 0000 	adc.w	r0, r0, r0
87803ae2:	bf28      	it	cs
87803ae4:	eba3 1381 	subcs.w	r3, r3, r1, lsl #6
87803ae8:	ebb3 1f41 	cmp.w	r3, r1, lsl #5
87803aec:	bf00      	nop
87803aee:	eb40 0000 	adc.w	r0, r0, r0
87803af2:	bf28      	it	cs
87803af4:	eba3 1341 	subcs.w	r3, r3, r1, lsl #5
87803af8:	ebb3 1f01 	cmp.w	r3, r1, lsl #4
87803afc:	bf00      	nop
87803afe:	eb40 0000 	adc.w	r0, r0, r0
87803b02:	bf28      	it	cs
87803b04:	eba3 1301 	subcs.w	r3, r3, r1, lsl #4
87803b08:	ebb3 0fc1 	cmp.w	r3, r1, lsl #3
87803b0c:	bf00      	nop
87803b0e:	eb40 0000 	adc.w	r0, r0, r0
87803b12:	bf28      	it	cs
87803b14:	eba3 03c1 	subcs.w	r3, r3, r1, lsl #3
87803b18:	ebb3 0f81 	cmp.w	r3, r1, lsl #2
87803b1c:	bf00      	nop
87803b1e:	eb40 0000 	adc.w	r0, r0, r0
87803b22:	bf28      	it	cs
87803b24:	eba3 0381 	subcs.w	r3, r3, r1, lsl #2
87803b28:	ebb3 0f41 	cmp.w	r3, r1, lsl #1
87803b2c:	bf00      	nop
87803b2e:	eb40 0000 	adc.w	r0, r0, r0
87803b32:	bf28      	it	cs
87803b34:	eba3 0341 	subcs.w	r3, r3, r1, lsl #1
87803b38:	ebb3 0f01 	cmp.w	r3, r1
87803b3c:	bf00      	nop
87803b3e:	eb40 0000 	adc.w	r0, r0, r0
87803b42:	bf28      	it	cs
87803b44:	eba3 0301 	subcs.w	r3, r3, r1
87803b48:	f1bc 0f00 	cmp.w	ip, #0
87803b4c:	bf48      	it	mi
87803b4e:	4240      	negmi	r0, r0
87803b50:	4770      	bx	lr
87803b52:	ea9c 0f00 	teq	ip, r0
87803b56:	bf48      	it	mi
87803b58:	4240      	negmi	r0, r0
87803b5a:	4770      	bx	lr
87803b5c:	bf38      	it	cc
87803b5e:	2000      	movcc	r0, #0
87803b60:	bf04      	itt	eq
87803b62:	ea4f 70ec 	moveq.w	r0, ip, asr #31
87803b66:	f040 0001 	orreq.w	r0, r0, #1
87803b6a:	4770      	bx	lr
87803b6c:	fab1 f281 	clz	r2, r1
87803b70:	f1c2 021f 	rsb	r2, r2, #31
87803b74:	f1bc 0f00 	cmp.w	ip, #0
87803b78:	fa23 f002 	lsr.w	r0, r3, r2
87803b7c:	bf48      	it	mi
87803b7e:	4240      	negmi	r0, r0
87803b80:	4770      	bx	lr
87803b82:	2800      	cmp	r0, #0
87803b84:	bfc8      	it	gt
87803b86:	f06f 4000 	mvngt.w	r0, #2147483648	; 0x80000000
87803b8a:	bfb8      	it	lt
87803b8c:	f04f 4000 	movlt.w	r0, #2147483648	; 0x80000000
87803b90:	f000 b80e 	b.w	87803bb0 <__aeabi_idiv0>

87803b94 <__aeabi_idivmod>:
87803b94:	2900      	cmp	r1, #0
87803b96:	d0f4      	beq.n	87803b82 <.divsi3_skip_div0_test+0x27c>
87803b98:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
87803b9c:	f7ff feb3 	bl	87803906 <.divsi3_skip_div0_test>
87803ba0:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87803ba4:	fb02 f300 	mul.w	r3, r2, r0
87803ba8:	eba1 0103 	sub.w	r1, r1, r3
87803bac:	4770      	bx	lr
87803bae:	bf00      	nop

87803bb0 <__aeabi_idiv0>:
87803bb0:	4770      	bx	lr
87803bb2:	bf00      	nop

87803bb4 <main>:
87803bb4:	e92d4010 	push	{r4, lr}
87803bb8:	ebfff12d 	bl	87800074 <clk_enable>
87803bbc:	ebfff137 	bl	878000a0 <led_init>
87803bc0:	ebfff148 	bl	878000e8 <led_off>
87803bc4:	e3a00f7d 	mov	r0, #500	; 0x1f4
87803bc8:	ebfff155 	bl	87800124 <delay>
87803bcc:	ebfff13f 	bl	878000d0 <led_on>
87803bd0:	e3a00f7d 	mov	r0, #500	; 0x1f4
87803bd4:	ebfff152 	bl	87800124 <delay>
87803bd8:	eafffff8 	b	87803bc0 <main+0xc>

87803bdc <register_fini>:
87803bdc:	f240 0300 	movw	r3, #0
87803be0:	f2c0 0300 	movt	r3, #0
87803be4:	b12b      	cbz	r3, 87803bf2 <register_fini+0x16>
87803be6:	f643 4001 	movw	r0, #15361	; 0x3c01
87803bea:	f2c8 7080 	movt	r0, #34688	; 0x8780
87803bee:	f000 b801 	b.w	87803bf4 <atexit>
87803bf2:	4770      	bx	lr

87803bf4 <atexit>:
87803bf4:	2300      	movs	r3, #0
87803bf6:	4601      	mov	r1, r0
87803bf8:	461a      	mov	r2, r3
87803bfa:	4618      	mov	r0, r3
87803bfc:	f000 b81a 	b.w	87803c34 <__register_exitproc>

87803c00 <__libc_fini_array>:
87803c00:	b538      	push	{r3, r4, r5, lr}
87803c02:	f244 24cc 	movw	r4, #17100	; 0x42cc
87803c06:	f244 25c8 	movw	r5, #17096	; 0x42c8
87803c0a:	f2c8 7480 	movt	r4, #34688	; 0x8780
87803c0e:	f2c8 7580 	movt	r5, #34688	; 0x8780
87803c12:	1b64      	subs	r4, r4, r5
87803c14:	10a4      	asrs	r4, r4, #2
87803c16:	bf18      	it	ne
87803c18:	eb05 0584 	addne.w	r5, r5, r4, lsl #2
87803c1c:	d005      	beq.n	87803c2a <__libc_fini_array+0x2a>
87803c1e:	3c01      	subs	r4, #1
87803c20:	f855 3d04 	ldr.w	r3, [r5, #-4]!
87803c24:	4798      	blx	r3
87803c26:	2c00      	cmp	r4, #0
87803c28:	d1f9      	bne.n	87803c1e <__libc_fini_array+0x1e>
87803c2a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
87803c2e:	f000 b857 	b.w	87803ce0 <_fini>
87803c32:	bf00      	nop

87803c34 <__register_exitproc>:
87803c34:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
87803c38:	f643 6424 	movw	r4, #15908	; 0x3e24
87803c3c:	f2c8 7480 	movt	r4, #34688	; 0x8780
87803c40:	4606      	mov	r6, r0
87803c42:	6825      	ldr	r5, [r4, #0]
87803c44:	460f      	mov	r7, r1
87803c46:	4690      	mov	r8, r2
87803c48:	4699      	mov	r9, r3
87803c4a:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
87803c4e:	2c00      	cmp	r4, #0
87803c50:	d03d      	beq.n	87803cce <__register_exitproc+0x9a>
87803c52:	6860      	ldr	r0, [r4, #4]
87803c54:	281f      	cmp	r0, #31
87803c56:	bfd8      	it	le
87803c58:	f100 0e01 	addle.w	lr, r0, #1
87803c5c:	dd18      	ble.n	87803c90 <__register_exitproc+0x5c>
87803c5e:	f243 6378 	movw	r3, #13944	; 0x3678
87803c62:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803c66:	b3bb      	cbz	r3, 87803cd8 <__register_exitproc+0xa4>
87803c68:	f44f 70c8 	mov.w	r0, #400	; 0x190
87803c6c:	f7ff ed04 	blx	87803678 <malloc>
87803c70:	4604      	mov	r4, r0
87803c72:	b388      	cbz	r0, 87803cd8 <__register_exitproc+0xa4>
87803c74:	f8d5 2148 	ldr.w	r2, [r5, #328]	; 0x148
87803c78:	2100      	movs	r1, #0
87803c7a:	f04f 0e01 	mov.w	lr, #1
87803c7e:	6041      	str	r1, [r0, #4]
87803c80:	4608      	mov	r0, r1
87803c82:	6022      	str	r2, [r4, #0]
87803c84:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
87803c88:	f8c4 1188 	str.w	r1, [r4, #392]	; 0x188
87803c8c:	f8c4 118c 	str.w	r1, [r4, #396]	; 0x18c
87803c90:	b1ae      	cbz	r6, 87803cbe <__register_exitproc+0x8a>
87803c92:	eb04 0580 	add.w	r5, r4, r0, lsl #2
87803c96:	2201      	movs	r2, #1
87803c98:	2e02      	cmp	r6, #2
87803c9a:	f8c5 8088 	str.w	r8, [r5, #136]	; 0x88
87803c9e:	fa02 f200 	lsl.w	r2, r2, r0
87803ca2:	f8d4 3188 	ldr.w	r3, [r4, #392]	; 0x188
87803ca6:	ea43 0302 	orr.w	r3, r3, r2
87803caa:	f8c4 3188 	str.w	r3, [r4, #392]	; 0x188
87803cae:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
87803cb2:	bf02      	ittt	eq
87803cb4:	f8d4 318c 	ldreq.w	r3, [r4, #396]	; 0x18c
87803cb8:	431a      	orreq	r2, r3
87803cba:	f8c4 218c 	streq.w	r2, [r4, #396]	; 0x18c
87803cbe:	1c83      	adds	r3, r0, #2
87803cc0:	f8c4 e004 	str.w	lr, [r4, #4]
87803cc4:	2000      	movs	r0, #0
87803cc6:	f844 7023 	str.w	r7, [r4, r3, lsl #2]
87803cca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
87803cce:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
87803cd2:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
87803cd6:	e7bc      	b.n	87803c52 <__register_exitproc+0x1e>
87803cd8:	f04f 30ff 	mov.w	r0, #4294967295
87803cdc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

87803ce0 <_fini>:
87803ce0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
87803ce2:	bf00      	nop
87803ce4:	bcf8      	pop	{r3, r4, r5, r6, r7}
87803ce6:	bc08      	pop	{r3}
87803ce8:	469e      	mov	lr, r3
87803cea:	4770      	bx	lr

Disassembly of section .init:

87803cec <_init>:
87803cec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
87803cee:	bf00      	nop
