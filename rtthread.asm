
.\rtthread.elf:     file format elf32-littlearm


Disassembly of section .text:

87800000 <__text_start>:
87800000:	e10f0000 	mrs	r0, CPSR
87800004:	e3c0001f 	bic	r0, r0, #31
87800008:	e3800013 	orr	r0, r0, #19
8780000c:	e129f000 	msr	CPSR_fc, r0
87800010:	e51fd000 	ldr	sp, [pc, #-0]	; 87800018 <__text_start+0x18>
87800014:	ea000040 	b	8780011c <main>
87800018:	80200000 	.word	0x80200000
8780001c:	00001c41 	.word	0x00001c41
87800020:	61656100 	.word	0x61656100
87800024:	01006962 	.word	0x01006962
87800028:	00000012 	.word	0x00000012
8780002c:	412d3705 	.word	0x412d3705
87800030:	070a0600 	.word	0x070a0600
87800034:	09010841 	.word	0x09010841
87800038:	00000002 	.word	0x00000002

8780003c <clk_enable>:
8780003c:	e59f3020 	ldr	r3, [pc, #32]	; 87800064 <clk_enable+0x28>
87800040:	e3e02000 	mvn	r2, #0
87800044:	e5832068 	str	r2, [r3, #104]	; 0x68
87800048:	e583206c 	str	r2, [r3, #108]	; 0x6c
8780004c:	e5832070 	str	r2, [r3, #112]	; 0x70
87800050:	e5832074 	str	r2, [r3, #116]	; 0x74
87800054:	e5832078 	str	r2, [r3, #120]	; 0x78
87800058:	e583207c 	str	r2, [r3, #124]	; 0x7c
8780005c:	e5832080 	str	r2, [r3, #128]	; 0x80
87800060:	e12fff1e 	bx	lr
87800064:	020c4000 	.word	0x020c4000

87800068 <led_init>:
87800068:	e59f3024 	ldr	r3, [pc, #36]	; 87800094 <led_init+0x2c>
8780006c:	e3a02005 	mov	r2, #5
87800070:	e5832068 	str	r2, [r3, #104]	; 0x68
87800074:	e30120b0 	movw	r2, #4272	; 0x10b0
87800078:	e58322f4 	str	r2, [r3, #756]	; 0x2f4
8780007c:	e2433911 	sub	r3, r3, #278528	; 0x44000
87800080:	e3a02008 	mov	r2, #8
87800084:	e5832004 	str	r2, [r3, #4]
87800088:	e3a02000 	mov	r2, #0
8780008c:	e5832000 	str	r2, [r3]
87800090:	e12fff1e 	bx	lr
87800094:	020e0000 	.word	0x020e0000

87800098 <led_on>:
87800098:	e59f200c 	ldr	r2, [pc, #12]	; 878000ac <led_on+0x14>
8780009c:	e5923000 	ldr	r3, [r2]
878000a0:	e3c33008 	bic	r3, r3, #8
878000a4:	e5823000 	str	r3, [r2]
878000a8:	e12fff1e 	bx	lr
878000ac:	0209c000 	.word	0x0209c000

878000b0 <led_off>:
878000b0:	e59f200c 	ldr	r2, [pc, #12]	; 878000c4 <led_off+0x14>
878000b4:	e5923000 	ldr	r3, [r2]
878000b8:	e3833008 	orr	r3, r3, #8
878000bc:	e5823000 	str	r3, [r2]
878000c0:	e12fff1e 	bx	lr
878000c4:	0209c000 	.word	0x0209c000

878000c8 <delay_short>:
878000c8:	e24dd008 	sub	sp, sp, #8
878000cc:	e58d0004 	str	r0, [sp, #4]
878000d0:	e59d3004 	ldr	r3, [sp, #4]
878000d4:	e3530000 	cmp	r3, #0
878000d8:	e2432001 	sub	r2, r3, #1
878000dc:	e58d2004 	str	r2, [sp, #4]
878000e0:	1afffffa 	bne	878000d0 <delay_short+0x8>
878000e4:	e28dd008 	add	sp, sp, #8
878000e8:	e12fff1e 	bx	lr

878000ec <delay>:
878000ec:	e92d4007 	push	{r0, r1, r2, lr}
878000f0:	e58d0004 	str	r0, [sp, #4]
878000f4:	e59d3004 	ldr	r3, [sp, #4]
878000f8:	e3530000 	cmp	r3, #0
878000fc:	e2432001 	sub	r2, r3, #1
87800100:	e58d2004 	str	r2, [sp, #4]
87800104:	0a000002 	beq	87800114 <delay+0x28>
87800108:	e30007ff 	movw	r0, #2047	; 0x7ff
8780010c:	ebffffed 	bl	878000c8 <delay_short>
87800110:	eafffff7 	b	878000f4 <delay+0x8>
87800114:	e28dd00c 	add	sp, sp, #12
87800118:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

8780011c <main>:
8780011c:	e92d4010 	push	{r4, lr}
87800120:	ebffffc5 	bl	8780003c <clk_enable>
87800124:	ebffffcf 	bl	87800068 <led_init>
87800128:	ebffffe0 	bl	878000b0 <led_off>
8780012c:	e3a00f7d 	mov	r0, #500	; 0x1f4
87800130:	ebffffed 	bl	878000ec <delay>
87800134:	ebffffd7 	bl	87800098 <led_on>
87800138:	e3a00f7d 	mov	r0, #500	; 0x1f4
8780013c:	ebffffea 	bl	878000ec <delay>
87800140:	eafffff8 	b	87800128 <main+0xc>
87800144:	3a434347 	.word	0x3a434347
87800148:	4e472820 	.word	0x4e472820
8780014c:	6f542055 	.word	0x6f542055
87800150:	20736c6f 	.word	0x20736c6f
87800154:	20726f66 	.word	0x20726f66
87800158:	204d5241 	.word	0x204d5241
8780015c:	65626d45 	.word	0x65626d45
87800160:	64656464 	.word	0x64656464
87800164:	6f725020 	.word	0x6f725020
87800168:	73736563 	.word	0x73736563
8780016c:	2973726f 	.word	0x2973726f
87800170:	342e3520 	.word	0x342e3520
87800174:	3220312e 	.word	0x3220312e
87800178:	30363130 	.word	0x30363130
8780017c:	20393139 	.word	0x20393139
87800180:	6c657228 	.word	0x6c657228
87800184:	65736165 	.word	0x65736165
87800188:	415b2029 	.word	0x415b2029
8780018c:	652f4d52 	.word	0x652f4d52
87800190:	6465626d 	.word	0x6465626d
87800194:	2d646564 	.word	0x2d646564
87800198:	72622d35 	.word	0x72622d35
8780019c:	68636e61 	.word	0x68636e61
878001a0:	76657220 	.word	0x76657220
878001a4:	6f697369 	.word	0x6f697369
878001a8:	3432206e 	.word	0x3432206e
878001ac:	36393430 	.word	0x36393430
878001b0:	005d      	.short	0x005d
878001b2:	2a41      	.short	0x2a41
878001b4:	61000000 	.word	0x61000000
878001b8:	69626165 	.word	0x69626165
878001bc:	00200100 	.word	0x00200100
878001c0:	37050000 	.word	0x37050000
878001c4:	0600412d 	.word	0x0600412d
878001c8:	0841070a 	.word	0x0841070a
878001cc:	12020901 	.word	0x12020901
878001d0:	18011704 	.word	0x18011704
878001d4:	1a011901 	.word	0x1a011901
878001d8:	22041e01 	.word	0x22041e01
878001dc:	00000001 	.word	0x00000001

878001e0 <__do_global_dtors_aux>:
878001e0:	b510      	push	{r4, lr}
878001e2:	f244 3488 	movw	r4, #17288	; 0x4388
878001e6:	f2c8 7480 	movt	r4, #34688	; 0x8780
878001ea:	7823      	ldrb	r3, [r4, #0]
878001ec:	b963      	cbnz	r3, 87800208 <__do_global_dtors_aux+0x28>
878001ee:	f240 0300 	movw	r3, #0
878001f2:	f2c0 0300 	movt	r3, #0
878001f6:	b12b      	cbz	r3, 87800204 <__do_global_dtors_aux+0x24>
878001f8:	f643 60e0 	movw	r0, #16096	; 0x3ee0
878001fc:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800200:	f3af 8000 	nop.w
87800204:	2301      	movs	r3, #1
87800206:	7023      	strb	r3, [r4, #0]
87800208:	bd10      	pop	{r4, pc}
8780020a:	bf00      	nop

8780020c <frame_dummy>:
8780020c:	f240 0300 	movw	r3, #0
87800210:	f2c0 0300 	movt	r3, #0
87800214:	b510      	push	{r4, lr}
87800216:	b14b      	cbz	r3, 8780022c <frame_dummy+0x20>
87800218:	f244 318c 	movw	r1, #17292	; 0x438c
8780021c:	f643 60e0 	movw	r0, #16096	; 0x3ee0
87800220:	f2c8 7180 	movt	r1, #34688	; 0x8780
87800224:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800228:	f3af 8000 	nop.w
8780022c:	f244 3084 	movw	r0, #17284	; 0x4384
87800230:	f2c8 7080 	movt	r0, #34688	; 0x8780
87800234:	6803      	ldr	r3, [r0, #0]
87800236:	b903      	cbnz	r3, 8780023a <frame_dummy+0x2e>
87800238:	bd10      	pop	{r4, pc}
8780023a:	f240 0300 	movw	r3, #0
8780023e:	f2c0 0300 	movt	r3, #0
87800242:	2b00      	cmp	r3, #0
87800244:	d0f8      	beq.n	87800238 <frame_dummy+0x2c>
87800246:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
8780024a:	4718      	bx	r3

8780024c <rt_hw_interrupt_enable>:
8780024c:	e12fff1e 	bx	lr

87800250 <rt_hw_interrupt_disable>:
87800250:	e12fff1e 	bx	lr

87800254 <rt_hw_context_switch>:
87800254:	e12fff1e 	bx	lr

87800258 <rt_hw_context_switch_to>:
87800258:	e12fff1e 	bx	lr

8780025c <rt_hw_context_switch_interrupt>:
8780025c:	e12fff1e 	bx	lr

87800260 <rt_hw_stack_init>:
87800260:	e3a00000 	mov	r0, #0
87800264:	e12fff1e 	bx	lr

87800268 <rt_system_tick_init>:
87800268:	e12fff1e 	bx	lr

8780026c <rt_tick_get>:
8780026c:	e59f3004 	ldr	r3, [pc, #4]	; 87800278 <rt_tick_get+0xc>
87800270:	e5930000 	ldr	r0, [r3]
87800274:	e12fff1e 	bx	lr
87800278:	878043a4 	.word	0x878043a4

8780027c <rt_tick_set>:
8780027c:	e92d4010 	push	{r4, lr}
87800280:	e1a04000 	mov	r4, r0
87800284:	ebfffff1 	bl	87800250 <rt_hw_interrupt_disable>
87800288:	e59f3008 	ldr	r3, [pc, #8]	; 87800298 <rt_tick_set+0x1c>
8780028c:	e5834000 	str	r4, [r3]
87800290:	e8bd4010 	pop	{r4, lr}
87800294:	eaffffec 	b	8780024c <rt_hw_interrupt_enable>
87800298:	878043a4 	.word	0x878043a4

8780029c <rt_tick_increase>:
8780029c:	e59f2038 	ldr	r2, [pc, #56]	; 878002dc <rt_tick_increase+0x40>
878002a0:	e92d4010 	push	{r4, lr}
878002a4:	e5923000 	ldr	r3, [r2]
878002a8:	e2833001 	add	r3, r3, #1
878002ac:	e5823000 	str	r3, [r2]
878002b0:	eb000afb 	bl	87802ea4 <rt_thread_self>
878002b4:	e5903048 	ldr	r3, [r0, #72]	; 0x48
878002b8:	e2433001 	sub	r3, r3, #1
878002bc:	e5803048 	str	r3, [r0, #72]	; 0x48
878002c0:	e3530000 	cmp	r3, #0
878002c4:	1a000002 	bne	878002d4 <rt_tick_increase+0x38>
878002c8:	e5903044 	ldr	r3, [r0, #68]	; 0x44
878002cc:	e5803048 	str	r3, [r0, #72]	; 0x48
878002d0:	eb000b69 	bl	8780307c <rt_thread_yield>
878002d4:	e8bd4010 	pop	{r4, lr}
878002d8:	ea000cb4 	b	878035b0 <rt_timer_check>
878002dc:	878043a4 	.word	0x878043a4

878002e0 <rt_tick_from_millisecond>:
878002e0:	e92d4070 	push	{r4, r5, r6, lr}
878002e4:	e2506000 	subs	r6, r0, #0
878002e8:	ba00000d 	blt	87800324 <rt_tick_from_millisecond+0x44>
878002ec:	e3a01ffa 	mov	r1, #1000	; 0x3e8
878002f0:	e3a05ffa 	mov	r5, #1000	; 0x3e8
878002f4:	fa000db9 	blx	878039e0 <__aeabi_idiv>
878002f8:	e0040095 	mul	r4, r5, r0
878002fc:	e1a01005 	mov	r1, r5
87800300:	e1a00006 	mov	r0, r6
87800304:	fa000e5a 	blx	87803c74 <__aeabi_idivmod>
87800308:	e0000195 	mul	r0, r5, r1
8780030c:	e1a01005 	mov	r1, r5
87800310:	e2800ff9 	add	r0, r0, #996	; 0x3e4
87800314:	e2800003 	add	r0, r0, #3
87800318:	fa000db0 	blx	878039e0 <__aeabi_idiv>
8780031c:	e0800004 	add	r0, r0, r4
87800320:	e8bd8070 	pop	{r4, r5, r6, pc}
87800324:	e3e00000 	mvn	r0, #0
87800328:	e8bd8070 	pop	{r4, r5, r6, pc}

8780032c <rt_ipc_list_resume_all>:
8780032c:	e92d4070 	push	{r4, r5, r6, lr}
87800330:	e1a04000 	mov	r4, r0
87800334:	e3e05000 	mvn	r5, #0
87800338:	e5943000 	ldr	r3, [r4]
8780033c:	e1540003 	cmp	r4, r3
87800340:	0a000008 	beq	87800368 <rt_ipc_list_resume_all+0x3c>
87800344:	ebffffc1 	bl	87800250 <rt_hw_interrupt_disable>
87800348:	e1a06000 	mov	r6, r0
8780034c:	e5940000 	ldr	r0, [r4]
87800350:	e580501c 	str	r5, [r0, #28]
87800354:	e2400014 	sub	r0, r0, #20
87800358:	eb000b81 	bl	87803164 <rt_thread_resume>
8780035c:	e1a00006 	mov	r0, r6
87800360:	ebffffb9 	bl	8780024c <rt_hw_interrupt_enable>
87800364:	eafffff3 	b	87800338 <rt_ipc_list_resume_all+0xc>
87800368:	e3a00000 	mov	r0, #0
8780036c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800370 <rt_ipc_list_resume.isra.0>:
87800370:	e92d4010 	push	{r4, lr}
87800374:	e2400014 	sub	r0, r0, #20
87800378:	eb000b79 	bl	87803164 <rt_thread_resume>
8780037c:	e3a00000 	mov	r0, #0
87800380:	e8bd8010 	pop	{r4, pc}

87800384 <rt_ipc_list_suspend>:
87800384:	e92d4070 	push	{r4, r5, r6, lr}
87800388:	e1a06002 	mov	r6, r2
8780038c:	e1a05000 	mov	r5, r0
87800390:	e1a00001 	mov	r0, r1
87800394:	e1a04001 	mov	r4, r1
87800398:	eb000b3b 	bl	8780308c <rt_thread_suspend>
8780039c:	e3560000 	cmp	r6, #0
878003a0:	0a000003 	beq	878003b4 <rt_ipc_list_suspend+0x30>
878003a4:	e3560001 	cmp	r6, #1
878003a8:	1a000015 	bne	87800404 <rt_ipc_list_suspend+0x80>
878003ac:	e5953000 	ldr	r3, [r5]
878003b0:	ea00000b 	b	878003e4 <rt_ipc_list_suspend+0x60>
878003b4:	e5952004 	ldr	r2, [r5, #4]
878003b8:	e2843014 	add	r3, r4, #20
878003bc:	e5823000 	str	r3, [r2]
878003c0:	e5842018 	str	r2, [r4, #24]
878003c4:	e5853004 	str	r3, [r5, #4]
878003c8:	e5845014 	str	r5, [r4, #20]
878003cc:	ea00000c 	b	87800404 <rt_ipc_list_suspend+0x80>
878003d0:	e5d41035 	ldrb	r1, [r4, #53]	; 0x35
878003d4:	e5d32021 	ldrb	r2, [r3, #33]	; 0x21
878003d8:	e1510002 	cmp	r1, r2
878003dc:	3a000002 	bcc	878003ec <rt_ipc_list_suspend+0x68>
878003e0:	e5933000 	ldr	r3, [r3]
878003e4:	e1530005 	cmp	r3, r5
878003e8:	1afffff8 	bne	878003d0 <rt_ipc_list_suspend+0x4c>
878003ec:	e5931004 	ldr	r1, [r3, #4]
878003f0:	e2842014 	add	r2, r4, #20
878003f4:	e5812000 	str	r2, [r1]
878003f8:	e5841018 	str	r1, [r4, #24]
878003fc:	e5832004 	str	r2, [r3, #4]
87800400:	e5843014 	str	r3, [r4, #20]
87800404:	e3a00000 	mov	r0, #0
87800408:	e8bd8070 	pop	{r4, r5, r6, pc}

8780040c <rt_sem_init>:
8780040c:	e92d4070 	push	{r4, r5, r6, lr}
87800410:	e1a04000 	mov	r4, r0
87800414:	e1a06002 	mov	r6, r2
87800418:	e1a02001 	mov	r2, r1
8780041c:	e3a01002 	mov	r1, #2
87800420:	e1a05003 	mov	r5, r3
87800424:	eb0008e6 	bl	878027c4 <rt_object_init>
87800428:	e1c461bc 	strh	r6, [r4, #28]
8780042c:	e2842014 	add	r2, r4, #20
87800430:	e5842018 	str	r2, [r4, #24]
87800434:	e3a00000 	mov	r0, #0
87800438:	e5842014 	str	r2, [r4, #20]
8780043c:	e5c45009 	strb	r5, [r4, #9]
87800440:	e8bd8070 	pop	{r4, r5, r6, pc}

87800444 <rt_sem_detach>:
87800444:	e92d4010 	push	{r4, lr}
87800448:	e1a04000 	mov	r4, r0
8780044c:	e2800014 	add	r0, r0, #20
87800450:	ebffffb5 	bl	8780032c <rt_ipc_list_resume_all>
87800454:	e1a00004 	mov	r0, r4
87800458:	eb0008f7 	bl	8780283c <rt_object_detach>
8780045c:	e3a00000 	mov	r0, #0
87800460:	e8bd8010 	pop	{r4, pc}

87800464 <rt_sem_create>:
87800464:	e92d4070 	push	{r4, r5, r6, lr}
87800468:	e1a05001 	mov	r5, r1
8780046c:	e1a01000 	mov	r1, r0
87800470:	e3a00002 	mov	r0, #2
87800474:	e1a04002 	mov	r4, r2
87800478:	eb0008fe 	bl	87802878 <rt_object_allocate>
8780047c:	e3500000 	cmp	r0, #0
87800480:	12803014 	addne	r3, r0, #20
87800484:	15803018 	strne	r3, [r0, #24]
87800488:	15803014 	strne	r3, [r0, #20]
8780048c:	11c051bc 	strhne	r5, [r0, #28]
87800490:	15c04009 	strbne	r4, [r0, #9]
87800494:	e8bd8070 	pop	{r4, r5, r6, pc}

87800498 <rt_sem_delete>:
87800498:	e92d4010 	push	{r4, lr}
8780049c:	e1a04000 	mov	r4, r0
878004a0:	e2800014 	add	r0, r0, #20
878004a4:	ebffffa0 	bl	8780032c <rt_ipc_list_resume_all>
878004a8:	e1a00004 	mov	r0, r4
878004ac:	eb00090e 	bl	878028ec <rt_object_delete>
878004b0:	e3a00000 	mov	r0, #0
878004b4:	e8bd8010 	pop	{r4, pc}

878004b8 <rt_sem_take>:
878004b8:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
878004bc:	e1a06000 	mov	r6, r0
878004c0:	e58d1004 	str	r1, [sp, #4]
878004c4:	ebffff61 	bl	87800250 <rt_hw_interrupt_disable>
878004c8:	e1d641bc 	ldrh	r4, [r6, #28]
878004cc:	e3540000 	cmp	r4, #0
878004d0:	0a000004 	beq	878004e8 <rt_sem_take+0x30>
878004d4:	e2444001 	sub	r4, r4, #1
878004d8:	e1c641bc 	strh	r4, [r6, #28]
878004dc:	ebffff5a 	bl	8780024c <rt_hw_interrupt_enable>
878004e0:	e3a00000 	mov	r0, #0
878004e4:	ea00001c 	b	8780055c <rt_sem_take+0xa4>
878004e8:	e59d3004 	ldr	r3, [sp, #4]
878004ec:	e3530000 	cmp	r3, #0
878004f0:	1a000002 	bne	87800500 <rt_sem_take+0x48>
878004f4:	ebffff54 	bl	8780024c <rt_hw_interrupt_enable>
878004f8:	e3e00001 	mvn	r0, #1
878004fc:	ea000016 	b	8780055c <rt_sem_take+0xa4>
87800500:	e1a07000 	mov	r7, r0
87800504:	eb000a66 	bl	87802ea4 <rt_thread_self>
87800508:	e5804030 	str	r4, [r0, #48]	; 0x30
8780050c:	e1a01000 	mov	r1, r0
87800510:	e5d62009 	ldrb	r2, [r6, #9]
87800514:	e1a05000 	mov	r5, r0
87800518:	e2860014 	add	r0, r6, #20
8780051c:	ebffff98 	bl	87800384 <rt_ipc_list_suspend>
87800520:	e59d3004 	ldr	r3, [sp, #4]
87800524:	e3530000 	cmp	r3, #0
87800528:	da000007 	ble	8780054c <rt_sem_take+0x94>
8780052c:	e285304c 	add	r3, r5, #76	; 0x4c
87800530:	e1a01004 	mov	r1, r4
87800534:	e28d2004 	add	r2, sp, #4
87800538:	e1a04003 	mov	r4, r3
8780053c:	e1a00003 	mov	r0, r3
87800540:	eb000c05 	bl	8780355c <rt_timer_control>
87800544:	e1a00004 	mov	r0, r4
87800548:	eb000bc3 	bl	8780345c <rt_timer_start>
8780054c:	e1a00007 	mov	r0, r7
87800550:	ebffff3d 	bl	8780024c <rt_hw_interrupt_enable>
87800554:	eb000980 	bl	87802b5c <rt_schedule>
87800558:	e5950030 	ldr	r0, [r5, #48]	; 0x30
8780055c:	e28dd00c 	add	sp, sp, #12
87800560:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

87800564 <rt_sem_trytake>:
87800564:	e3a01000 	mov	r1, #0
87800568:	eaffffd2 	b	878004b8 <rt_sem_take>

8780056c <rt_sem_release>:
8780056c:	e92d4070 	push	{r4, r5, r6, lr}
87800570:	e1a04000 	mov	r4, r0
87800574:	ebffff35 	bl	87800250 <rt_hw_interrupt_disable>
87800578:	e1a03004 	mov	r3, r4
8780057c:	e1a05000 	mov	r5, r0
87800580:	e5b30014 	ldr	r0, [r3, #20]!
87800584:	e1500003 	cmp	r0, r3
87800588:	0a000002 	beq	87800598 <rt_sem_release+0x2c>
8780058c:	e3a04001 	mov	r4, #1
87800590:	ebffff76 	bl	87800370 <rt_ipc_list_resume.isra.0>
87800594:	ea000003 	b	878005a8 <rt_sem_release+0x3c>
87800598:	e1d431bc 	ldrh	r3, [r4, #28]
8780059c:	e2833001 	add	r3, r3, #1
878005a0:	e1c431bc 	strh	r3, [r4, #28]
878005a4:	e3a04000 	mov	r4, #0
878005a8:	e1a00005 	mov	r0, r5
878005ac:	ebffff26 	bl	8780024c <rt_hw_interrupt_enable>
878005b0:	e3540001 	cmp	r4, #1
878005b4:	1a000000 	bne	878005bc <rt_sem_release+0x50>
878005b8:	eb000967 	bl	87802b5c <rt_schedule>
878005bc:	e3a00000 	mov	r0, #0
878005c0:	e8bd8070 	pop	{r4, r5, r6, pc}

878005c4 <rt_sem_control>:
878005c4:	e3510001 	cmp	r1, #1
878005c8:	1a00000c 	bne	87800600 <rt_sem_control+0x3c>
878005cc:	e92d4070 	push	{r4, r5, r6, lr}
878005d0:	e1a05002 	mov	r5, r2
878005d4:	e1a04000 	mov	r4, r0
878005d8:	ebffff1c 	bl	87800250 <rt_hw_interrupt_disable>
878005dc:	e1a06000 	mov	r6, r0
878005e0:	e2840014 	add	r0, r4, #20
878005e4:	ebffff50 	bl	8780032c <rt_ipc_list_resume_all>
878005e8:	e1c451bc 	strh	r5, [r4, #28]
878005ec:	e1a00006 	mov	r0, r6
878005f0:	ebffff15 	bl	8780024c <rt_hw_interrupt_enable>
878005f4:	eb000958 	bl	87802b5c <rt_schedule>
878005f8:	e3a00000 	mov	r0, #0
878005fc:	e8bd8070 	pop	{r4, r5, r6, pc}
87800600:	e3e00000 	mvn	r0, #0
87800604:	e12fff1e 	bx	lr

87800608 <rt_mutex_init>:
87800608:	e92d4070 	push	{r4, r5, r6, lr}
8780060c:	e1a04000 	mov	r4, r0
87800610:	e1a05002 	mov	r5, r2
87800614:	e1a02001 	mov	r2, r1
87800618:	e3a01003 	mov	r1, #3
8780061c:	eb000868 	bl	878027c4 <rt_object_init>
87800620:	e5c45009 	strb	r5, [r4, #9]
87800624:	e2843014 	add	r3, r4, #20
87800628:	e5843018 	str	r3, [r4, #24]
8780062c:	e3a00000 	mov	r0, #0
87800630:	e5843014 	str	r3, [r4, #20]
87800634:	e3a03001 	mov	r3, #1
87800638:	e1c431bc 	strh	r3, [r4, #28]
8780063c:	e3e03000 	mvn	r3, #0
87800640:	e5840020 	str	r0, [r4, #32]
87800644:	e5c4301e 	strb	r3, [r4, #30]
87800648:	e5c4001f 	strb	r0, [r4, #31]
8780064c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800650 <rt_mutex_detach>:
87800650:	e92d4010 	push	{r4, lr}
87800654:	e1a04000 	mov	r4, r0
87800658:	e2800014 	add	r0, r0, #20
8780065c:	ebffff32 	bl	8780032c <rt_ipc_list_resume_all>
87800660:	e1a00004 	mov	r0, r4
87800664:	eb000874 	bl	8780283c <rt_object_detach>
87800668:	e3a00000 	mov	r0, #0
8780066c:	e8bd8010 	pop	{r4, pc}

87800670 <rt_mutex_create>:
87800670:	e92d4010 	push	{r4, lr}
87800674:	e1a04001 	mov	r4, r1
87800678:	e1a01000 	mov	r1, r0
8780067c:	e3a00003 	mov	r0, #3
87800680:	eb00087c 	bl	87802878 <rt_object_allocate>
87800684:	e3500000 	cmp	r0, #0
87800688:	08bd8010 	popeq	{r4, pc}
8780068c:	e5c04009 	strb	r4, [r0, #9]
87800690:	e2803014 	add	r3, r0, #20
87800694:	e5803018 	str	r3, [r0, #24]
87800698:	e3e02000 	mvn	r2, #0
8780069c:	e5803014 	str	r3, [r0, #20]
878006a0:	e3a03001 	mov	r3, #1
878006a4:	e1c031bc 	strh	r3, [r0, #28]
878006a8:	e3a03000 	mov	r3, #0
878006ac:	e5803020 	str	r3, [r0, #32]
878006b0:	e5c0201e 	strb	r2, [r0, #30]
878006b4:	e5c0301f 	strb	r3, [r0, #31]
878006b8:	e8bd8010 	pop	{r4, pc}

878006bc <rt_mutex_delete>:
878006bc:	e92d4010 	push	{r4, lr}
878006c0:	e1a04000 	mov	r4, r0
878006c4:	e2800014 	add	r0, r0, #20
878006c8:	ebffff17 	bl	8780032c <rt_ipc_list_resume_all>
878006cc:	e1a00004 	mov	r0, r4
878006d0:	eb000885 	bl	878028ec <rt_object_delete>
878006d4:	e3a00000 	mov	r0, #0
878006d8:	e8bd8010 	pop	{r4, pc}

878006dc <rt_mutex_take>:
878006dc:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
878006e0:	e1a04000 	mov	r4, r0
878006e4:	e58d1004 	str	r1, [sp, #4]
878006e8:	eb0009ed 	bl	87802ea4 <rt_thread_self>
878006ec:	e1a05000 	mov	r5, r0
878006f0:	ebfffed6 	bl	87800250 <rt_hw_interrupt_disable>
878006f4:	e3a03000 	mov	r3, #0
878006f8:	e1a06000 	mov	r6, r0
878006fc:	e5853030 	str	r3, [r5, #48]	; 0x30
87800700:	e5943020 	ldr	r3, [r4, #32]
87800704:	e1550003 	cmp	r5, r3
87800708:	12858035 	addne	r8, r5, #53	; 0x35
8780070c:	12849014 	addne	r9, r4, #20
87800710:	0a000007 	beq	87800734 <rt_mutex_take+0x58>
87800714:	e1d431bc 	ldrh	r3, [r4, #28]
87800718:	e3530000 	cmp	r3, #0
8780071c:	0a000008 	beq	87800744 <rt_mutex_take+0x68>
87800720:	e5845020 	str	r5, [r4, #32]
87800724:	e2433001 	sub	r3, r3, #1
87800728:	e1c431bc 	strh	r3, [r4, #28]
8780072c:	e5d53035 	ldrb	r3, [r5, #53]	; 0x35
87800730:	e5c4301e 	strb	r3, [r4, #30]
87800734:	e5d4301f 	ldrb	r3, [r4, #31]
87800738:	e2833001 	add	r3, r3, #1
8780073c:	e5c4301f 	strb	r3, [r4, #31]
87800740:	ea000029 	b	878007ec <rt_mutex_take+0x110>
87800744:	e59d3004 	ldr	r3, [sp, #4]
87800748:	e3530000 	cmp	r3, #0
8780074c:	1a000005 	bne	87800768 <rt_mutex_take+0x8c>
87800750:	e3e04001 	mvn	r4, #1
87800754:	e1a00006 	mov	r0, r6
87800758:	e5854030 	str	r4, [r5, #48]	; 0x30
8780075c:	ebfffeba 	bl	8780024c <rt_hw_interrupt_enable>
87800760:	e1a00004 	mov	r0, r4
87800764:	ea000023 	b	878007f8 <rt_mutex_take+0x11c>
87800768:	e5940020 	ldr	r0, [r4, #32]
8780076c:	e5d52035 	ldrb	r2, [r5, #53]	; 0x35
87800770:	e5d03035 	ldrb	r3, [r0, #53]	; 0x35
87800774:	e1520003 	cmp	r2, r3
87800778:	2a000002 	bcs	87800788 <rt_mutex_take+0xac>
8780077c:	e1a02008 	mov	r2, r8
87800780:	e3a01002 	mov	r1, #2
87800784:	eb000aa1 	bl	87803210 <rt_thread_control>
87800788:	e5d42009 	ldrb	r2, [r4, #9]
8780078c:	e1a01005 	mov	r1, r5
87800790:	e1a00009 	mov	r0, r9
87800794:	ebfffefa 	bl	87800384 <rt_ipc_list_suspend>
87800798:	e59d3004 	ldr	r3, [sp, #4]
8780079c:	e3530000 	cmp	r3, #0
878007a0:	da000006 	ble	878007c0 <rt_mutex_take+0xe4>
878007a4:	e285704c 	add	r7, r5, #76	; 0x4c
878007a8:	e28d2004 	add	r2, sp, #4
878007ac:	e3a01000 	mov	r1, #0
878007b0:	e1a00007 	mov	r0, r7
878007b4:	eb000b68 	bl	8780355c <rt_timer_control>
878007b8:	e1a00007 	mov	r0, r7
878007bc:	eb000b26 	bl	8780345c <rt_timer_start>
878007c0:	e1a00006 	mov	r0, r6
878007c4:	ebfffea0 	bl	8780024c <rt_hw_interrupt_enable>
878007c8:	eb0008e3 	bl	87802b5c <rt_schedule>
878007cc:	e5950030 	ldr	r0, [r5, #48]	; 0x30
878007d0:	e3500000 	cmp	r0, #0
878007d4:	0a000002 	beq	878007e4 <rt_mutex_take+0x108>
878007d8:	e3700009 	cmn	r0, #9
878007dc:	0affffcc 	beq	87800714 <rt_mutex_take+0x38>
878007e0:	ea000004 	b	878007f8 <rt_mutex_take+0x11c>
878007e4:	ebfffe99 	bl	87800250 <rt_hw_interrupt_disable>
878007e8:	e1a06000 	mov	r6, r0
878007ec:	e1a00006 	mov	r0, r6
878007f0:	ebfffe95 	bl	8780024c <rt_hw_interrupt_enable>
878007f4:	e3a00000 	mov	r0, #0
878007f8:	e28dd00c 	add	sp, sp, #12
878007fc:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

87800800 <rt_mutex_release>:
87800800:	e92d4070 	push	{r4, r5, r6, lr}
87800804:	e1a04000 	mov	r4, r0
87800808:	eb0009a5 	bl	87802ea4 <rt_thread_self>
8780080c:	e1a06000 	mov	r6, r0
87800810:	ebfffe8e 	bl	87800250 <rt_hw_interrupt_disable>
87800814:	e5943020 	ldr	r3, [r4, #32]
87800818:	e1560003 	cmp	r6, r3
8780081c:	0a000004 	beq	87800834 <rt_mutex_release+0x34>
87800820:	e3e04000 	mvn	r4, #0
87800824:	e5864030 	str	r4, [r6, #48]	; 0x30
87800828:	ebfffe87 	bl	8780024c <rt_hw_interrupt_enable>
8780082c:	e1a00004 	mov	r0, r4
87800830:	e8bd8070 	pop	{r4, r5, r6, pc}
87800834:	e5d4301f 	ldrb	r3, [r4, #31]
87800838:	e1a05000 	mov	r5, r0
8780083c:	e2433001 	sub	r3, r3, #1
87800840:	e6ef3073 	uxtb	r3, r3
87800844:	e5c4301f 	strb	r3, [r4, #31]
87800848:	e3530000 	cmp	r3, #0
8780084c:	13a04000 	movne	r4, #0
87800850:	1a00001d 	bne	878008cc <rt_mutex_release+0xcc>
87800854:	e5d4201e 	ldrb	r2, [r4, #30]
87800858:	e5d63035 	ldrb	r3, [r6, #53]	; 0x35
8780085c:	e1520003 	cmp	r2, r3
87800860:	0a000003 	beq	87800874 <rt_mutex_release+0x74>
87800864:	e284201e 	add	r2, r4, #30
87800868:	e3a01002 	mov	r1, #2
8780086c:	e1a00006 	mov	r0, r6
87800870:	eb000a66 	bl	87803210 <rt_thread_control>
87800874:	e1a03004 	mov	r3, r4
87800878:	e5b30014 	ldr	r0, [r3, #20]!
8780087c:	e1500003 	cmp	r0, r3
87800880:	0a000009 	beq	878008ac <rt_mutex_release+0xac>
87800884:	e2403014 	sub	r3, r0, #20
87800888:	e5843020 	str	r3, [r4, #32]
8780088c:	e5d03021 	ldrb	r3, [r0, #33]	; 0x21
87800890:	e5c4301e 	strb	r3, [r4, #30]
87800894:	e5d4301f 	ldrb	r3, [r4, #31]
87800898:	e2833001 	add	r3, r3, #1
8780089c:	e5c4301f 	strb	r3, [r4, #31]
878008a0:	e3a04001 	mov	r4, #1
878008a4:	ebfffeb1 	bl	87800370 <rt_ipc_list_resume.isra.0>
878008a8:	ea000007 	b	878008cc <rt_mutex_release+0xcc>
878008ac:	e1d431bc 	ldrh	r3, [r4, #28]
878008b0:	e3e02000 	mvn	r2, #0
878008b4:	e5c4201e 	strb	r2, [r4, #30]
878008b8:	e2833001 	add	r3, r3, #1
878008bc:	e1c431bc 	strh	r3, [r4, #28]
878008c0:	e3a03000 	mov	r3, #0
878008c4:	e5843020 	str	r3, [r4, #32]
878008c8:	e1a04003 	mov	r4, r3
878008cc:	e1a00005 	mov	r0, r5
878008d0:	ebfffe5d 	bl	8780024c <rt_hw_interrupt_enable>
878008d4:	e3540001 	cmp	r4, #1
878008d8:	1a000000 	bne	878008e0 <rt_mutex_release+0xe0>
878008dc:	eb00089e 	bl	87802b5c <rt_schedule>
878008e0:	e3a00000 	mov	r0, #0
878008e4:	e8bd8070 	pop	{r4, r5, r6, pc}

878008e8 <rt_mutex_control>:
878008e8:	e3e00000 	mvn	r0, #0
878008ec:	e12fff1e 	bx	lr

878008f0 <rt_event_init>:
878008f0:	e92d4070 	push	{r4, r5, r6, lr}
878008f4:	e1a04000 	mov	r4, r0
878008f8:	e1a05002 	mov	r5, r2
878008fc:	e1a02001 	mov	r2, r1
87800900:	e3a01004 	mov	r1, #4
87800904:	eb0007ae 	bl	878027c4 <rt_object_init>
87800908:	e5c45009 	strb	r5, [r4, #9]
8780090c:	e2843014 	add	r3, r4, #20
87800910:	e5843018 	str	r3, [r4, #24]
87800914:	e3a00000 	mov	r0, #0
87800918:	e5843014 	str	r3, [r4, #20]
8780091c:	e584001c 	str	r0, [r4, #28]
87800920:	e8bd8070 	pop	{r4, r5, r6, pc}

87800924 <rt_event_detach>:
87800924:	e92d4010 	push	{r4, lr}
87800928:	e1a04000 	mov	r4, r0
8780092c:	e2800014 	add	r0, r0, #20
87800930:	ebfffe7d 	bl	8780032c <rt_ipc_list_resume_all>
87800934:	e1a00004 	mov	r0, r4
87800938:	eb0007bf 	bl	8780283c <rt_object_detach>
8780093c:	e3a00000 	mov	r0, #0
87800940:	e8bd8010 	pop	{r4, pc}

87800944 <rt_event_create>:
87800944:	e92d4010 	push	{r4, lr}
87800948:	e1a04001 	mov	r4, r1
8780094c:	e1a01000 	mov	r1, r0
87800950:	e3a00004 	mov	r0, #4
87800954:	eb0007c7 	bl	87802878 <rt_object_allocate>
87800958:	e3500000 	cmp	r0, #0
8780095c:	12803014 	addne	r3, r0, #20
87800960:	15803018 	strne	r3, [r0, #24]
87800964:	15803014 	strne	r3, [r0, #20]
87800968:	13a03000 	movne	r3, #0
8780096c:	15c04009 	strbne	r4, [r0, #9]
87800970:	1580301c 	strne	r3, [r0, #28]
87800974:	e8bd8010 	pop	{r4, pc}

87800978 <rt_event_delete>:
87800978:	e92d4010 	push	{r4, lr}
8780097c:	e1a04000 	mov	r4, r0
87800980:	e2800014 	add	r0, r0, #20
87800984:	ebfffe68 	bl	8780032c <rt_ipc_list_resume_all>
87800988:	e1a00004 	mov	r0, r4
8780098c:	eb0007d6 	bl	878028ec <rt_object_delete>
87800990:	e3a00000 	mov	r0, #0
87800994:	e8bd8010 	pop	{r4, pc}

87800998 <rt_event_send>:
87800998:	e3510000 	cmp	r1, #0
8780099c:	0a000031 	beq	87800a68 <rt_event_send+0xd0>
878009a0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878009a4:	e1a04000 	mov	r4, r0
878009a8:	e1a05001 	mov	r5, r1
878009ac:	ebfffe27 	bl	87800250 <rt_hw_interrupt_disable>
878009b0:	e594101c 	ldr	r1, [r4, #28]
878009b4:	e1a06000 	mov	r6, r0
878009b8:	e5940014 	ldr	r0, [r4, #20]
878009bc:	e2847014 	add	r7, r4, #20
878009c0:	e1815005 	orr	r5, r1, r5
878009c4:	e1570000 	cmp	r7, r0
878009c8:	e584501c 	str	r5, [r4, #28]
878009cc:	e3a05000 	mov	r5, #0
878009d0:	0a00001e 	beq	87800a50 <rt_event_send+0xb8>
878009d4:	e5d0202c 	ldrb	r2, [r0, #44]	; 0x2c
878009d8:	e2123001 	ands	r3, r2, #1
878009dc:	0a000005 	beq	878009f8 <rt_event_send+0x60>
878009e0:	e5903028 	ldr	r3, [r0, #40]	; 0x28
878009e4:	e594101c 	ldr	r1, [r4, #28]
878009e8:	e1d33001 	bics	r3, r3, r1
878009ec:	13e03000 	mvnne	r3, #0
878009f0:	03a03000 	moveq	r3, #0
878009f4:	ea000007 	b	87800a18 <rt_event_send+0x80>
878009f8:	e3120002 	tst	r2, #2
878009fc:	0a000004 	beq	87800a14 <rt_event_send+0x7c>
87800a00:	e5901028 	ldr	r1, [r0, #40]	; 0x28
87800a04:	e594c01c 	ldr	ip, [r4, #28]
87800a08:	e011100c 	ands	r1, r1, ip
87800a0c:	15801028 	strne	r1, [r0, #40]	; 0x28
87800a10:	1a000000 	bne	87800a18 <rt_event_send+0x80>
87800a14:	e3e03000 	mvn	r3, #0
87800a18:	e5908000 	ldr	r8, [r0]
87800a1c:	e3530000 	cmp	r3, #0
87800a20:	1a000007 	bne	87800a44 <rt_event_send+0xac>
87800a24:	e3120004 	tst	r2, #4
87800a28:	e2400014 	sub	r0, r0, #20
87800a2c:	e3a05001 	mov	r5, #1
87800a30:	1590203c 	ldrne	r2, [r0, #60]	; 0x3c
87800a34:	1594301c 	ldrne	r3, [r4, #28]
87800a38:	11c33002 	bicne	r3, r3, r2
87800a3c:	1584301c 	strne	r3, [r4, #28]
87800a40:	eb0009c7 	bl	87803164 <rt_thread_resume>
87800a44:	e1570008 	cmp	r7, r8
87800a48:	11a00008 	movne	r0, r8
87800a4c:	1affffe0 	bne	878009d4 <rt_event_send+0x3c>
87800a50:	e1a00006 	mov	r0, r6
87800a54:	ebfffdfc 	bl	8780024c <rt_hw_interrupt_enable>
87800a58:	e3550001 	cmp	r5, #1
87800a5c:	1a000003 	bne	87800a70 <rt_event_send+0xd8>
87800a60:	eb00083d 	bl	87802b5c <rt_schedule>
87800a64:	ea000001 	b	87800a70 <rt_event_send+0xd8>
87800a68:	e3e00000 	mvn	r0, #0
87800a6c:	e12fff1e 	bx	lr
87800a70:	e3a00000 	mov	r0, #0
87800a74:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87800a78 <rt_event_recv>:
87800a78:	e92d43f7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
87800a7c:	e3510000 	cmp	r1, #0
87800a80:	e58d3004 	str	r3, [sp, #4]
87800a84:	03e00000 	mvneq	r0, #0
87800a88:	e59d8028 	ldr	r8, [sp, #40]	; 0x28
87800a8c:	0a00003e 	beq	87800b8c <rt_event_recv+0x114>
87800a90:	e1a07002 	mov	r7, r2
87800a94:	e1a06001 	mov	r6, r1
87800a98:	e1a05000 	mov	r5, r0
87800a9c:	eb000900 	bl	87802ea4 <rt_thread_self>
87800aa0:	e3a03000 	mov	r3, #0
87800aa4:	e1a04000 	mov	r4, r0
87800aa8:	e5803030 	str	r3, [r0, #48]	; 0x30
87800aac:	ebfffde7 	bl	87800250 <rt_hw_interrupt_disable>
87800ab0:	e3170001 	tst	r7, #1
87800ab4:	e1a09000 	mov	r9, r0
87800ab8:	0a000003 	beq	87800acc <rt_event_recv+0x54>
87800abc:	e595301c 	ldr	r3, [r5, #28]
87800ac0:	e1d63003 	bics	r3, r6, r3
87800ac4:	1a000005 	bne	87800ae0 <rt_event_recv+0x68>
87800ac8:	ea000026 	b	87800b68 <rt_event_recv+0xf0>
87800acc:	e3170002 	tst	r7, #2
87800ad0:	0a000002 	beq	87800ae0 <rt_event_recv+0x68>
87800ad4:	e595301c 	ldr	r3, [r5, #28]
87800ad8:	e1160003 	tst	r6, r3
87800adc:	1a000021 	bne	87800b68 <rt_event_recv+0xf0>
87800ae0:	e59d3004 	ldr	r3, [sp, #4]
87800ae4:	e3530000 	cmp	r3, #0
87800ae8:	03e03001 	mvneq	r3, #1
87800aec:	05843030 	streq	r3, [r4, #48]	; 0x30
87800af0:	0a000019 	beq	87800b5c <rt_event_recv+0xe4>
87800af4:	e584603c 	str	r6, [r4, #60]	; 0x3c
87800af8:	e1a01004 	mov	r1, r4
87800afc:	e5c47040 	strb	r7, [r4, #64]	; 0x40
87800b00:	e2850014 	add	r0, r5, #20
87800b04:	e5d52009 	ldrb	r2, [r5, #9]
87800b08:	ebfffe1d 	bl	87800384 <rt_ipc_list_suspend>
87800b0c:	e59d3004 	ldr	r3, [sp, #4]
87800b10:	e3530000 	cmp	r3, #0
87800b14:	da000006 	ble	87800b34 <rt_event_recv+0xbc>
87800b18:	e284504c 	add	r5, r4, #76	; 0x4c
87800b1c:	e28d2004 	add	r2, sp, #4
87800b20:	e3a01000 	mov	r1, #0
87800b24:	e1a00005 	mov	r0, r5
87800b28:	eb000a8b 	bl	8780355c <rt_timer_control>
87800b2c:	e1a00005 	mov	r0, r5
87800b30:	eb000a49 	bl	8780345c <rt_timer_start>
87800b34:	e1a00009 	mov	r0, r9
87800b38:	ebfffdc3 	bl	8780024c <rt_hw_interrupt_enable>
87800b3c:	eb000806 	bl	87802b5c <rt_schedule>
87800b40:	e5940030 	ldr	r0, [r4, #48]	; 0x30
87800b44:	e3500000 	cmp	r0, #0
87800b48:	1a00000f 	bne	87800b8c <rt_event_recv+0x114>
87800b4c:	ebfffdbf 	bl	87800250 <rt_hw_interrupt_disable>
87800b50:	e3580000 	cmp	r8, #0
87800b54:	1594303c 	ldrne	r3, [r4, #60]	; 0x3c
87800b58:	15883000 	strne	r3, [r8]
87800b5c:	ebfffdba 	bl	8780024c <rt_hw_interrupt_enable>
87800b60:	e5940030 	ldr	r0, [r4, #48]	; 0x30
87800b64:	ea000008 	b	87800b8c <rt_event_recv+0x114>
87800b68:	e3580000 	cmp	r8, #0
87800b6c:	1595301c 	ldrne	r3, [r5, #28]
87800b70:	10033006 	andne	r3, r3, r6
87800b74:	15883000 	strne	r3, [r8]
87800b78:	e3170004 	tst	r7, #4
87800b7c:	1595101c 	ldrne	r1, [r5, #28]
87800b80:	11c16006 	bicne	r6, r1, r6
87800b84:	1585601c 	strne	r6, [r5, #28]
87800b88:	eafffff3 	b	87800b5c <rt_event_recv+0xe4>
87800b8c:	e28dd00c 	add	sp, sp, #12
87800b90:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}

87800b94 <rt_event_control>:
87800b94:	e3510001 	cmp	r1, #1
87800b98:	1a00000c 	bne	87800bd0 <rt_event_control+0x3c>
87800b9c:	e92d4070 	push	{r4, r5, r6, lr}
87800ba0:	e1a05000 	mov	r5, r0
87800ba4:	e3a04000 	mov	r4, #0
87800ba8:	ebfffda8 	bl	87800250 <rt_hw_interrupt_disable>
87800bac:	e1a06000 	mov	r6, r0
87800bb0:	e2850014 	add	r0, r5, #20
87800bb4:	ebfffddc 	bl	8780032c <rt_ipc_list_resume_all>
87800bb8:	e585401c 	str	r4, [r5, #28]
87800bbc:	e1a00006 	mov	r0, r6
87800bc0:	ebfffda1 	bl	8780024c <rt_hw_interrupt_enable>
87800bc4:	eb0007e4 	bl	87802b5c <rt_schedule>
87800bc8:	e1a00004 	mov	r0, r4
87800bcc:	e8bd8070 	pop	{r4, r5, r6, pc}
87800bd0:	e3e00000 	mvn	r0, #0
87800bd4:	e12fff1e 	bx	lr

87800bd8 <rt_mb_init>:
87800bd8:	e92d4070 	push	{r4, r5, r6, lr}
87800bdc:	e1a06002 	mov	r6, r2
87800be0:	e1a02001 	mov	r2, r1
87800be4:	e3a01005 	mov	r1, #5
87800be8:	e1a04000 	mov	r4, r0
87800bec:	e1a05003 	mov	r5, r3
87800bf0:	eb0006f3 	bl	878027c4 <rt_object_init>
87800bf4:	e5dd3010 	ldrb	r3, [sp, #16]
87800bf8:	e3a00000 	mov	r0, #0
87800bfc:	e584601c 	str	r6, [r4, #28]
87800c00:	e2842014 	add	r2, r4, #20
87800c04:	e5c43009 	strb	r3, [r4, #9]
87800c08:	e2843028 	add	r3, r4, #40	; 0x28
87800c0c:	e5842018 	str	r2, [r4, #24]
87800c10:	e5842014 	str	r2, [r4, #20]
87800c14:	e1c452b0 	strh	r5, [r4, #32]
87800c18:	e1c402b2 	strh	r0, [r4, #34]	; 0x22
87800c1c:	e1c402b4 	strh	r0, [r4, #36]	; 0x24
87800c20:	e1c402b6 	strh	r0, [r4, #38]	; 0x26
87800c24:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800c28:	e5843028 	str	r3, [r4, #40]	; 0x28
87800c2c:	e8bd8070 	pop	{r4, r5, r6, pc}

87800c30 <rt_mb_detach>:
87800c30:	e92d4010 	push	{r4, lr}
87800c34:	e1a04000 	mov	r4, r0
87800c38:	e2800014 	add	r0, r0, #20
87800c3c:	ebfffdba 	bl	8780032c <rt_ipc_list_resume_all>
87800c40:	e2840028 	add	r0, r4, #40	; 0x28
87800c44:	ebfffdb8 	bl	8780032c <rt_ipc_list_resume_all>
87800c48:	e1a00004 	mov	r0, r4
87800c4c:	eb0006fa 	bl	8780283c <rt_object_detach>
87800c50:	e3a00000 	mov	r0, #0
87800c54:	e8bd8010 	pop	{r4, pc}

87800c58 <rt_mb_create>:
87800c58:	e92d4070 	push	{r4, r5, r6, lr}
87800c5c:	e1a05001 	mov	r5, r1
87800c60:	e1a01000 	mov	r1, r0
87800c64:	e3a00005 	mov	r0, #5
87800c68:	e1a06002 	mov	r6, r2
87800c6c:	eb000701 	bl	87802878 <rt_object_allocate>
87800c70:	e2504000 	subs	r4, r0, #0
87800c74:	0a000016 	beq	87800cd4 <rt_mb_create+0x7c>
87800c78:	e1c452b0 	strh	r5, [r4, #32]
87800c7c:	e6ff0075 	uxth	r0, r5
87800c80:	e5c46009 	strb	r6, [r4, #9]
87800c84:	e2843014 	add	r3, r4, #20
87800c88:	e5843018 	str	r3, [r4, #24]
87800c8c:	e5843014 	str	r3, [r4, #20]
87800c90:	e1a00100 	lsl	r0, r0, #2
87800c94:	eb0005c8 	bl	878023bc <rt_malloc>
87800c98:	e584001c 	str	r0, [r4, #28]
87800c9c:	e3500000 	cmp	r0, #0
87800ca0:	e1a05000 	mov	r5, r0
87800ca4:	e3a03000 	mov	r3, #0
87800ca8:	1a000003 	bne	87800cbc <rt_mb_create+0x64>
87800cac:	e1a00004 	mov	r0, r4
87800cb0:	eb00070d 	bl	878028ec <rt_object_delete>
87800cb4:	e1a00005 	mov	r0, r5
87800cb8:	e8bd8070 	pop	{r4, r5, r6, pc}
87800cbc:	e1c432b2 	strh	r3, [r4, #34]	; 0x22
87800cc0:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87800cc4:	e1c432b6 	strh	r3, [r4, #38]	; 0x26
87800cc8:	e2843028 	add	r3, r4, #40	; 0x28
87800ccc:	e584302c 	str	r3, [r4, #44]	; 0x2c
87800cd0:	e5843028 	str	r3, [r4, #40]	; 0x28
87800cd4:	e1a00004 	mov	r0, r4
87800cd8:	e8bd8070 	pop	{r4, r5, r6, pc}

87800cdc <rt_mb_delete>:
87800cdc:	e92d4010 	push	{r4, lr}
87800ce0:	e1a04000 	mov	r4, r0
87800ce4:	e2800014 	add	r0, r0, #20
87800ce8:	ebfffd8f 	bl	8780032c <rt_ipc_list_resume_all>
87800cec:	e2840028 	add	r0, r4, #40	; 0x28
87800cf0:	ebfffd8d 	bl	8780032c <rt_ipc_list_resume_all>
87800cf4:	e594001c 	ldr	r0, [r4, #28]
87800cf8:	eb00061d 	bl	87802574 <rt_free>
87800cfc:	e1a00004 	mov	r0, r4
87800d00:	eb0006f9 	bl	878028ec <rt_object_delete>
87800d04:	e3a00000 	mov	r0, #0
87800d08:	e8bd8010 	pop	{r4, pc}

87800d0c <rt_mb_send_wait>:
87800d0c:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87800d10:	e1a04000 	mov	r4, r0
87800d14:	e58d2004 	str	r2, [sp, #4]
87800d18:	e1a09001 	mov	r9, r1
87800d1c:	eb000860 	bl	87802ea4 <rt_thread_self>
87800d20:	e1a07000 	mov	r7, r0
87800d24:	ebfffd49 	bl	87800250 <rt_hw_interrupt_disable>
87800d28:	e1d422b2 	ldrh	r2, [r4, #34]	; 0x22
87800d2c:	e1a06000 	mov	r6, r0
87800d30:	e1d412b0 	ldrh	r1, [r4, #32]
87800d34:	e1520001 	cmp	r2, r1
87800d38:	1a000033 	bne	87800e0c <rt_mb_send_wait+0x100>
87800d3c:	e59d3004 	ldr	r3, [sp, #4]
87800d40:	e3530000 	cmp	r3, #0
87800d44:	0a00002d 	beq	87800e00 <rt_mb_send_wait+0xf4>
87800d48:	e3a05000 	mov	r5, #0
87800d4c:	e284b028 	add	fp, r4, #40	; 0x28
87800d50:	e1a0a005 	mov	sl, r5
87800d54:	e287804c 	add	r8, r7, #76	; 0x4c
87800d58:	ea00001f 	b	87800ddc <rt_mb_send_wait+0xd0>
87800d5c:	e5d42009 	ldrb	r2, [r4, #9]
87800d60:	e1a01007 	mov	r1, r7
87800d64:	e1a0000b 	mov	r0, fp
87800d68:	ebfffd85 	bl	87800384 <rt_ipc_list_suspend>
87800d6c:	e59d3004 	ldr	r3, [sp, #4]
87800d70:	e3530000 	cmp	r3, #0
87800d74:	da000007 	ble	87800d98 <rt_mb_send_wait+0x8c>
87800d78:	ebfffd3b 	bl	8780026c <rt_tick_get>
87800d7c:	e1a05000 	mov	r5, r0
87800d80:	e28d2004 	add	r2, sp, #4
87800d84:	e3a01000 	mov	r1, #0
87800d88:	e1a00008 	mov	r0, r8
87800d8c:	eb0009f2 	bl	8780355c <rt_timer_control>
87800d90:	e1a00008 	mov	r0, r8
87800d94:	eb0009b0 	bl	8780345c <rt_timer_start>
87800d98:	e1a00006 	mov	r0, r6
87800d9c:	ebfffd2a 	bl	8780024c <rt_hw_interrupt_enable>
87800da0:	eb00076d 	bl	87802b5c <rt_schedule>
87800da4:	e5970030 	ldr	r0, [r7, #48]	; 0x30
87800da8:	e3500000 	cmp	r0, #0
87800dac:	1a00002b 	bne	87800e60 <rt_mb_send_wait+0x154>
87800db0:	ebfffd26 	bl	87800250 <rt_hw_interrupt_disable>
87800db4:	e59d3004 	ldr	r3, [sp, #4]
87800db8:	e1a06000 	mov	r6, r0
87800dbc:	e3530000 	cmp	r3, #0
87800dc0:	da000005 	ble	87800ddc <rt_mb_send_wait+0xd0>
87800dc4:	ebfffd28 	bl	8780026c <rt_tick_get>
87800dc8:	e59d3004 	ldr	r3, [sp, #4]
87800dcc:	e0655000 	rsb	r5, r5, r0
87800dd0:	e0533005 	subs	r3, r3, r5
87800dd4:	43a03000 	movmi	r3, #0
87800dd8:	e58d3004 	str	r3, [sp, #4]
87800ddc:	e1d422b2 	ldrh	r2, [r4, #34]	; 0x22
87800de0:	e1d412b0 	ldrh	r1, [r4, #32]
87800de4:	e1520001 	cmp	r2, r1
87800de8:	1a000007 	bne	87800e0c <rt_mb_send_wait+0x100>
87800dec:	e59d3004 	ldr	r3, [sp, #4]
87800df0:	e587a030 	str	sl, [r7, #48]	; 0x30
87800df4:	e3530000 	cmp	r3, #0
87800df8:	1affffd7 	bne	87800d5c <rt_mb_send_wait+0x50>
87800dfc:	e1a00006 	mov	r0, r6
87800e00:	ebfffd11 	bl	8780024c <rt_hw_interrupt_enable>
87800e04:	e3e00002 	mvn	r0, #2
87800e08:	ea000014 	b	87800e60 <rt_mb_send_wait+0x154>
87800e0c:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87800e10:	e2822001 	add	r2, r2, #1
87800e14:	e594001c 	ldr	r0, [r4, #28]
87800e18:	e7809103 	str	r9, [r0, r3, lsl #2]
87800e1c:	e2833001 	add	r3, r3, #1
87800e20:	e1c422b2 	strh	r2, [r4, #34]	; 0x22
87800e24:	e6ff3073 	uxth	r3, r3
87800e28:	e1530001 	cmp	r3, r1
87800e2c:	23a03000 	movcs	r3, #0
87800e30:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87800e34:	e5b40014 	ldr	r0, [r4, #20]!
87800e38:	e1500004 	cmp	r0, r4
87800e3c:	0a000004 	beq	87800e54 <rt_mb_send_wait+0x148>
87800e40:	ebfffd4a 	bl	87800370 <rt_ipc_list_resume.isra.0>
87800e44:	e1a00006 	mov	r0, r6
87800e48:	ebfffcff 	bl	8780024c <rt_hw_interrupt_enable>
87800e4c:	eb000742 	bl	87802b5c <rt_schedule>
87800e50:	ea000001 	b	87800e5c <rt_mb_send_wait+0x150>
87800e54:	e1a00006 	mov	r0, r6
87800e58:	ebfffcfb 	bl	8780024c <rt_hw_interrupt_enable>
87800e5c:	e3a00000 	mov	r0, #0
87800e60:	e28dd00c 	add	sp, sp, #12
87800e64:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87800e68 <rt_mb_send>:
87800e68:	e3a02000 	mov	r2, #0
87800e6c:	eaffffa6 	b	87800d0c <rt_mb_send_wait>

87800e70 <rt_mb_recv>:
87800e70:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87800e74:	e1a04000 	mov	r4, r0
87800e78:	e58d2004 	str	r2, [sp, #4]
87800e7c:	e1a09001 	mov	r9, r1
87800e80:	eb000807 	bl	87802ea4 <rt_thread_self>
87800e84:	e1a07000 	mov	r7, r0
87800e88:	ebfffcf0 	bl	87800250 <rt_hw_interrupt_disable>
87800e8c:	e1d4b2b2 	ldrh	fp, [r4, #34]	; 0x22
87800e90:	e1a05000 	mov	r5, r0
87800e94:	e35b0000 	cmp	fp, #0
87800e98:	1a000034 	bne	87800f70 <rt_mb_recv+0x100>
87800e9c:	e59d3004 	ldr	r3, [sp, #4]
87800ea0:	e3530000 	cmp	r3, #0
87800ea4:	11a0600b 	movne	r6, fp
87800ea8:	1284a014 	addne	sl, r4, #20
87800eac:	1287804c 	addne	r8, r7, #76	; 0x4c
87800eb0:	1a000022 	bne	87800f40 <rt_mb_recv+0xd0>
87800eb4:	ebfffce4 	bl	8780024c <rt_hw_interrupt_enable>
87800eb8:	e3e00001 	mvn	r0, #1
87800ebc:	ea000043 	b	87800fd0 <rt_mb_recv+0x160>
87800ec0:	e5d42009 	ldrb	r2, [r4, #9]
87800ec4:	e1a01007 	mov	r1, r7
87800ec8:	e1a0000a 	mov	r0, sl
87800ecc:	ebfffd2c 	bl	87800384 <rt_ipc_list_suspend>
87800ed0:	e59d3004 	ldr	r3, [sp, #4]
87800ed4:	e3530000 	cmp	r3, #0
87800ed8:	da000007 	ble	87800efc <rt_mb_recv+0x8c>
87800edc:	ebfffce2 	bl	8780026c <rt_tick_get>
87800ee0:	e1a06000 	mov	r6, r0
87800ee4:	e28d2004 	add	r2, sp, #4
87800ee8:	e1a0100b 	mov	r1, fp
87800eec:	e1a00008 	mov	r0, r8
87800ef0:	eb000999 	bl	8780355c <rt_timer_control>
87800ef4:	e1a00008 	mov	r0, r8
87800ef8:	eb000957 	bl	8780345c <rt_timer_start>
87800efc:	e1a00005 	mov	r0, r5
87800f00:	ebfffcd1 	bl	8780024c <rt_hw_interrupt_enable>
87800f04:	eb000714 	bl	87802b5c <rt_schedule>
87800f08:	e5970030 	ldr	r0, [r7, #48]	; 0x30
87800f0c:	e3500000 	cmp	r0, #0
87800f10:	1a00002e 	bne	87800fd0 <rt_mb_recv+0x160>
87800f14:	ebfffccd 	bl	87800250 <rt_hw_interrupt_disable>
87800f18:	e59d3004 	ldr	r3, [sp, #4]
87800f1c:	e1a05000 	mov	r5, r0
87800f20:	e3530000 	cmp	r3, #0
87800f24:	da000005 	ble	87800f40 <rt_mb_recv+0xd0>
87800f28:	ebfffccf 	bl	8780026c <rt_tick_get>
87800f2c:	e59d3004 	ldr	r3, [sp, #4]
87800f30:	e0666000 	rsb	r6, r6, r0
87800f34:	e0533006 	subs	r3, r3, r6
87800f38:	43a03000 	movmi	r3, #0
87800f3c:	e58d3004 	str	r3, [sp, #4]
87800f40:	e1d4b2b2 	ldrh	fp, [r4, #34]	; 0x22
87800f44:	e35b0000 	cmp	fp, #0
87800f48:	1a000008 	bne	87800f70 <rt_mb_recv+0x100>
87800f4c:	e59d3004 	ldr	r3, [sp, #4]
87800f50:	e587b030 	str	fp, [r7, #48]	; 0x30
87800f54:	e3530000 	cmp	r3, #0
87800f58:	1affffd8 	bne	87800ec0 <rt_mb_recv+0x50>
87800f5c:	e1a00005 	mov	r0, r5
87800f60:	ebfffcb9 	bl	8780024c <rt_hw_interrupt_enable>
87800f64:	e3e00001 	mvn	r0, #1
87800f68:	e5870030 	str	r0, [r7, #48]	; 0x30
87800f6c:	ea000017 	b	87800fd0 <rt_mb_recv+0x160>
87800f70:	e1d432b6 	ldrh	r3, [r4, #38]	; 0x26
87800f74:	e24bb001 	sub	fp, fp, #1
87800f78:	e594201c 	ldr	r2, [r4, #28]
87800f7c:	e7922103 	ldr	r2, [r2, r3, lsl #2]
87800f80:	e2833001 	add	r3, r3, #1
87800f84:	e6ff3073 	uxth	r3, r3
87800f88:	e5892000 	str	r2, [r9]
87800f8c:	e1d422b0 	ldrh	r2, [r4, #32]
87800f90:	e1c432b6 	strh	r3, [r4, #38]	; 0x26
87800f94:	e1520003 	cmp	r2, r3
87800f98:	e1c4b2b2 	strh	fp, [r4, #34]	; 0x22
87800f9c:	93a03000 	movls	r3, #0
87800fa0:	91c432b6 	strhls	r3, [r4, #38]	; 0x26
87800fa4:	e5b40028 	ldr	r0, [r4, #40]!	; 0x28
87800fa8:	e1500004 	cmp	r0, r4
87800fac:	0a000004 	beq	87800fc4 <rt_mb_recv+0x154>
87800fb0:	ebfffcee 	bl	87800370 <rt_ipc_list_resume.isra.0>
87800fb4:	e1a00005 	mov	r0, r5
87800fb8:	ebfffca3 	bl	8780024c <rt_hw_interrupt_enable>
87800fbc:	eb0006e6 	bl	87802b5c <rt_schedule>
87800fc0:	ea000001 	b	87800fcc <rt_mb_recv+0x15c>
87800fc4:	e1a00005 	mov	r0, r5
87800fc8:	ebfffc9f 	bl	8780024c <rt_hw_interrupt_enable>
87800fcc:	e3a00000 	mov	r0, #0
87800fd0:	e28dd00c 	add	sp, sp, #12
87800fd4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87800fd8 <rt_mb_control>:
87800fd8:	e3510001 	cmp	r1, #1
87800fdc:	1a000010 	bne	87801024 <rt_mb_control+0x4c>
87800fe0:	e92d4070 	push	{r4, r5, r6, lr}
87800fe4:	e1a05000 	mov	r5, r0
87800fe8:	e3a04000 	mov	r4, #0
87800fec:	ebfffc97 	bl	87800250 <rt_hw_interrupt_disable>
87800ff0:	e1a06000 	mov	r6, r0
87800ff4:	e2850014 	add	r0, r5, #20
87800ff8:	ebfffccb 	bl	8780032c <rt_ipc_list_resume_all>
87800ffc:	e2850028 	add	r0, r5, #40	; 0x28
87801000:	ebfffcc9 	bl	8780032c <rt_ipc_list_resume_all>
87801004:	e1c542b2 	strh	r4, [r5, #34]	; 0x22
87801008:	e1a00006 	mov	r0, r6
8780100c:	e1c542b4 	strh	r4, [r5, #36]	; 0x24
87801010:	e1c542b6 	strh	r4, [r5, #38]	; 0x26
87801014:	ebfffc8c 	bl	8780024c <rt_hw_interrupt_enable>
87801018:	eb0006cf 	bl	87802b5c <rt_schedule>
8780101c:	e1a00004 	mov	r0, r4
87801020:	e8bd8070 	pop	{r4, r5, r6, pc}
87801024:	e3e00000 	mvn	r0, #0
87801028:	e12fff1e 	bx	lr

8780102c <rt_mq_init>:
8780102c:	e92d4070 	push	{r4, r5, r6, lr}
87801030:	e1a05003 	mov	r5, r3
87801034:	e1a06002 	mov	r6, r2
87801038:	e2855003 	add	r5, r5, #3
8780103c:	e3c55003 	bic	r5, r5, #3
87801040:	e1a02001 	mov	r2, r1
87801044:	e3a01006 	mov	r1, #6
87801048:	e1a04000 	mov	r4, r0
8780104c:	e6ff5075 	uxth	r5, r5
87801050:	eb0005db 	bl	878027c4 <rt_object_init>
87801054:	e5dd3014 	ldrb	r3, [sp, #20]
87801058:	e1c452b0 	strh	r5, [r4, #32]
8780105c:	e2855004 	add	r5, r5, #4
87801060:	e5c43009 	strb	r3, [r4, #9]
87801064:	e2843014 	add	r3, r4, #20
87801068:	e5843018 	str	r3, [r4, #24]
8780106c:	e1a01005 	mov	r1, r5
87801070:	e5843014 	str	r3, [r4, #20]
87801074:	e584601c 	str	r6, [r4, #28]
87801078:	e59d0010 	ldr	r0, [sp, #16]
8780107c:	fa0009b9 	blx	87803768 <__aeabi_uidiv>
87801080:	e1c402b2 	strh	r0, [r4, #34]	; 0x22
87801084:	e1a02006 	mov	r2, r6
87801088:	e6ff0070 	uxth	r0, r0
8780108c:	e3a03000 	mov	r3, #0
87801090:	e5843028 	str	r3, [r4, #40]	; 0x28
87801094:	e584302c 	str	r3, [r4, #44]	; 0x2c
87801098:	e5843030 	str	r3, [r4, #48]	; 0x30
8780109c:	e1530000 	cmp	r3, r0
878010a0:	aa000005 	bge	878010bc <rt_mq_init+0x90>
878010a4:	e5941030 	ldr	r1, [r4, #48]	; 0x30
878010a8:	e2833001 	add	r3, r3, #1
878010ac:	e5821000 	str	r1, [r2]
878010b0:	e5842030 	str	r2, [r4, #48]	; 0x30
878010b4:	e0822005 	add	r2, r2, r5
878010b8:	eafffff7 	b	8780109c <rt_mq_init+0x70>
878010bc:	e2843034 	add	r3, r4, #52	; 0x34
878010c0:	e3a00000 	mov	r0, #0
878010c4:	e1c402b4 	strh	r0, [r4, #36]	; 0x24
878010c8:	e5843038 	str	r3, [r4, #56]	; 0x38
878010cc:	e5843034 	str	r3, [r4, #52]	; 0x34
878010d0:	e8bd8070 	pop	{r4, r5, r6, pc}

878010d4 <rt_mq_detach>:
878010d4:	e92d4010 	push	{r4, lr}
878010d8:	e1a04000 	mov	r4, r0
878010dc:	e2800014 	add	r0, r0, #20
878010e0:	ebfffc91 	bl	8780032c <rt_ipc_list_resume_all>
878010e4:	e2840034 	add	r0, r4, #52	; 0x34
878010e8:	ebfffc8f 	bl	8780032c <rt_ipc_list_resume_all>
878010ec:	e1a00004 	mov	r0, r4
878010f0:	eb0005d1 	bl	8780283c <rt_object_detach>
878010f4:	e3a00000 	mov	r0, #0
878010f8:	e8bd8010 	pop	{r4, pc}

878010fc <rt_mq_delete>:
878010fc:	e92d4010 	push	{r4, lr}
87801100:	e1a04000 	mov	r4, r0
87801104:	e2800014 	add	r0, r0, #20
87801108:	ebfffc87 	bl	8780032c <rt_ipc_list_resume_all>
8780110c:	e2840034 	add	r0, r4, #52	; 0x34
87801110:	ebfffc85 	bl	8780032c <rt_ipc_list_resume_all>
87801114:	e594001c 	ldr	r0, [r4, #28]
87801118:	eb000515 	bl	87802574 <rt_free>
8780111c:	e1a00004 	mov	r0, r4
87801120:	eb0005f1 	bl	878028ec <rt_object_delete>
87801124:	e3a00000 	mov	r0, #0
87801128:	e8bd8010 	pop	{r4, pc}

8780112c <rt_mq_create>:
8780112c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87801130:	e1a05001 	mov	r5, r1
87801134:	e1a01000 	mov	r1, r0
87801138:	e3a00006 	mov	r0, #6
8780113c:	e1a06002 	mov	r6, r2
87801140:	e1a07003 	mov	r7, r3
87801144:	eb0005cb 	bl	87802878 <rt_object_allocate>
87801148:	e2504000 	subs	r4, r0, #0
8780114c:	0a000029 	beq	878011f8 <rt_mq_create+0xcc>
87801150:	e1c462b2 	strh	r6, [r4, #34]	; 0x22
87801154:	e2850003 	add	r0, r5, #3
87801158:	e3c00003 	bic	r0, r0, #3
8780115c:	e2843014 	add	r3, r4, #20
87801160:	e5843018 	str	r3, [r4, #24]
87801164:	e6ff0070 	uxth	r0, r0
87801168:	e1c402b0 	strh	r0, [r4, #32]
8780116c:	e6ff6076 	uxth	r6, r6
87801170:	e5843014 	str	r3, [r4, #20]
87801174:	e2800004 	add	r0, r0, #4
87801178:	e5c47009 	strb	r7, [r4, #9]
8780117c:	e0000096 	mul	r0, r6, r0
87801180:	eb00048d 	bl	878023bc <rt_malloc>
87801184:	e584001c 	str	r0, [r4, #28]
87801188:	e3500000 	cmp	r0, #0
8780118c:	e1a05000 	mov	r5, r0
87801190:	e3a03000 	mov	r3, #0
87801194:	1a000003 	bne	878011a8 <rt_mq_create+0x7c>
87801198:	e1a00004 	mov	r0, r4
8780119c:	ebffffd6 	bl	878010fc <rt_mq_delete>
878011a0:	e1a00005 	mov	r0, r5
878011a4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878011a8:	e1d412b2 	ldrh	r1, [r4, #34]	; 0x22
878011ac:	e5843028 	str	r3, [r4, #40]	; 0x28
878011b0:	e584302c 	str	r3, [r4, #44]	; 0x2c
878011b4:	e5843030 	str	r3, [r4, #48]	; 0x30
878011b8:	e1530001 	cmp	r3, r1
878011bc:	aa000008 	bge	878011e4 <rt_mq_create+0xb8>
878011c0:	e1d422b0 	ldrh	r2, [r4, #32]
878011c4:	e594c030 	ldr	ip, [r4, #48]	; 0x30
878011c8:	e2822004 	add	r2, r2, #4
878011cc:	e0020293 	mul	r2, r3, r2
878011d0:	e2833001 	add	r3, r3, #1
878011d4:	e0850002 	add	r0, r5, r2
878011d8:	e785c002 	str	ip, [r5, r2]
878011dc:	e5840030 	str	r0, [r4, #48]	; 0x30
878011e0:	eafffff4 	b	878011b8 <rt_mq_create+0x8c>
878011e4:	e3a03000 	mov	r3, #0
878011e8:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
878011ec:	e2843034 	add	r3, r4, #52	; 0x34
878011f0:	e5843038 	str	r3, [r4, #56]	; 0x38
878011f4:	e5843034 	str	r3, [r4, #52]	; 0x34
878011f8:	e1a00004 	mov	r0, r4
878011fc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

87801200 <rt_mq_send_wait>:
87801200:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801204:	e58d3004 	str	r3, [sp, #4]
87801208:	e1d032b0 	ldrh	r3, [r0, #32]
8780120c:	e1530002 	cmp	r3, r2
87801210:	33e00000 	mvncc	r0, #0
87801214:	3a00005d 	bcc	87801390 <rt_mq_send_wait+0x190>
87801218:	e58d2000 	str	r2, [sp]
8780121c:	e1a04000 	mov	r4, r0
87801220:	e1a09001 	mov	r9, r1
87801224:	eb00071e 	bl	87802ea4 <rt_thread_self>
87801228:	e1a08000 	mov	r8, r0
8780122c:	ebfffc07 	bl	87800250 <rt_hw_interrupt_disable>
87801230:	e59d5004 	ldr	r5, [sp, #4]
87801234:	e1a07000 	mov	r7, r0
87801238:	e5943030 	ldr	r3, [r4, #48]	; 0x30
8780123c:	e3530000 	cmp	r3, #0
87801240:	03550000 	cmpeq	r5, #0
87801244:	03a05001 	moveq	r5, #1
87801248:	13a05000 	movne	r5, #0
8780124c:	1284b034 	addne	fp, r4, #52	; 0x34
87801250:	1288a04c 	addne	sl, r8, #76	; 0x4c
87801254:	1a000020 	bne	878012dc <rt_mq_send_wait+0xdc>
87801258:	ea000027 	b	878012fc <rt_mq_send_wait+0xfc>
8780125c:	e5d42009 	ldrb	r2, [r4, #9]
87801260:	e1a01008 	mov	r1, r8
87801264:	e1a0000b 	mov	r0, fp
87801268:	ebfffc45 	bl	87800384 <rt_ipc_list_suspend>
8780126c:	e59d2004 	ldr	r2, [sp, #4]
87801270:	e3520000 	cmp	r2, #0
87801274:	da000007 	ble	87801298 <rt_mq_send_wait+0x98>
87801278:	ebfffbfb 	bl	8780026c <rt_tick_get>
8780127c:	e1a05000 	mov	r5, r0
87801280:	e28d2004 	add	r2, sp, #4
87801284:	e1a01006 	mov	r1, r6
87801288:	e1a0000a 	mov	r0, sl
8780128c:	eb0008b2 	bl	8780355c <rt_timer_control>
87801290:	e1a0000a 	mov	r0, sl
87801294:	eb000870 	bl	8780345c <rt_timer_start>
87801298:	e1a00007 	mov	r0, r7
8780129c:	ebfffbea 	bl	8780024c <rt_hw_interrupt_enable>
878012a0:	eb00062d 	bl	87802b5c <rt_schedule>
878012a4:	e5980030 	ldr	r0, [r8, #48]	; 0x30
878012a8:	e3500000 	cmp	r0, #0
878012ac:	1a000037 	bne	87801390 <rt_mq_send_wait+0x190>
878012b0:	ebfffbe6 	bl	87800250 <rt_hw_interrupt_disable>
878012b4:	e59d3004 	ldr	r3, [sp, #4]
878012b8:	e1a07000 	mov	r7, r0
878012bc:	e3530000 	cmp	r3, #0
878012c0:	da000005 	ble	878012dc <rt_mq_send_wait+0xdc>
878012c4:	ebfffbe8 	bl	8780026c <rt_tick_get>
878012c8:	e59d3004 	ldr	r3, [sp, #4]
878012cc:	e0655000 	rsb	r5, r5, r0
878012d0:	e0533005 	subs	r3, r3, r5
878012d4:	43a03000 	movmi	r3, #0
878012d8:	e58d3004 	str	r3, [sp, #4]
878012dc:	e5946030 	ldr	r6, [r4, #48]	; 0x30
878012e0:	e3560000 	cmp	r6, #0
878012e4:	1a000007 	bne	87801308 <rt_mq_send_wait+0x108>
878012e8:	e59d2004 	ldr	r2, [sp, #4]
878012ec:	e5886030 	str	r6, [r8, #48]	; 0x30
878012f0:	e3520000 	cmp	r2, #0
878012f4:	1affffd8 	bne	8780125c <rt_mq_send_wait+0x5c>
878012f8:	e1a00007 	mov	r0, r7
878012fc:	ebfffbd2 	bl	8780024c <rt_hw_interrupt_enable>
87801300:	e3e00002 	mvn	r0, #2
87801304:	ea000021 	b	87801390 <rt_mq_send_wait+0x190>
87801308:	e5962000 	ldr	r2, [r6]
8780130c:	e1a00007 	mov	r0, r7
87801310:	e5842030 	str	r2, [r4, #48]	; 0x30
87801314:	ebfffbcc 	bl	8780024c <rt_hw_interrupt_enable>
87801318:	e1a00006 	mov	r0, r6
8780131c:	e3a02000 	mov	r2, #0
87801320:	e1a01009 	mov	r1, r9
87801324:	e4802004 	str	r2, [r0], #4
87801328:	e59d2000 	ldr	r2, [sp]
8780132c:	eb0001c3 	bl	87801a40 <rt_memcpy>
87801330:	ebfffbc6 	bl	87800250 <rt_hw_interrupt_disable>
87801334:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87801338:	e1a05000 	mov	r5, r0
8780133c:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
87801340:	e5940014 	ldr	r0, [r4, #20]
87801344:	e3520000 	cmp	r2, #0
87801348:	15826000 	strne	r6, [r2]
8780134c:	e2833001 	add	r3, r3, #1
87801350:	e5942028 	ldr	r2, [r4, #40]	; 0x28
87801354:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87801358:	e2843014 	add	r3, r4, #20
8780135c:	e584602c 	str	r6, [r4, #44]	; 0x2c
87801360:	e3520000 	cmp	r2, #0
87801364:	05846028 	streq	r6, [r4, #40]	; 0x28
87801368:	e1500003 	cmp	r0, r3
8780136c:	0a000004 	beq	87801384 <rt_mq_send_wait+0x184>
87801370:	ebfffbfe 	bl	87800370 <rt_ipc_list_resume.isra.0>
87801374:	e1a00005 	mov	r0, r5
87801378:	ebfffbb3 	bl	8780024c <rt_hw_interrupt_enable>
8780137c:	eb0005f6 	bl	87802b5c <rt_schedule>
87801380:	ea000001 	b	8780138c <rt_mq_send_wait+0x18c>
87801384:	e1a00005 	mov	r0, r5
87801388:	ebfffbaf 	bl	8780024c <rt_hw_interrupt_enable>
8780138c:	e3a00000 	mov	r0, #0
87801390:	e28dd00c 	add	sp, sp, #12
87801394:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

87801398 <rt_mq_send>:
87801398:	e3a03000 	mov	r3, #0
8780139c:	eaffff97 	b	87801200 <rt_mq_send_wait>

878013a0 <rt_mq_urgent>:
878013a0:	e1d032b0 	ldrh	r3, [r0, #32]
878013a4:	e1530002 	cmp	r3, r2
878013a8:	3a00002a 	bcc	87801458 <rt_mq_urgent+0xb8>
878013ac:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878013b0:	e1a04000 	mov	r4, r0
878013b4:	e1a06002 	mov	r6, r2
878013b8:	e1a08001 	mov	r8, r1
878013bc:	ebfffba3 	bl	87800250 <rt_hw_interrupt_disable>
878013c0:	e5945030 	ldr	r5, [r4, #48]	; 0x30
878013c4:	e3550000 	cmp	r5, #0
878013c8:	1a000002 	bne	878013d8 <rt_mq_urgent+0x38>
878013cc:	ebfffb9e 	bl	8780024c <rt_hw_interrupt_enable>
878013d0:	e3e00002 	mvn	r0, #2
878013d4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878013d8:	e1a07005 	mov	r7, r5
878013dc:	e4973004 	ldr	r3, [r7], #4
878013e0:	e5843030 	str	r3, [r4, #48]	; 0x30
878013e4:	ebfffb98 	bl	8780024c <rt_hw_interrupt_enable>
878013e8:	e1a02006 	mov	r2, r6
878013ec:	e1a01008 	mov	r1, r8
878013f0:	e1a00007 	mov	r0, r7
878013f4:	eb000191 	bl	87801a40 <rt_memcpy>
878013f8:	ebfffb94 	bl	87800250 <rt_hw_interrupt_disable>
878013fc:	e5943028 	ldr	r3, [r4, #40]	; 0x28
87801400:	e1a06000 	mov	r6, r0
87801404:	e5940014 	ldr	r0, [r4, #20]
87801408:	e5853000 	str	r3, [r5]
8780140c:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
87801410:	e5845028 	str	r5, [r4, #40]	; 0x28
87801414:	e3530000 	cmp	r3, #0
87801418:	e1d432b4 	ldrh	r3, [r4, #36]	; 0x24
8780141c:	0584502c 	streq	r5, [r4, #44]	; 0x2c
87801420:	e2833001 	add	r3, r3, #1
87801424:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87801428:	e2843014 	add	r3, r4, #20
8780142c:	e1500003 	cmp	r0, r3
87801430:	0a000004 	beq	87801448 <rt_mq_urgent+0xa8>
87801434:	ebfffbcd 	bl	87800370 <rt_ipc_list_resume.isra.0>
87801438:	e1a00006 	mov	r0, r6
8780143c:	ebfffb82 	bl	8780024c <rt_hw_interrupt_enable>
87801440:	eb0005c5 	bl	87802b5c <rt_schedule>
87801444:	ea000001 	b	87801450 <rt_mq_urgent+0xb0>
87801448:	e1a00006 	mov	r0, r6
8780144c:	ebfffb7e 	bl	8780024c <rt_hw_interrupt_enable>
87801450:	e3a00000 	mov	r0, #0
87801454:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87801458:	e3e00000 	mvn	r0, #0
8780145c:	e12fff1e 	bx	lr

87801460 <rt_mq_recv>:
87801460:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801464:	e1a04000 	mov	r4, r0
87801468:	e58d1000 	str	r1, [sp]
8780146c:	e1a07002 	mov	r7, r2
87801470:	e58d3004 	str	r3, [sp, #4]
87801474:	eb00068a 	bl	87802ea4 <rt_thread_self>
87801478:	e1a06000 	mov	r6, r0
8780147c:	ebfffb73 	bl	87800250 <rt_hw_interrupt_disable>
87801480:	e1d492b4 	ldrh	r9, [r4, #36]	; 0x24
87801484:	e1a0b000 	mov	fp, r0
87801488:	e3590000 	cmp	r9, #0
8780148c:	1a000034 	bne	87801564 <rt_mq_recv+0x104>
87801490:	e59d2004 	ldr	r2, [sp, #4]
87801494:	e3520000 	cmp	r2, #0
87801498:	11a05009 	movne	r5, r9
8780149c:	1284a014 	addne	sl, r4, #20
878014a0:	1286804c 	addne	r8, r6, #76	; 0x4c
878014a4:	1a000022 	bne	87801534 <rt_mq_recv+0xd4>
878014a8:	ebfffb67 	bl	8780024c <rt_hw_interrupt_enable>
878014ac:	e3e00001 	mvn	r0, #1
878014b0:	ea00004d 	b	878015ec <rt_mq_recv+0x18c>
878014b4:	e5d42009 	ldrb	r2, [r4, #9]
878014b8:	e1a01006 	mov	r1, r6
878014bc:	e1a0000a 	mov	r0, sl
878014c0:	ebfffbaf 	bl	87800384 <rt_ipc_list_suspend>
878014c4:	e59d2004 	ldr	r2, [sp, #4]
878014c8:	e3520000 	cmp	r2, #0
878014cc:	da000007 	ble	878014f0 <rt_mq_recv+0x90>
878014d0:	ebfffb65 	bl	8780026c <rt_tick_get>
878014d4:	e1a05000 	mov	r5, r0
878014d8:	e28d2004 	add	r2, sp, #4
878014dc:	e1a01009 	mov	r1, r9
878014e0:	e1a00008 	mov	r0, r8
878014e4:	eb00081c 	bl	8780355c <rt_timer_control>
878014e8:	e1a00008 	mov	r0, r8
878014ec:	eb0007da 	bl	8780345c <rt_timer_start>
878014f0:	e1a0000b 	mov	r0, fp
878014f4:	ebfffb54 	bl	8780024c <rt_hw_interrupt_enable>
878014f8:	eb000597 	bl	87802b5c <rt_schedule>
878014fc:	e5960030 	ldr	r0, [r6, #48]	; 0x30
87801500:	e3500000 	cmp	r0, #0
87801504:	1a000038 	bne	878015ec <rt_mq_recv+0x18c>
87801508:	ebfffb50 	bl	87800250 <rt_hw_interrupt_disable>
8780150c:	e59d3004 	ldr	r3, [sp, #4]
87801510:	e1a0b000 	mov	fp, r0
87801514:	e3530000 	cmp	r3, #0
87801518:	da000005 	ble	87801534 <rt_mq_recv+0xd4>
8780151c:	ebfffb52 	bl	8780026c <rt_tick_get>
87801520:	e59d3004 	ldr	r3, [sp, #4]
87801524:	e0655000 	rsb	r5, r5, r0
87801528:	e0533005 	subs	r3, r3, r5
8780152c:	43a03000 	movmi	r3, #0
87801530:	e58d3004 	str	r3, [sp, #4]
87801534:	e1d492b4 	ldrh	r9, [r4, #36]	; 0x24
87801538:	e3590000 	cmp	r9, #0
8780153c:	1a000008 	bne	87801564 <rt_mq_recv+0x104>
87801540:	e59d2004 	ldr	r2, [sp, #4]
87801544:	e5869030 	str	r9, [r6, #48]	; 0x30
87801548:	e3520000 	cmp	r2, #0
8780154c:	1affffd8 	bne	878014b4 <rt_mq_recv+0x54>
87801550:	e1a0000b 	mov	r0, fp
87801554:	ebfffb3c 	bl	8780024c <rt_hw_interrupt_enable>
87801558:	e3e00001 	mvn	r0, #1
8780155c:	e5860030 	str	r0, [r6, #48]	; 0x30
87801560:	ea000021 	b	878015ec <rt_mq_recv+0x18c>
87801564:	e5945028 	ldr	r5, [r4, #40]	; 0x28
87801568:	e2493001 	sub	r3, r9, #1
8780156c:	e1a0000b 	mov	r0, fp
87801570:	e5952000 	ldr	r2, [r5]
87801574:	e1c432b4 	strh	r3, [r4, #36]	; 0x24
87801578:	e5842028 	str	r2, [r4, #40]	; 0x28
8780157c:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87801580:	e1550002 	cmp	r5, r2
87801584:	03a02000 	moveq	r2, #0
87801588:	0584202c 	streq	r2, [r4, #44]	; 0x2c
8780158c:	ebfffb2e 	bl	8780024c <rt_hw_interrupt_enable>
87801590:	e1d422b0 	ldrh	r2, [r4, #32]
87801594:	e2851004 	add	r1, r5, #4
87801598:	e59d0000 	ldr	r0, [sp]
8780159c:	e1520007 	cmp	r2, r7
878015a0:	21a02007 	movcs	r2, r7
878015a4:	eb000125 	bl	87801a40 <rt_memcpy>
878015a8:	ebfffb28 	bl	87800250 <rt_hw_interrupt_disable>
878015ac:	e5943030 	ldr	r3, [r4, #48]	; 0x30
878015b0:	e2842034 	add	r2, r4, #52	; 0x34
878015b4:	e1a06000 	mov	r6, r0
878015b8:	e5853000 	str	r3, [r5]
878015bc:	e5943034 	ldr	r3, [r4, #52]	; 0x34
878015c0:	e5845030 	str	r5, [r4, #48]	; 0x30
878015c4:	e1530002 	cmp	r3, r2
878015c8:	0a000005 	beq	878015e4 <rt_mq_recv+0x184>
878015cc:	e1a00003 	mov	r0, r3
878015d0:	ebfffb66 	bl	87800370 <rt_ipc_list_resume.isra.0>
878015d4:	e1a00006 	mov	r0, r6
878015d8:	ebfffb1b 	bl	8780024c <rt_hw_interrupt_enable>
878015dc:	eb00055e 	bl	87802b5c <rt_schedule>
878015e0:	ea000000 	b	878015e8 <rt_mq_recv+0x188>
878015e4:	ebfffb18 	bl	8780024c <rt_hw_interrupt_enable>
878015e8:	e3a00000 	mov	r0, #0
878015ec:	e28dd00c 	add	sp, sp, #12
878015f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

878015f4 <rt_mq_control>:
878015f4:	e3510001 	cmp	r1, #1
878015f8:	1a00001a 	bne	87801668 <rt_mq_control+0x74>
878015fc:	e92d4070 	push	{r4, r5, r6, lr}
87801600:	e1a04000 	mov	r4, r0
87801604:	ebfffb11 	bl	87800250 <rt_hw_interrupt_disable>
87801608:	e1a06000 	mov	r6, r0
8780160c:	e2840014 	add	r0, r4, #20
87801610:	ebfffb45 	bl	8780032c <rt_ipc_list_resume_all>
87801614:	e2840034 	add	r0, r4, #52	; 0x34
87801618:	ebfffb43 	bl	8780032c <rt_ipc_list_resume_all>
8780161c:	e3a03000 	mov	r3, #0
87801620:	e5945028 	ldr	r5, [r4, #40]	; 0x28
87801624:	e3550000 	cmp	r5, #0
87801628:	0a000008 	beq	87801650 <rt_mq_control+0x5c>
8780162c:	e5952000 	ldr	r2, [r5]
87801630:	e5842028 	str	r2, [r4, #40]	; 0x28
87801634:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87801638:	e1550002 	cmp	r5, r2
8780163c:	e5942030 	ldr	r2, [r4, #48]	; 0x30
87801640:	0584302c 	streq	r3, [r4, #44]	; 0x2c
87801644:	e5852000 	str	r2, [r5]
87801648:	e5845030 	str	r5, [r4, #48]	; 0x30
8780164c:	eafffff3 	b	87801620 <rt_mq_control+0x2c>
87801650:	e1c452b4 	strh	r5, [r4, #36]	; 0x24
87801654:	e1a00006 	mov	r0, r6
87801658:	ebfffafb 	bl	8780024c <rt_hw_interrupt_enable>
8780165c:	eb00053e 	bl	87802b5c <rt_schedule>
87801660:	e1a00005 	mov	r0, r5
87801664:	e8bd8070 	pop	{r4, r5, r6, pc}
87801668:	e3e00000 	mvn	r0, #0
8780166c:	e12fff1e 	bx	lr

87801670 <rt_interrupt_enter>:
87801670:	e92d4010 	push	{r4, lr}
87801674:	ebfffaf5 	bl	87800250 <rt_hw_interrupt_disable>
87801678:	e59f2014 	ldr	r2, [pc, #20]	; 87801694 <rt_interrupt_enter+0x24>
8780167c:	e5d23000 	ldrb	r3, [r2]
87801680:	e2833001 	add	r3, r3, #1
87801684:	e6ef3073 	uxtb	r3, r3
87801688:	e5c23000 	strb	r3, [r2]
8780168c:	e8bd4010 	pop	{r4, lr}
87801690:	eafffaed 	b	8780024c <rt_hw_interrupt_enable>
87801694:	878043a8 	.word	0x878043a8

87801698 <rt_interrupt_leave>:
87801698:	e92d4010 	push	{r4, lr}
8780169c:	ebfffaeb 	bl	87800250 <rt_hw_interrupt_disable>
878016a0:	e59f2014 	ldr	r2, [pc, #20]	; 878016bc <rt_interrupt_leave+0x24>
878016a4:	e5d23000 	ldrb	r3, [r2]
878016a8:	e2433001 	sub	r3, r3, #1
878016ac:	e6ef3073 	uxtb	r3, r3
878016b0:	e5c23000 	strb	r3, [r2]
878016b4:	e8bd4010 	pop	{r4, lr}
878016b8:	eafffae3 	b	8780024c <rt_hw_interrupt_enable>
878016bc:	878043a8 	.word	0x878043a8

878016c0 <rt_interrupt_get_nest>:
878016c0:	e92d4010 	push	{r4, lr}
878016c4:	ebfffae1 	bl	87800250 <rt_hw_interrupt_disable>
878016c8:	e59f3010 	ldr	r3, [pc, #16]	; 878016e0 <rt_interrupt_get_nest+0x20>
878016cc:	e5d34000 	ldrb	r4, [r3]
878016d0:	ebfffadd 	bl	8780024c <rt_hw_interrupt_enable>
878016d4:	e6ef4074 	uxtb	r4, r4
878016d8:	e1a00004 	mov	r0, r4
878016dc:	e8bd8010 	pop	{r4, pc}
878016e0:	878043a8 	.word	0x878043a8

878016e4 <print_number>:
878016e4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
878016e8:	e24dd01c 	sub	sp, sp, #28
878016ec:	e1a07002 	mov	r7, r2
878016f0:	e1a04000 	mov	r4, r0
878016f4:	e59d6048 	ldr	r6, [sp, #72]	; 0x48
878016f8:	e1a09001 	mov	r9, r1
878016fc:	e59f21fc 	ldr	r2, [pc, #508]	; 87801900 <print_number+0x21c>
87801700:	e58d3004 	str	r3, [sp, #4]
87801704:	e3160040 	tst	r6, #64	; 0x40
87801708:	e282a014 	add	sl, r2, #20
8780170c:	11a0a002 	movne	sl, r2
87801710:	e3160010 	tst	r6, #16
87801714:	13c66001 	bicne	r6, r6, #1
87801718:	e3160001 	tst	r6, #1
8780171c:	13a0b030 	movne	fp, #48	; 0x30
87801720:	03a0b020 	moveq	fp, #32
87801724:	e2168002 	ands	r8, r6, #2
87801728:	0a000009 	beq	87801754 <print_number+0x70>
8780172c:	e3570000 	cmp	r7, #0
87801730:	b2677000 	rsblt	r7, r7, #0
87801734:	b3a0802d 	movlt	r8, #45	; 0x2d
87801738:	ba00000a 	blt	87801768 <print_number+0x84>
8780173c:	e3160004 	tst	r6, #4
87801740:	13a0802b 	movne	r8, #43	; 0x2b
87801744:	1a000002 	bne	87801754 <print_number+0x70>
87801748:	e3160008 	tst	r6, #8
8780174c:	13a08020 	movne	r8, #32
87801750:	03a08000 	moveq	r8, #0
87801754:	e3570000 	cmp	r7, #0
87801758:	03a03030 	moveq	r3, #48	; 0x30
8780175c:	03a05001 	moveq	r5, #1
87801760:	05cd3008 	strbeq	r3, [sp, #8]
87801764:	0a000012 	beq	878017b4 <print_number+0xd0>
87801768:	e3a05000 	mov	r5, #0
8780176c:	e1a00007 	mov	r0, r7
87801770:	e3a0100a 	mov	r1, #10
87801774:	e2855001 	add	r5, r5, #1
87801778:	fa000891 	blx	878039c4 <__aeabi_uidivmod>
8780177c:	e59dc004 	ldr	ip, [sp, #4]
87801780:	e207000f 	and	r0, r7, #15
87801784:	e59f3178 	ldr	r3, [pc, #376]	; 87801904 <print_number+0x220>
87801788:	e35c000a 	cmp	ip, #10
8780178c:	e0832397 	umull	r2, r3, r7, r3
87801790:	11a01000 	movne	r1, r0
87801794:	01a071a3 	lsreq	r7, r3, #3
87801798:	11a07227 	lsrne	r7, r7, #4
8780179c:	e28d3008 	add	r3, sp, #8
878017a0:	e083c005 	add	ip, r3, r5
878017a4:	e3570000 	cmp	r7, #0
878017a8:	e7da1001 	ldrb	r1, [sl, r1]
878017ac:	e54c1001 	strb	r1, [ip, #-1]
878017b0:	1affffed 	bne	8780176c <print_number+0x88>
878017b4:	e59d3044 	ldr	r3, [sp, #68]	; 0x44
878017b8:	e59d0040 	ldr	r0, [sp, #64]	; 0x40
878017bc:	e1550003 	cmp	r5, r3
878017c0:	a1a01005 	movge	r1, r5
878017c4:	b1a01003 	movlt	r1, r3
878017c8:	e3160011 	tst	r6, #17
878017cc:	e0610000 	rsb	r0, r1, r0
878017d0:	1a000010 	bne	87801818 <print_number+0x134>
878017d4:	e3580000 	cmp	r8, #0
878017d8:	13500000 	cmpne	r0, #0
878017dc:	e1a03004 	mov	r3, r4
878017e0:	c2400001 	subgt	r0, r0, #1
878017e4:	e3a0c020 	mov	ip, #32
878017e8:	e0632000 	rsb	r2, r3, r0
878017ec:	e0842002 	add	r2, r4, r2
878017f0:	e3520000 	cmp	r2, #0
878017f4:	da000003 	ble	87801808 <print_number+0x124>
878017f8:	e1530009 	cmp	r3, r9
878017fc:	e2833001 	add	r3, r3, #1
87801800:	3543c001 	strbcc	ip, [r3, #-1]
87801804:	eafffff7 	b	878017e8 <print_number+0x104>
87801808:	e1c03fc0 	bic	r3, r0, r0, asr #31
8780180c:	e2400001 	sub	r0, r0, #1
87801810:	e0844003 	add	r4, r4, r3
87801814:	e0630000 	rsb	r0, r3, r0
87801818:	e3580000 	cmp	r8, #0
8780181c:	0a000003 	beq	87801830 <print_number+0x14c>
87801820:	e1540009 	cmp	r4, r9
87801824:	e2400001 	sub	r0, r0, #1
87801828:	35c48000 	strbcc	r8, [r4]
8780182c:	e2844001 	add	r4, r4, #1
87801830:	e3160010 	tst	r6, #16
87801834:	01a03004 	moveq	r3, r4
87801838:	1a00000b 	bne	8780186c <print_number+0x188>
8780183c:	e0632000 	rsb	r2, r3, r0
87801840:	e0842002 	add	r2, r4, r2
87801844:	e3520000 	cmp	r2, #0
87801848:	da000003 	ble	8780185c <print_number+0x178>
8780184c:	e1530009 	cmp	r3, r9
87801850:	e2833001 	add	r3, r3, #1
87801854:	3543b001 	strbcc	fp, [r3, #-1]
87801858:	eafffff7 	b	8780183c <print_number+0x158>
8780185c:	e1c03fc0 	bic	r3, r0, r0, asr #31
87801860:	e2400001 	sub	r0, r0, #1
87801864:	e0844003 	add	r4, r4, r3
87801868:	e0630000 	rsb	r0, r3, r0
8780186c:	e1a03004 	mov	r3, r4
87801870:	e3a0c030 	mov	ip, #48	; 0x30
87801874:	e0632001 	rsb	r2, r3, r1
87801878:	e0842002 	add	r2, r4, r2
8780187c:	e1520005 	cmp	r2, r5
87801880:	da000003 	ble	87801894 <print_number+0x1b0>
87801884:	e1530009 	cmp	r3, r9
87801888:	e2833001 	add	r3, r3, #1
8780188c:	3543c001 	strbcc	ip, [r3, #-1]
87801890:	eafffff7 	b	87801874 <print_number+0x190>
87801894:	e59d2044 	ldr	r2, [sp, #68]	; 0x44
87801898:	e3520000 	cmp	r2, #0
8780189c:	13550000 	cmpne	r5, #0
878018a0:	da000007 	ble	878018c4 <print_number+0x1e0>
878018a4:	e1530009 	cmp	r3, r9
878018a8:	e2833001 	add	r3, r3, #1
878018ac:	328d2008 	addcc	r2, sp, #8
878018b0:	30822005 	addcc	r2, r2, r5
878018b4:	e2455001 	sub	r5, r5, #1
878018b8:	35522001 	ldrbcc	r2, [r2, #-1]
878018bc:	35432001 	strbcc	r2, [r3, #-1]
878018c0:	eafffff3 	b	87801894 <print_number+0x1b0>
878018c4:	e1a02003 	mov	r2, r3
878018c8:	e3a0c020 	mov	ip, #32
878018cc:	e0621000 	rsb	r1, r2, r0
878018d0:	e0831001 	add	r1, r3, r1
878018d4:	e3510000 	cmp	r1, #0
878018d8:	da000003 	ble	878018ec <print_number+0x208>
878018dc:	e1520009 	cmp	r2, r9
878018e0:	e2822001 	add	r2, r2, #1
878018e4:	3542c001 	strbcc	ip, [r2, #-1]
878018e8:	eafffff7 	b	878018cc <print_number+0x1e8>
878018ec:	e3500000 	cmp	r0, #0
878018f0:	a0830000 	addge	r0, r3, r0
878018f4:	b2830000 	addlt	r0, r3, #0
878018f8:	e28dd01c 	add	sp, sp, #28
878018fc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
87801900:	87803da8 	.word	0x87803da8
87801904:	cccccccd 	.word	0xcccccccd

87801908 <rt_get_errno>:
87801908:	e92d4010 	push	{r4, lr}
8780190c:	ebffff6b 	bl	878016c0 <rt_interrupt_get_nest>
87801910:	e3500000 	cmp	r0, #0
87801914:	1a000002 	bne	87801924 <rt_get_errno+0x1c>
87801918:	eb000561 	bl	87802ea4 <rt_thread_self>
8780191c:	e3500000 	cmp	r0, #0
87801920:	1a000002 	bne	87801930 <rt_get_errno+0x28>
87801924:	e59f300c 	ldr	r3, [pc, #12]	; 87801938 <rt_get_errno+0x30>
87801928:	e5930000 	ldr	r0, [r3]
8780192c:	e8bd8010 	pop	{r4, pc}
87801930:	e5900030 	ldr	r0, [r0, #48]	; 0x30
87801934:	e8bd8010 	pop	{r4, pc}
87801938:	878043ac 	.word	0x878043ac

8780193c <rt_set_errno>:
8780193c:	e92d4010 	push	{r4, lr}
87801940:	e1a04000 	mov	r4, r0
87801944:	ebffff5d 	bl	878016c0 <rt_interrupt_get_nest>
87801948:	e3500000 	cmp	r0, #0
8780194c:	1a000002 	bne	8780195c <rt_set_errno+0x20>
87801950:	eb000553 	bl	87802ea4 <rt_thread_self>
87801954:	e3500000 	cmp	r0, #0
87801958:	1a000002 	bne	87801968 <rt_set_errno+0x2c>
8780195c:	e59f300c 	ldr	r3, [pc, #12]	; 87801970 <rt_set_errno+0x34>
87801960:	e5834000 	str	r4, [r3]
87801964:	e8bd8010 	pop	{r4, pc}
87801968:	e5804030 	str	r4, [r0, #48]	; 0x30
8780196c:	e8bd8010 	pop	{r4, pc}
87801970:	878043ac 	.word	0x878043ac

87801974 <_rt_errno>:
87801974:	e92d4010 	push	{r4, lr}
87801978:	ebffff50 	bl	878016c0 <rt_interrupt_get_nest>
8780197c:	e3500000 	cmp	r0, #0
87801980:	0a000001 	beq	8780198c <_rt_errno+0x18>
87801984:	e59f0014 	ldr	r0, [pc, #20]	; 878019a0 <_rt_errno+0x2c>
87801988:	e8bd8010 	pop	{r4, pc}
8780198c:	eb000544 	bl	87802ea4 <rt_thread_self>
87801990:	e3500000 	cmp	r0, #0
87801994:	0afffffa 	beq	87801984 <_rt_errno+0x10>
87801998:	e2800030 	add	r0, r0, #48	; 0x30
8780199c:	e8bd8010 	pop	{r4, pc}
878019a0:	878043ac 	.word	0x878043ac

878019a4 <rt_memset>:
878019a4:	e3520003 	cmp	r2, #3
878019a8:	e92d4010 	push	{r4, lr}
878019ac:	9a00001d 	bls	87801a28 <rt_memset+0x84>
878019b0:	e3100003 	tst	r0, #3
878019b4:	1a00001b 	bne	87801a28 <rt_memset+0x84>
878019b8:	e6efc071 	uxtb	ip, r1
878019bc:	e2803010 	add	r3, r0, #16
878019c0:	e2824010 	add	r4, r2, #16
878019c4:	e18cc40c 	orr	ip, ip, ip, lsl #8
878019c8:	e18cc80c 	orr	ip, ip, ip, lsl #16
878019cc:	e063e004 	rsb	lr, r3, r4
878019d0:	e080e00e 	add	lr, r0, lr
878019d4:	e35e000f 	cmp	lr, #15
878019d8:	9a000005 	bls	878019f4 <rt_memset+0x50>
878019dc:	e503c010 	str	ip, [r3, #-16]
878019e0:	e2833010 	add	r3, r3, #16
878019e4:	e503c01c 	str	ip, [r3, #-28]	; 0xffffffe4
878019e8:	e503c018 	str	ip, [r3, #-24]	; 0xffffffe8
878019ec:	e503c014 	str	ip, [r3, #-20]	; 0xffffffec
878019f0:	eafffff5 	b	878019cc <rt_memset+0x28>
878019f4:	e1a03222 	lsr	r3, r2, #4
878019f8:	e0422203 	sub	r2, r2, r3, lsl #4
878019fc:	e0803203 	add	r3, r0, r3, lsl #4
87801a00:	e1a04003 	mov	r4, r3
87801a04:	e064e002 	rsb	lr, r4, r2
87801a08:	e083e00e 	add	lr, r3, lr
87801a0c:	e35e0003 	cmp	lr, #3
87801a10:	8484c004 	strhi	ip, [r4], #4
87801a14:	8afffffa 	bhi	87801a04 <rt_memset+0x60>
87801a18:	e1a0c122 	lsr	ip, r2, #2
87801a1c:	e042210c 	sub	r2, r2, ip, lsl #2
87801a20:	e083310c 	add	r3, r3, ip, lsl #2
87801a24:	ea000000 	b	87801a2c <rt_memset+0x88>
87801a28:	e1a03000 	mov	r3, r0
87801a2c:	e0832002 	add	r2, r3, r2
87801a30:	e1530002 	cmp	r3, r2
87801a34:	14c31001 	strbne	r1, [r3], #1
87801a38:	1afffffc 	bne	87801a30 <rt_memset+0x8c>
87801a3c:	e8bd8010 	pop	{r4, pc}

87801a40 <rt_memcpy>:
87801a40:	e352000f 	cmp	r2, #15
87801a44:	e1a03002 	mov	r3, r2
87801a48:	e92d4010 	push	{r4, lr}
87801a4c:	9a000027 	bls	87801af0 <rt_memcpy+0xb0>
87801a50:	e180c001 	orr	ip, r0, r1
87801a54:	e31c0003 	tst	ip, #3
87801a58:	02803010 	addeq	r3, r0, #16
87801a5c:	01a0c001 	moveq	ip, r1
87801a60:	02824010 	addeq	r4, r2, #16
87801a64:	1a000021 	bne	87801af0 <rt_memcpy+0xb0>
87801a68:	e063e004 	rsb	lr, r3, r4
87801a6c:	e28cc010 	add	ip, ip, #16
87801a70:	e080e00e 	add	lr, r0, lr
87801a74:	e35e000f 	cmp	lr, #15
87801a78:	9a000009 	bls	87801aa4 <rt_memcpy+0x64>
87801a7c:	e51ce010 	ldr	lr, [ip, #-16]
87801a80:	e2833010 	add	r3, r3, #16
87801a84:	e503e020 	str	lr, [r3, #-32]	; 0xffffffe0
87801a88:	e51ce00c 	ldr	lr, [ip, #-12]
87801a8c:	e503e01c 	str	lr, [r3, #-28]	; 0xffffffe4
87801a90:	e51ce008 	ldr	lr, [ip, #-8]
87801a94:	e503e018 	str	lr, [r3, #-24]	; 0xffffffe8
87801a98:	e51ce004 	ldr	lr, [ip, #-4]
87801a9c:	e503e014 	str	lr, [r3, #-20]	; 0xffffffec
87801aa0:	eafffff0 	b	87801a68 <rt_memcpy+0x28>
87801aa4:	e1a03222 	lsr	r3, r2, #4
87801aa8:	e1a0e203 	lsl	lr, r3, #4
87801aac:	e080c00e 	add	ip, r0, lr
87801ab0:	e081100e 	add	r1, r1, lr
87801ab4:	e24c4004 	sub	r4, ip, #4
87801ab8:	e0422203 	sub	r2, r2, r3, lsl #4
87801abc:	e1a0e001 	mov	lr, r1
87801ac0:	e06e3002 	rsb	r3, lr, r2
87801ac4:	e0813003 	add	r3, r1, r3
87801ac8:	e3530003 	cmp	r3, #3
87801acc:	c49e3004 	ldrgt	r3, [lr], #4
87801ad0:	c5a43004 	strgt	r3, [r4, #4]!
87801ad4:	cafffff9 	bgt	87801ac0 <rt_memcpy+0x80>
87801ad8:	e1a03122 	lsr	r3, r2, #2
87801adc:	e1a0e103 	lsl	lr, r3, #2
87801ae0:	e08cc00e 	add	ip, ip, lr
87801ae4:	e081100e 	add	r1, r1, lr
87801ae8:	e0423103 	sub	r3, r2, r3, lsl #2
87801aec:	ea000000 	b	87801af4 <rt_memcpy+0xb4>
87801af0:	e1a0c000 	mov	ip, r0
87801af4:	e0812003 	add	r2, r1, r3
87801af8:	e24cc001 	sub	ip, ip, #1
87801afc:	e1510002 	cmp	r1, r2
87801b00:	14d13001 	ldrbne	r3, [r1], #1
87801b04:	15ec3001 	strbne	r3, [ip, #1]!
87801b08:	1afffffb 	bne	87801afc <rt_memcpy+0xbc>
87801b0c:	e8bd8010 	pop	{r4, pc}

87801b10 <rt_memmove>:
87801b10:	e1500001 	cmp	r0, r1
87801b14:	e0813002 	add	r3, r1, r2
87801b18:	8a000001 	bhi	87801b24 <rt_memmove+0x14>
87801b1c:	e2402001 	sub	r2, r0, #1
87801b20:	ea000008 	b	87801b48 <rt_memmove+0x38>
87801b24:	e1500003 	cmp	r0, r3
87801b28:	30801002 	addcc	r1, r0, r2
87801b2c:	30632002 	rsbcc	r2, r3, r2
87801b30:	2afffff9 	bcs	87801b1c <rt_memmove+0xc>
87801b34:	e1730002 	cmn	r3, r2
87801b38:	1573c001 	ldrbne	ip, [r3, #-1]!
87801b3c:	1561c001 	strbne	ip, [r1, #-1]!
87801b40:	1afffffb 	bne	87801b34 <rt_memmove+0x24>
87801b44:	e12fff1e 	bx	lr
87801b48:	e1510003 	cmp	r1, r3
87801b4c:	14d1c001 	ldrbne	ip, [r1], #1
87801b50:	15e2c001 	strbne	ip, [r2, #1]!
87801b54:	1afffffb 	bne	87801b48 <rt_memmove+0x38>
87801b58:	e12fff1e 	bx	lr

87801b5c <rt_memcmp>:
87801b5c:	e0812002 	add	r2, r1, r2
87801b60:	e240c001 	sub	ip, r0, #1
87801b64:	e1510002 	cmp	r1, r2
87801b68:	0a000005 	beq	87801b84 <rt_memcmp+0x28>
87801b6c:	e5fc3001 	ldrb	r3, [ip, #1]!
87801b70:	e5d10000 	ldrb	r0, [r1]
87801b74:	e0530000 	subs	r0, r3, r0
87801b78:	112fff1e 	bxne	lr
87801b7c:	e2811001 	add	r1, r1, #1
87801b80:	eafffff7 	b	87801b64 <rt_memcmp+0x8>
87801b84:	e3a00000 	mov	r0, #0
87801b88:	e12fff1e 	bx	lr

87801b8c <rt_strcasecmp>:
87801b8c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87801b90:	e4d02001 	ldrb	r2, [r0], #1
87801b94:	e4d1c001 	ldrb	ip, [r1], #1
87801b98:	e242e041 	sub	lr, r2, #65	; 0x41
87801b9c:	e2823020 	add	r3, r2, #32
87801ba0:	e35e0019 	cmp	lr, #25
87801ba4:	e24ce041 	sub	lr, ip, #65	; 0x41
87801ba8:	81a03002 	movhi	r3, r2
87801bac:	e28c2020 	add	r2, ip, #32
87801bb0:	e35e0019 	cmp	lr, #25
87801bb4:	91a0c002 	movls	ip, r2
87801bb8:	e3530000 	cmp	r3, #0
87801bbc:	e06c2003 	rsb	r2, ip, r3
87801bc0:	e16f2f12 	clz	r2, r2
87801bc4:	e1a022a2 	lsr	r2, r2, #5
87801bc8:	03a02000 	moveq	r2, #0
87801bcc:	e3520000 	cmp	r2, #0
87801bd0:	1affffee 	bne	87801b90 <rt_strcasecmp+0x4>
87801bd4:	e06c0003 	rsb	r0, ip, r3
87801bd8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87801bdc <rt_strncpy>:
87801bdc:	e3520000 	cmp	r2, #0
87801be0:	012fff1e 	bxeq	lr
87801be4:	e1a0c000 	mov	ip, r0
87801be8:	e4d13001 	ldrb	r3, [r1], #1
87801bec:	e4cc3001 	strb	r3, [ip], #1
87801bf0:	e3530000 	cmp	r3, #0
87801bf4:	1a000003 	bne	87801c08 <rt_strncpy+0x2c>
87801bf8:	e2522001 	subs	r2, r2, #1
87801bfc:	14cc3001 	strbne	r3, [ip], #1
87801c00:	1afffffc 	bne	87801bf8 <rt_strncpy+0x1c>
87801c04:	e12fff1e 	bx	lr
87801c08:	e2522001 	subs	r2, r2, #1
87801c0c:	1afffff5 	bne	87801be8 <rt_strncpy+0xc>
87801c10:	e12fff1e 	bx	lr

87801c14 <rt_strncmp>:
87801c14:	e0812002 	add	r2, r1, r2
87801c18:	e2403001 	sub	r3, r0, #1
87801c1c:	e1510002 	cmp	r1, r2
87801c20:	0a000008 	beq	87801c48 <rt_strncmp+0x34>
87801c24:	e5f3c001 	ldrb	ip, [r3, #1]!
87801c28:	e4d10001 	ldrb	r0, [r1], #1
87801c2c:	e060000c 	rsb	r0, r0, ip
87801c30:	e6af0070 	sxtb	r0, r0
87801c34:	e3500000 	cmp	r0, #0
87801c38:	112fff1e 	bxne	lr
87801c3c:	e35c0000 	cmp	ip, #0
87801c40:	1afffff5 	bne	87801c1c <rt_strncmp+0x8>
87801c44:	e12fff1e 	bx	lr
87801c48:	e3a00000 	mov	r0, #0
87801c4c:	e12fff1e 	bx	lr

87801c50 <rt_strcmp>:
87801c50:	e2400001 	sub	r0, r0, #1
87801c54:	e5f03001 	ldrb	r3, [r0, #1]!
87801c58:	e1a02001 	mov	r2, r1
87801c5c:	e3530000 	cmp	r3, #0
87801c60:	0a000003 	beq	87801c74 <rt_strcmp+0x24>
87801c64:	e5d2c000 	ldrb	ip, [r2]
87801c68:	e2811001 	add	r1, r1, #1
87801c6c:	e15c0003 	cmp	ip, r3
87801c70:	0afffff7 	beq	87801c54 <rt_strcmp+0x4>
87801c74:	e5d20000 	ldrb	r0, [r2]
87801c78:	e0600003 	rsb	r0, r0, r3
87801c7c:	e12fff1e 	bx	lr

87801c80 <rt_strnlen>:
87801c80:	e1a03000 	mov	r3, r0
87801c84:	e5d32000 	ldrb	r2, [r3]
87801c88:	e3520000 	cmp	r2, #0
87801c8c:	e0602003 	rsb	r2, r0, r3
87801c90:	0a000002 	beq	87801ca0 <rt_strnlen+0x20>
87801c94:	e1520001 	cmp	r2, r1
87801c98:	32833001 	addcc	r3, r3, #1
87801c9c:	3afffff8 	bcc	87801c84 <rt_strnlen+0x4>
87801ca0:	e1a00002 	mov	r0, r2
87801ca4:	e12fff1e 	bx	lr

87801ca8 <rt_strlen>:
87801ca8:	e1a03000 	mov	r3, r0
87801cac:	e5d32000 	ldrb	r2, [r3]
87801cb0:	e2831001 	add	r1, r3, #1
87801cb4:	e3520000 	cmp	r2, #0
87801cb8:	11a03001 	movne	r3, r1
87801cbc:	1afffffa 	bne	87801cac <rt_strlen+0x4>
87801cc0:	e0600003 	rsb	r0, r0, r3
87801cc4:	e12fff1e 	bx	lr

87801cc8 <rt_strstr>:
87801cc8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
87801ccc:	e1a06000 	mov	r6, r0
87801cd0:	e1a00001 	mov	r0, r1
87801cd4:	e1a09001 	mov	r9, r1
87801cd8:	ebfffff2 	bl	87801ca8 <rt_strlen>
87801cdc:	e2507000 	subs	r7, r0, #0
87801ce0:	e1a00006 	mov	r0, r6
87801ce4:	0a000011 	beq	87801d30 <rt_strstr+0x68>
87801ce8:	ebffffee 	bl	87801ca8 <rt_strlen>
87801cec:	e1a08000 	mov	r8, r0
87801cf0:	e1a05000 	mov	r5, r0
87801cf4:	e1550007 	cmp	r5, r7
87801cf8:	e0650008 	rsb	r0, r5, r8
87801cfc:	e0864000 	add	r4, r6, r0
87801d00:	ba000008 	blt	87801d28 <rt_strstr+0x60>
87801d04:	e1a02007 	mov	r2, r7
87801d08:	e1a01009 	mov	r1, r9
87801d0c:	e1a00004 	mov	r0, r4
87801d10:	e2455001 	sub	r5, r5, #1
87801d14:	ebffff90 	bl	87801b5c <rt_memcmp>
87801d18:	e3500000 	cmp	r0, #0
87801d1c:	1afffff4 	bne	87801cf4 <rt_strstr+0x2c>
87801d20:	e1a00004 	mov	r0, r4
87801d24:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87801d28:	e3a00000 	mov	r0, #0
87801d2c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87801d30:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

87801d34 <rt_strdup>:
87801d34:	e92d4070 	push	{r4, r5, r6, lr}
87801d38:	e1a06000 	mov	r6, r0
87801d3c:	ebffffd9 	bl	87801ca8 <rt_strlen>
87801d40:	e2804001 	add	r4, r0, #1
87801d44:	e1a00004 	mov	r0, r4
87801d48:	eb00019b 	bl	878023bc <rt_malloc>
87801d4c:	e2505000 	subs	r5, r0, #0
87801d50:	0a000002 	beq	87801d60 <rt_strdup+0x2c>
87801d54:	e1a02004 	mov	r2, r4
87801d58:	e1a01006 	mov	r1, r6
87801d5c:	ebffff37 	bl	87801a40 <rt_memcpy>
87801d60:	e1a00005 	mov	r0, r5
87801d64:	e8bd8070 	pop	{r4, r5, r6, pc}

87801d68 <rt_show_version>:
87801d68:	e12fff1e 	bx	lr

87801d6c <rt_vsnprintf>:
87801d6c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
87801d70:	e1a06002 	mov	r6, r2
87801d74:	e0907001 	adds	r7, r0, r1
87801d78:	e24dd024 	sub	sp, sp, #36	; 0x24
87801d7c:	21e09000 	mvncs	r9, r0
87801d80:	e1a08000 	mov	r8, r0
87801d84:	e1a02003 	mov	r2, r3
87801d88:	23e07000 	mvncs	r7, #0
87801d8c:	31a09001 	movcc	r9, r1
87801d90:	e1a04000 	mov	r4, r0
87801d94:	e3a0a020 	mov	sl, #32
87801d98:	e5d63000 	ldrb	r3, [r6]
87801d9c:	e3530000 	cmp	r3, #0
87801da0:	0a0000ea 	beq	87802150 <rt_vsnprintf+0x3e4>
87801da4:	e3530025 	cmp	r3, #37	; 0x25
87801da8:	03a05000 	moveq	r5, #0
87801dac:	01a03006 	moveq	r3, r6
87801db0:	0a000005 	beq	87801dcc <rt_vsnprintf+0x60>
87801db4:	e1540007 	cmp	r4, r7
87801db8:	35c43000 	strbcc	r3, [r4]
87801dbc:	ea0000ba 	b	878020ac <rt_vsnprintf+0x340>
87801dc0:	e351002b 	cmp	r1, #43	; 0x2b
87801dc4:	03855004 	orreq	r5, r5, #4
87801dc8:	1a000004 	bne	87801de0 <rt_vsnprintf+0x74>
87801dcc:	e5f31001 	ldrb	r1, [r3, #1]!
87801dd0:	e351002d 	cmp	r1, #45	; 0x2d
87801dd4:	03855010 	orreq	r5, r5, #16
87801dd8:	1afffff8 	bne	87801dc0 <rt_vsnprintf+0x54>
87801ddc:	eafffffa 	b	87801dcc <rt_vsnprintf+0x60>
87801de0:	e3510020 	cmp	r1, #32
87801de4:	03855008 	orreq	r5, r5, #8
87801de8:	0afffff7 	beq	87801dcc <rt_vsnprintf+0x60>
87801dec:	e3510023 	cmp	r1, #35	; 0x23
87801df0:	03855020 	orreq	r5, r5, #32
87801df4:	0afffff4 	beq	87801dcc <rt_vsnprintf+0x60>
87801df8:	e3510030 	cmp	r1, #48	; 0x30
87801dfc:	03855001 	orreq	r5, r5, #1
87801e00:	0afffff1 	beq	87801dcc <rt_vsnprintf+0x60>
87801e04:	e2410030 	sub	r0, r1, #48	; 0x30
87801e08:	e3500009 	cmp	r0, #9
87801e0c:	91a0c003 	movls	ip, r3
87801e10:	93a01000 	movls	r1, #0
87801e14:	93a0e00a 	movls	lr, #10
87801e18:	8a000008 	bhi	87801e40 <rt_vsnprintf+0xd4>
87801e1c:	e1a0300c 	mov	r3, ip
87801e20:	e28cc001 	add	ip, ip, #1
87801e24:	e5d30000 	ldrb	r0, [r3]
87801e28:	e2406030 	sub	r6, r0, #48	; 0x30
87801e2c:	e3560009 	cmp	r6, #9
87801e30:	8a00000c 	bhi	87801e68 <rt_vsnprintf+0xfc>
87801e34:	e021019e 	mla	r1, lr, r1, r0
87801e38:	e2411030 	sub	r1, r1, #48	; 0x30
87801e3c:	eafffff6 	b	87801e1c <rt_vsnprintf+0xb0>
87801e40:	e351002a 	cmp	r1, #42	; 0x2a
87801e44:	13e01000 	mvnne	r1, #0
87801e48:	1a000006 	bne	87801e68 <rt_vsnprintf+0xfc>
87801e4c:	e5921000 	ldr	r1, [r2]
87801e50:	e2820004 	add	r0, r2, #4
87801e54:	e2833001 	add	r3, r3, #1
87801e58:	e1a02000 	mov	r2, r0
87801e5c:	e3510000 	cmp	r1, #0
87801e60:	b2611000 	rsblt	r1, r1, #0
87801e64:	b3855010 	orrlt	r5, r5, #16
87801e68:	e5d30000 	ldrb	r0, [r3]
87801e6c:	e350002e 	cmp	r0, #46	; 0x2e
87801e70:	11a06003 	movne	r6, r3
87801e74:	13e03000 	mvnne	r3, #0
87801e78:	1a000017 	bne	87801edc <rt_vsnprintf+0x170>
87801e7c:	e5d30001 	ldrb	r0, [r3, #1]
87801e80:	e2836001 	add	r6, r3, #1
87801e84:	e240c030 	sub	ip, r0, #48	; 0x30
87801e88:	e35c0009 	cmp	ip, #9
87801e8c:	91a00006 	movls	r0, r6
87801e90:	93a03000 	movls	r3, #0
87801e94:	93a0b00a 	movls	fp, #10
87801e98:	8a000008 	bhi	87801ec0 <rt_vsnprintf+0x154>
87801e9c:	e1a06000 	mov	r6, r0
87801ea0:	e2800001 	add	r0, r0, #1
87801ea4:	e5d6c000 	ldrb	ip, [r6]
87801ea8:	e24ce030 	sub	lr, ip, #48	; 0x30
87801eac:	e35e0009 	cmp	lr, #9
87801eb0:	8a000008 	bhi	87801ed8 <rt_vsnprintf+0x16c>
87801eb4:	e023c39b 	mla	r3, fp, r3, ip
87801eb8:	e2433030 	sub	r3, r3, #48	; 0x30
87801ebc:	eafffff6 	b	87801e9c <rt_vsnprintf+0x130>
87801ec0:	e350002a 	cmp	r0, #42	; 0x2a
87801ec4:	13a03000 	movne	r3, #0
87801ec8:	1a000003 	bne	87801edc <rt_vsnprintf+0x170>
87801ecc:	e2836002 	add	r6, r3, #2
87801ed0:	e2822004 	add	r2, r2, #4
87801ed4:	e5123004 	ldr	r3, [r2, #-4]
87801ed8:	e1c33fc3 	bic	r3, r3, r3, asr #31
87801edc:	e5d6c000 	ldrb	ip, [r6]
87801ee0:	e20c00fb 	and	r0, ip, #251	; 0xfb
87801ee4:	e3500068 	cmp	r0, #104	; 0x68
87801ee8:	02866001 	addeq	r6, r6, #1
87801eec:	13a0c000 	movne	ip, #0
87801ef0:	e5d60000 	ldrb	r0, [r6]
87801ef4:	e3500069 	cmp	r0, #105	; 0x69
87801ef8:	0a000070 	beq	878020c0 <rt_vsnprintf+0x354>
87801efc:	8a00000c 	bhi	87801f34 <rt_vsnprintf+0x1c8>
87801f00:	e3500058 	cmp	r0, #88	; 0x58
87801f04:	0a00006a 	beq	878020b4 <rt_vsnprintf+0x348>
87801f08:	8a000004 	bhi	87801f20 <rt_vsnprintf+0x1b4>
87801f0c:	e3500025 	cmp	r0, #37	; 0x25
87801f10:	1a00006c 	bne	878020c8 <rt_vsnprintf+0x35c>
87801f14:	e1540007 	cmp	r4, r7
87801f18:	35c40000 	strbcc	r0, [r4]
87801f1c:	ea000062 	b	878020ac <rt_vsnprintf+0x340>
87801f20:	e3500063 	cmp	r0, #99	; 0x63
87801f24:	0a000016 	beq	87801f84 <rt_vsnprintf+0x218>
87801f28:	e3500064 	cmp	r0, #100	; 0x64
87801f2c:	0a000063 	beq	878020c0 <rt_vsnprintf+0x354>
87801f30:	ea000064 	b	878020c8 <rt_vsnprintf+0x35c>
87801f34:	e3500073 	cmp	r0, #115	; 0x73
87801f38:	0a000028 	beq	87801fe0 <rt_vsnprintf+0x274>
87801f3c:	8a00000b 	bhi	87801f70 <rt_vsnprintf+0x204>
87801f40:	e350006f 	cmp	r0, #111	; 0x6f
87801f44:	0a00006e 	beq	87802104 <rt_vsnprintf+0x398>
87801f48:	e3500070 	cmp	r0, #112	; 0x70
87801f4c:	1a00005d 	bne	878020c8 <rt_vsnprintf+0x35c>
87801f50:	e3710001 	cmn	r1, #1
87801f54:	e282b004 	add	fp, r2, #4
87801f58:	03855001 	orreq	r5, r5, #1
87801f5c:	03a01008 	moveq	r1, #8
87801f60:	e88d002a 	stm	sp, {r1, r3, r5}
87801f64:	e5922000 	ldr	r2, [r2]
87801f68:	e3a03010 	mov	r3, #16
87801f6c:	ea000070 	b	87802134 <rt_vsnprintf+0x3c8>
87801f70:	e3500075 	cmp	r0, #117	; 0x75
87801f74:	0a000060 	beq	878020fc <rt_vsnprintf+0x390>
87801f78:	e3500078 	cmp	r0, #120	; 0x78
87801f7c:	0a00004d 	beq	878020b8 <rt_vsnprintf+0x34c>
87801f80:	ea000050 	b	878020c8 <rt_vsnprintf+0x35c>
87801f84:	e3150010 	tst	r5, #16
87801f88:	1a000006 	bne	87801fa8 <rt_vsnprintf+0x23c>
87801f8c:	e2411001 	sub	r1, r1, #1
87801f90:	e3510000 	cmp	r1, #0
87801f94:	da000003 	ble	87801fa8 <rt_vsnprintf+0x23c>
87801f98:	e1540007 	cmp	r4, r7
87801f9c:	e2844001 	add	r4, r4, #1
87801fa0:	3544a001 	strbcc	sl, [r4, #-1]
87801fa4:	eafffff8 	b	87801f8c <rt_vsnprintf+0x220>
87801fa8:	e1540007 	cmp	r4, r7
87801fac:	e2823004 	add	r3, r2, #4
87801fb0:	e2840001 	add	r0, r4, #1
87801fb4:	35922000 	ldrcc	r2, [r2]
87801fb8:	35c42000 	strbcc	r2, [r4]
87801fbc:	e2411001 	sub	r1, r1, #1
87801fc0:	e3510000 	cmp	r1, #0
87801fc4:	da000003 	ble	87801fd8 <rt_vsnprintf+0x26c>
87801fc8:	e1500007 	cmp	r0, r7
87801fcc:	e2800001 	add	r0, r0, #1
87801fd0:	3540a001 	strbcc	sl, [r0, #-1]
87801fd4:	eafffff8 	b	87801fbc <rt_vsnprintf+0x250>
87801fd8:	e1a02003 	mov	r2, r3
87801fdc:	ea000058 	b	87802144 <rt_vsnprintf+0x3d8>
87801fe0:	e58d3018 	str	r3, [sp, #24]
87801fe4:	e282b004 	add	fp, r2, #4
87801fe8:	e5922000 	ldr	r2, [r2]
87801fec:	e59f317c 	ldr	r3, [pc, #380]	; 87802170 <rt_vsnprintf+0x404>
87801ff0:	e58d101c 	str	r1, [sp, #28]
87801ff4:	e3520000 	cmp	r2, #0
87801ff8:	01a02003 	moveq	r2, r3
87801ffc:	e58d2014 	str	r2, [sp, #20]
87802000:	e1a00002 	mov	r0, r2
87802004:	ebffff27 	bl	87801ca8 <rt_strlen>
87802008:	e59d3018 	ldr	r3, [sp, #24]
8780200c:	e59d2014 	ldr	r2, [sp, #20]
87802010:	e59d101c 	ldr	r1, [sp, #28]
87802014:	e3530000 	cmp	r3, #0
87802018:	d3a0c000 	movle	ip, #0
8780201c:	c3a0c001 	movgt	ip, #1
87802020:	e1530000 	cmp	r3, r0
87802024:	a3a0c000 	movge	ip, #0
87802028:	e35c0000 	cmp	ip, #0
8780202c:	01a03000 	moveq	r3, r0
87802030:	e3150010 	tst	r5, #16
87802034:	1a000007 	bne	87802058 <rt_vsnprintf+0x2ec>
87802038:	e2411001 	sub	r1, r1, #1
8780203c:	e2810001 	add	r0, r1, #1
87802040:	e1500003 	cmp	r0, r3
87802044:	da000003 	ble	87802058 <rt_vsnprintf+0x2ec>
87802048:	e1540007 	cmp	r4, r7
8780204c:	e2844001 	add	r4, r4, #1
87802050:	3544a001 	strbcc	sl, [r4, #-1]
87802054:	eafffff7 	b	87802038 <rt_vsnprintf+0x2cc>
87802058:	e1a00004 	mov	r0, r4
8780205c:	e064c000 	rsb	ip, r4, r0
87802060:	e153000c 	cmp	r3, ip
87802064:	da000005 	ble	87802080 <rt_vsnprintf+0x314>
87802068:	e1500007 	cmp	r0, r7
8780206c:	e2822001 	add	r2, r2, #1
87802070:	e2800001 	add	r0, r0, #1
87802074:	3552c001 	ldrbcc	ip, [r2, #-1]
87802078:	3540c001 	strbcc	ip, [r0, #-1]
8780207c:	eafffff6 	b	8780205c <rt_vsnprintf+0x2f0>
87802080:	e3530000 	cmp	r3, #0
87802084:	a0844003 	addge	r4, r4, r3
87802088:	e1a00004 	mov	r0, r4
8780208c:	e0602001 	rsb	r2, r0, r1
87802090:	e0842002 	add	r2, r4, r2
87802094:	e1520003 	cmp	r2, r3
87802098:	da000028 	ble	87802140 <rt_vsnprintf+0x3d4>
8780209c:	e1500007 	cmp	r0, r7
878020a0:	e2800001 	add	r0, r0, #1
878020a4:	3540a001 	strbcc	sl, [r0, #-1]
878020a8:	eafffff7 	b	8780208c <rt_vsnprintf+0x320>
878020ac:	e2840001 	add	r0, r4, #1
878020b0:	ea000023 	b	87802144 <rt_vsnprintf+0x3d8>
878020b4:	e3855040 	orr	r5, r5, #64	; 0x40
878020b8:	e3a00010 	mov	r0, #16
878020bc:	ea000011 	b	87802108 <rt_vsnprintf+0x39c>
878020c0:	e3855002 	orr	r5, r5, #2
878020c4:	ea00000c 	b	878020fc <rt_vsnprintf+0x390>
878020c8:	e1540007 	cmp	r4, r7
878020cc:	e2840001 	add	r0, r4, #1
878020d0:	33a03025 	movcc	r3, #37	; 0x25
878020d4:	35c43000 	strbcc	r3, [r4]
878020d8:	e5d63000 	ldrb	r3, [r6]
878020dc:	e3530000 	cmp	r3, #0
878020e0:	0a000003 	beq	878020f4 <rt_vsnprintf+0x388>
878020e4:	e1570000 	cmp	r7, r0
878020e8:	e2840002 	add	r0, r4, #2
878020ec:	85c43001 	strbhi	r3, [r4, #1]
878020f0:	ea000013 	b	87802144 <rt_vsnprintf+0x3d8>
878020f4:	e2466001 	sub	r6, r6, #1
878020f8:	ea000011 	b	87802144 <rt_vsnprintf+0x3d8>
878020fc:	e3a0000a 	mov	r0, #10
87802100:	ea000000 	b	87802108 <rt_vsnprintf+0x39c>
87802104:	e3a00008 	mov	r0, #8
87802108:	e35c006c 	cmp	ip, #108	; 0x6c
8780210c:	e282b004 	add	fp, r2, #4
87802110:	e5922000 	ldr	r2, [r2]
87802114:	0a000004 	beq	8780212c <rt_vsnprintf+0x3c0>
87802118:	e35c0068 	cmp	ip, #104	; 0x68
8780211c:	1a000002 	bne	8780212c <rt_vsnprintf+0x3c0>
87802120:	e3150002 	tst	r5, #2
87802124:	06ff2072 	uxtheq	r2, r2
87802128:	16bf2072 	sxthne	r2, r2
8780212c:	e88d002a 	stm	sp, {r1, r3, r5}
87802130:	e1a03000 	mov	r3, r0
87802134:	e1a01007 	mov	r1, r7
87802138:	e1a00004 	mov	r0, r4
8780213c:	ebfffd68 	bl	878016e4 <print_number>
87802140:	e1a0200b 	mov	r2, fp
87802144:	e2866001 	add	r6, r6, #1
87802148:	e1a04000 	mov	r4, r0
8780214c:	eaffff11 	b	87801d98 <rt_vsnprintf+0x2c>
87802150:	e3590000 	cmp	r9, #0
87802154:	0a000002 	beq	87802164 <rt_vsnprintf+0x3f8>
87802158:	e1540007 	cmp	r4, r7
8780215c:	35c43000 	strbcc	r3, [r4]
87802160:	25473001 	strbcs	r3, [r7, #-1]
87802164:	e0680004 	rsb	r0, r8, r4
87802168:	e28dd024 	add	sp, sp, #36	; 0x24
8780216c:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
87802170:	87803ed0 	.word	0x87803ed0

87802174 <rt_snprintf>:
87802174:	e92d000c 	push	{r2, r3}
87802178:	e92d4007 	push	{r0, r1, r2, lr}
8780217c:	e28d3014 	add	r3, sp, #20
87802180:	e59d2010 	ldr	r2, [sp, #16]
87802184:	e58d3004 	str	r3, [sp, #4]
87802188:	ebfffef7 	bl	87801d6c <rt_vsnprintf>
8780218c:	e28dd00c 	add	sp, sp, #12
87802190:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
87802194:	e28dd008 	add	sp, sp, #8
87802198:	e12fff1e 	bx	lr

8780219c <rt_vsprintf>:
8780219c:	e1a03002 	mov	r3, r2
878021a0:	e1a02001 	mov	r2, r1
878021a4:	e3e01000 	mvn	r1, #0
878021a8:	eafffeef 	b	87801d6c <rt_vsnprintf>

878021ac <rt_sprintf>:
878021ac:	e92d000e 	push	{r1, r2, r3}
878021b0:	e92d4003 	push	{r0, r1, lr}
878021b4:	e28d2010 	add	r2, sp, #16
878021b8:	e59d100c 	ldr	r1, [sp, #12]
878021bc:	e58d2004 	str	r2, [sp, #4]
878021c0:	ebfffff5 	bl	8780219c <rt_vsprintf>
878021c4:	e28dd008 	add	sp, sp, #8
878021c8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
878021cc:	e28dd00c 	add	sp, sp, #12
878021d0:	e12fff1e 	bx	lr

878021d4 <rt_malloc_align>:
878021d4:	e2811003 	add	r1, r1, #3
878021d8:	e2800003 	add	r0, r0, #3
878021dc:	e92d4010 	push	{r4, lr}
878021e0:	e3c00003 	bic	r0, r0, #3
878021e4:	e3c14003 	bic	r4, r1, #3
878021e8:	e0800004 	add	r0, r0, r4
878021ec:	eb000072 	bl	878023bc <rt_malloc>
878021f0:	e3500000 	cmp	r0, #0
878021f4:	08bd8010 	popeq	{r4, pc}
878021f8:	e2443001 	sub	r3, r4, #1
878021fc:	e1a02000 	mov	r2, r0
87802200:	e1100003 	tst	r0, r3
87802204:	10830000 	addne	r0, r3, r0
87802208:	12644000 	rsbne	r4, r4, #0
8780220c:	00840000 	addeq	r0, r4, r0
87802210:	10000004 	andne	r0, r0, r4
87802214:	e5002004 	str	r2, [r0, #-4]
87802218:	e8bd8010 	pop	{r4, pc}

8780221c <rt_free_align>:
8780221c:	e5100004 	ldr	r0, [r0, #-4]
87802220:	ea0000d3 	b	87802574 <rt_free>

87802224 <__rt_ffs>:
87802224:	e3500000 	cmp	r0, #0
87802228:	012fff1e 	bxeq	lr
8780222c:	e59f3054 	ldr	r3, [pc, #84]	; 87802288 <__rt_ffs+0x64>
87802230:	e21020ff 	ands	r2, r0, #255	; 0xff
87802234:	0a000003 	beq	87802248 <__rt_ffs+0x24>
87802238:	e0830002 	add	r0, r3, r2
8780223c:	e5d00028 	ldrb	r0, [r0, #40]	; 0x28
87802240:	e2800001 	add	r0, r0, #1
87802244:	e12fff1e 	bx	lr
87802248:	e3100cff 	tst	r0, #65280	; 0xff00
8780224c:	0a000004 	beq	87802264 <__rt_ffs+0x40>
87802250:	e7e70450 	ubfx	r0, r0, #8, #8
87802254:	e0830000 	add	r0, r3, r0
87802258:	e5d00028 	ldrb	r0, [r0, #40]	; 0x28
8780225c:	e2800009 	add	r0, r0, #9
87802260:	e12fff1e 	bx	lr
87802264:	e31008ff 	tst	r0, #16711680	; 0xff0000
87802268:	17e70850 	ubfxne	r0, r0, #16, #8
8780226c:	10830000 	addne	r0, r3, r0
87802270:	15d00028 	ldrbne	r0, [r0, #40]	; 0x28
87802274:	12800011 	addne	r0, r0, #17
87802278:	00830c20 	addeq	r0, r3, r0, lsr #24
8780227c:	05d00028 	ldrbeq	r0, [r0, #40]	; 0x28
87802280:	02800019 	addeq	r0, r0, #25
87802284:	e12fff1e 	bx	lr
87802288:	87803da8 	.word	0x87803da8

8780228c <plug_holes>:
8780228c:	e59f1094 	ldr	r1, [pc, #148]	; 87802328 <plug_holes+0x9c>
87802290:	e5903004 	ldr	r3, [r0, #4]
87802294:	e5912000 	ldr	r2, [r1]
87802298:	e0823003 	add	r3, r2, r3
8780229c:	e1500003 	cmp	r0, r3
878022a0:	0a00000e 	beq	878022e0 <plug_holes+0x54>
878022a4:	e1d3c0b2 	ldrh	ip, [r3, #2]
878022a8:	e35c0000 	cmp	ip, #0
878022ac:	1a00000b 	bne	878022e0 <plug_holes+0x54>
878022b0:	e591c004 	ldr	ip, [r1, #4]
878022b4:	e153000c 	cmp	r3, ip
878022b8:	0a000008 	beq	878022e0 <plug_holes+0x54>
878022bc:	e591c008 	ldr	ip, [r1, #8]
878022c0:	e153000c 	cmp	r3, ip
878022c4:	e593c004 	ldr	ip, [r3, #4]
878022c8:	05810008 	streq	r0, [r1, #8]
878022cc:	e580c004 	str	ip, [r0, #4]
878022d0:	e062c000 	rsb	ip, r2, r0
878022d4:	e5933004 	ldr	r3, [r3, #4]
878022d8:	e0823003 	add	r3, r2, r3
878022dc:	e583c008 	str	ip, [r3, #8]
878022e0:	e590c008 	ldr	ip, [r0, #8]
878022e4:	e082300c 	add	r3, r2, ip
878022e8:	e1500003 	cmp	r0, r3
878022ec:	012fff1e 	bxeq	lr
878022f0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
878022f4:	e1d3e0b2 	ldrh	lr, [r3, #2]
878022f8:	e35e0000 	cmp	lr, #0
878022fc:	149df004 	popne	{pc}		; (ldrne pc, [sp], #4)
87802300:	e5911008 	ldr	r1, [r1, #8]
87802304:	e1500001 	cmp	r0, r1
87802308:	059f1018 	ldreq	r1, [pc, #24]	; 87802328 <plug_holes+0x9c>
8780230c:	05813008 	streq	r3, [r1, #8]
87802310:	e5901004 	ldr	r1, [r0, #4]
87802314:	e5831004 	str	r1, [r3, #4]
87802318:	e5903004 	ldr	r3, [r0, #4]
8780231c:	e0822003 	add	r2, r2, r3
87802320:	e582c008 	str	ip, [r2, #8]
87802324:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
87802328:	878043b0 	.word	0x878043b0

8780232c <rt_system_heap_init>:
8780232c:	e3c11003 	bic	r1, r1, #3
87802330:	e3510018 	cmp	r1, #24
87802334:	912fff1e 	bxls	lr
87802338:	e2800003 	add	r0, r0, #3
8780233c:	e2413018 	sub	r3, r1, #24
87802340:	e3c00003 	bic	r0, r0, #3
87802344:	e1500003 	cmp	r0, r3
87802348:	812fff1e 	bxhi	lr
8780234c:	e92d4010 	push	{r4, lr}
87802350:	e0601001 	rsb	r1, r0, r1
87802354:	e59f4058 	ldr	r4, [pc, #88]	; 878023b4 <rt_system_heap_init+0x88>
87802358:	e2413018 	sub	r3, r1, #24
8780235c:	e241100c 	sub	r1, r1, #12
87802360:	e3012ea0 	movw	r2, #7840	; 0x1ea0
87802364:	e080c001 	add	ip, r0, r1
87802368:	e584300c 	str	r3, [r4, #12]
8780236c:	e3a03000 	mov	r3, #0
87802370:	e1c020b0 	strh	r2, [r0]
87802374:	e5801004 	str	r1, [r0, #4]
87802378:	e5803008 	str	r3, [r0, #8]
8780237c:	e1c030b2 	strh	r3, [r0, #2]
87802380:	e18020b1 	strh	r2, [r0, r1]
87802384:	e3a02001 	mov	r2, #1
87802388:	e5840000 	str	r0, [r4]
8780238c:	e2840010 	add	r0, r4, #16
87802390:	e58c1004 	str	r1, [ip, #4]
87802394:	e58c1008 	str	r1, [ip, #8]
87802398:	e1cc20b2 	strh	r2, [ip, #2]
8780239c:	e59f1014 	ldr	r1, [pc, #20]	; 878023b8 <rt_system_heap_init+0x8c>
878023a0:	e584c004 	str	ip, [r4, #4]
878023a4:	ebfff818 	bl	8780040c <rt_sem_init>
878023a8:	e5943000 	ldr	r3, [r4]
878023ac:	e5843008 	str	r3, [r4, #8]
878023b0:	e8bd8010 	pop	{r4, pc}
878023b4:	878043b0 	.word	0x878043b0
878023b8:	87803ed7 	.word	0x87803ed7

878023bc <rt_malloc>:
878023bc:	e3500000 	cmp	r0, #0
878023c0:	012fff1e 	bxeq	lr
878023c4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
878023c8:	e2800003 	add	r0, r0, #3
878023cc:	e59f516c 	ldr	r5, [pc, #364]	; 87802540 <rt_malloc+0x184>
878023d0:	e3c06003 	bic	r6, r0, #3
878023d4:	e595300c 	ldr	r3, [r5, #12]
878023d8:	e1560003 	cmp	r6, r3
878023dc:	8a000055 	bhi	87802538 <rt_malloc+0x17c>
878023e0:	e356000b 	cmp	r6, #11
878023e4:	e3e01000 	mvn	r1, #0
878023e8:	e2850010 	add	r0, r5, #16
878023ec:	93a0600c 	movls	r6, #12
878023f0:	ebfff830 	bl	878004b8 <rt_sem_take>
878023f4:	e595c008 	ldr	ip, [r5, #8]
878023f8:	e5951000 	ldr	r1, [r5]
878023fc:	e595000c 	ldr	r0, [r5, #12]
87802400:	e061300c 	rsb	r3, r1, ip
87802404:	e0669000 	rsb	r9, r6, r0
87802408:	e1530009 	cmp	r3, r9
8780240c:	2a000047 	bcs	87802530 <rt_malloc+0x174>
87802410:	e0814003 	add	r4, r1, r3
87802414:	e1d480b2 	ldrh	r8, [r4, #2]
87802418:	e5947004 	ldr	r7, [r4, #4]
8780241c:	e3580000 	cmp	r8, #0
87802420:	1a000040 	bne	87802528 <rt_malloc+0x16c>
87802424:	e0632007 	rsb	r2, r3, r7
87802428:	e242e00c 	sub	lr, r2, #12
8780242c:	e156000e 	cmp	r6, lr
87802430:	8a00003c 	bhi	87802528 <rt_malloc+0x16c>
87802434:	e2869018 	add	r9, r6, #24
87802438:	e15e0009 	cmp	lr, r9
8780243c:	3a000018 	bcc	878024a4 <rt_malloc+0xe8>
87802440:	e286200c 	add	r2, r6, #12
87802444:	e3019ea0 	movw	r9, #7840	; 0x1ea0
87802448:	e0822003 	add	r2, r2, r3
8780244c:	e280000c 	add	r0, r0, #12
87802450:	e081e002 	add	lr, r1, r2
87802454:	e18190b2 	strh	r9, [r1, r2]
87802458:	e58e3008 	str	r3, [lr, #8]
8780245c:	e3a03001 	mov	r3, #1
87802460:	e58e7004 	str	r7, [lr, #4]
87802464:	e1ce80b2 	strh	r8, [lr, #2]
87802468:	e5842004 	str	r2, [r4, #4]
8780246c:	e1c430b2 	strh	r3, [r4, #2]
87802470:	e59e3004 	ldr	r3, [lr, #4]
87802474:	e1530000 	cmp	r3, r0
87802478:	e5950030 	ldr	r0, [r5, #48]	; 0x30
8780247c:	10811003 	addne	r1, r1, r3
87802480:	e5953034 	ldr	r3, [r5, #52]	; 0x34
87802484:	e280000c 	add	r0, r0, #12
87802488:	e0800006 	add	r0, r0, r6
8780248c:	15812008 	strne	r2, [r1, #8]
87802490:	e1500003 	cmp	r0, r3
87802494:	e5850030 	str	r0, [r5, #48]	; 0x30
87802498:	859f30a0 	ldrhi	r3, [pc, #160]	; 87802540 <rt_malloc+0x184>
8780249c:	85830034 	strhi	r0, [r3, #52]	; 0x34
878024a0:	ea000008 	b	878024c8 <rt_malloc+0x10c>
878024a4:	e3a03001 	mov	r3, #1
878024a8:	e1c430b2 	strh	r3, [r4, #2]
878024ac:	e5953030 	ldr	r3, [r5, #48]	; 0x30
878024b0:	e0823003 	add	r3, r2, r3
878024b4:	e5952034 	ldr	r2, [r5, #52]	; 0x34
878024b8:	e5853030 	str	r3, [r5, #48]	; 0x30
878024bc:	e1530002 	cmp	r3, r2
878024c0:	859f2078 	ldrhi	r2, [pc, #120]	; 87802540 <rt_malloc+0x184>
878024c4:	85823034 	strhi	r3, [r2, #52]	; 0x34
878024c8:	e15c0004 	cmp	ip, r4
878024cc:	e3013ea0 	movw	r3, #7840	; 0x1ea0
878024d0:	e1c430b0 	strh	r3, [r4]
878024d4:	1a00000c 	bne	8780250c <rt_malloc+0x150>
878024d8:	e895000b 	ldm	r5, {r0, r1, r3}
878024dc:	e3a02000 	mov	r2, #0
878024e0:	ea000004 	b	878024f8 <rt_malloc+0x13c>
878024e4:	e1510003 	cmp	r1, r3
878024e8:	0a00000b 	beq	8780251c <rt_malloc+0x160>
878024ec:	e5933004 	ldr	r3, [r3, #4]
878024f0:	e3a02001 	mov	r2, #1
878024f4:	e0803003 	add	r3, r0, r3
878024f8:	e1d3c0b2 	ldrh	ip, [r3, #2]
878024fc:	e35c0000 	cmp	ip, #0
87802500:	1afffff7 	bne	878024e4 <rt_malloc+0x128>
87802504:	e3520000 	cmp	r2, #0
87802508:	15853008 	strne	r3, [r5, #8]
8780250c:	e59f0030 	ldr	r0, [pc, #48]	; 87802544 <rt_malloc+0x188>
87802510:	ebfff815 	bl	8780056c <rt_sem_release>
87802514:	e284000c 	add	r0, r4, #12
87802518:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
8780251c:	e3520000 	cmp	r2, #0
87802520:	15851008 	strne	r1, [r5, #8]
87802524:	eafffff8 	b	8780250c <rt_malloc+0x150>
87802528:	e1a03007 	mov	r3, r7
8780252c:	eaffffb5 	b	87802408 <rt_malloc+0x4c>
87802530:	e59f000c 	ldr	r0, [pc, #12]	; 87802544 <rt_malloc+0x188>
87802534:	ebfff80c 	bl	8780056c <rt_sem_release>
87802538:	e3a00000 	mov	r0, #0
8780253c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802540:	878043b0 	.word	0x878043b0
87802544:	878043c0 	.word	0x878043c0

87802548 <rt_calloc>:
87802548:	e92d4070 	push	{r4, r5, r6, lr}
8780254c:	e0040091 	mul	r4, r1, r0
87802550:	e1a00004 	mov	r0, r4
87802554:	ebffff98 	bl	878023bc <rt_malloc>
87802558:	e2505000 	subs	r5, r0, #0
8780255c:	0a000002 	beq	8780256c <rt_calloc+0x24>
87802560:	e1a02004 	mov	r2, r4
87802564:	e3a01000 	mov	r1, #0
87802568:	ebfffd0d 	bl	878019a4 <rt_memset>
8780256c:	e1a00005 	mov	r0, r5
87802570:	e8bd8070 	pop	{r4, r5, r6, pc}

87802574 <rt_free>:
87802574:	e3500000 	cmp	r0, #0
87802578:	012fff1e 	bxeq	lr
8780257c:	e92d4070 	push	{r4, r5, r6, lr}
87802580:	e59f4074 	ldr	r4, [pc, #116]	; 878025fc <rt_free+0x88>
87802584:	e5943000 	ldr	r3, [r4]
87802588:	e1500003 	cmp	r0, r3
8780258c:	38bd8070 	popcc	{r4, r5, r6, pc}
87802590:	e5943004 	ldr	r3, [r4, #4]
87802594:	e1500003 	cmp	r0, r3
87802598:	28bd8070 	popcs	{r4, r5, r6, pc}
8780259c:	e240600c 	sub	r6, r0, #12
878025a0:	e1a05000 	mov	r5, r0
878025a4:	e3e01000 	mvn	r1, #0
878025a8:	e2840010 	add	r0, r4, #16
878025ac:	ebfff7c1 	bl	878004b8 <rt_sem_take>
878025b0:	e5152008 	ldr	r2, [r5, #-8]
878025b4:	e3a03000 	mov	r3, #0
878025b8:	e14530ba 	strh	r3, [r5, #-10]
878025bc:	e3013ea0 	movw	r3, #7840	; 0x1ea0
878025c0:	e14530bc 	strh	r3, [r5, #-12]
878025c4:	e1a00006 	mov	r0, r6
878025c8:	e5943008 	ldr	r3, [r4, #8]
878025cc:	e1560003 	cmp	r6, r3
878025d0:	e5943030 	ldr	r3, [r4, #48]	; 0x30
878025d4:	35846008 	strcc	r6, [r4, #8]
878025d8:	e0622003 	rsb	r2, r2, r3
878025dc:	e5943000 	ldr	r3, [r4]
878025e0:	e0633006 	rsb	r3, r3, r6
878025e4:	e0823003 	add	r3, r2, r3
878025e8:	e5843030 	str	r3, [r4, #48]	; 0x30
878025ec:	ebffff26 	bl	8780228c <plug_holes>
878025f0:	e59f0008 	ldr	r0, [pc, #8]	; 87802600 <rt_free+0x8c>
878025f4:	e8bd4070 	pop	{r4, r5, r6, lr}
878025f8:	eafff7db 	b	8780056c <rt_sem_release>
878025fc:	878043b0 	.word	0x878043b0
87802600:	878043c0 	.word	0x878043c0

87802604 <rt_realloc>:
87802604:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802608:	e2811003 	add	r1, r1, #3
8780260c:	e59f5130 	ldr	r5, [pc, #304]	; 87802744 <rt_realloc+0x140>
87802610:	e3c14003 	bic	r4, r1, #3
87802614:	e595300c 	ldr	r3, [r5, #12]
87802618:	e1540003 	cmp	r4, r3
8780261c:	8a000044 	bhi	87802734 <rt_realloc+0x130>
87802620:	e3540000 	cmp	r4, #0
87802624:	1a000002 	bne	87802634 <rt_realloc+0x30>
87802628:	ebffffd1 	bl	87802574 <rt_free>
8780262c:	e1a00004 	mov	r0, r4
87802630:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802634:	e3500000 	cmp	r0, #0
87802638:	e1a07000 	mov	r7, r0
8780263c:	1a000002 	bne	8780264c <rt_realloc+0x48>
87802640:	e1a00004 	mov	r0, r4
87802644:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87802648:	eaffff5b 	b	878023bc <rt_malloc>
8780264c:	e3e01000 	mvn	r1, #0
87802650:	e2850010 	add	r0, r5, #16
87802654:	ebfff797 	bl	878004b8 <rt_sem_take>
87802658:	e5953000 	ldr	r3, [r5]
8780265c:	e1570003 	cmp	r7, r3
87802660:	3a000021 	bcc	878026ec <rt_realloc+0xe8>
87802664:	e5952004 	ldr	r2, [r5, #4]
87802668:	e1570002 	cmp	r7, r2
8780266c:	2a00001e 	bcs	878026ec <rt_realloc+0xe8>
87802670:	e517e008 	ldr	lr, [r7, #-8]
87802674:	e247c00c 	sub	ip, r7, #12
87802678:	e063c00c 	rsb	ip, r3, ip
8780267c:	e24e600c 	sub	r6, lr, #12
87802680:	e06c6006 	rsb	r6, ip, r6
87802684:	e1540006 	cmp	r4, r6
87802688:	0a000017 	beq	878026ec <rt_realloc+0xe8>
8780268c:	e2842018 	add	r2, r4, #24
87802690:	e1560002 	cmp	r6, r2
87802694:	9a000018 	bls	878026fc <rt_realloc+0xf8>
87802698:	e5952030 	ldr	r2, [r5, #48]	; 0x30
8780269c:	e084100c 	add	r1, r4, ip
878026a0:	e0842002 	add	r2, r4, r2
878026a4:	e281100c 	add	r1, r1, #12
878026a8:	e0830001 	add	r0, r3, r1
878026ac:	e0666002 	rsb	r6, r6, r2
878026b0:	e5856030 	str	r6, [r5, #48]	; 0x30
878026b4:	e3012ea0 	movw	r2, #7840	; 0x1ea0
878026b8:	e18320b1 	strh	r2, [r3, r1]
878026bc:	e3a02000 	mov	r2, #0
878026c0:	e1c020b2 	strh	r2, [r0, #2]
878026c4:	e595200c 	ldr	r2, [r5, #12]
878026c8:	e580e004 	str	lr, [r0, #4]
878026cc:	e580c008 	str	ip, [r0, #8]
878026d0:	e282200c 	add	r2, r2, #12
878026d4:	e5071008 	str	r1, [r7, #-8]
878026d8:	e590c004 	ldr	ip, [r0, #4]
878026dc:	e15c0002 	cmp	ip, r2
878026e0:	1083300c 	addne	r3, r3, ip
878026e4:	15831008 	strne	r1, [r3, #8]
878026e8:	ebfffee7 	bl	8780228c <plug_holes>
878026ec:	e59f0054 	ldr	r0, [pc, #84]	; 87802748 <rt_realloc+0x144>
878026f0:	ebfff79d 	bl	8780056c <rt_sem_release>
878026f4:	e1a00007 	mov	r0, r7
878026f8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878026fc:	e2850010 	add	r0, r5, #16
87802700:	ebfff799 	bl	8780056c <rt_sem_release>
87802704:	e1a00004 	mov	r0, r4
87802708:	ebffff2b 	bl	878023bc <rt_malloc>
8780270c:	e2505000 	subs	r5, r0, #0
87802710:	0a000009 	beq	8780273c <rt_realloc+0x138>
87802714:	e1540006 	cmp	r4, r6
87802718:	e1a01007 	mov	r1, r7
8780271c:	31a02004 	movcc	r2, r4
87802720:	21a02006 	movcs	r2, r6
87802724:	ebfffcc5 	bl	87801a40 <rt_memcpy>
87802728:	e1a00007 	mov	r0, r7
8780272c:	ebffff90 	bl	87802574 <rt_free>
87802730:	ea000001 	b	8780273c <rt_realloc+0x138>
87802734:	e3a00000 	mov	r0, #0
87802738:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
8780273c:	e1a00005 	mov	r0, r5
87802740:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87802744:	878043b0 	.word	0x878043b0
87802748:	878043c0 	.word	0x878043c0

8780274c <rt_memory_info>:
8780274c:	e3500000 	cmp	r0, #0
87802750:	159f3028 	ldrne	r3, [pc, #40]	; 87802780 <rt_memory_info+0x34>
87802754:	1593300c 	ldrne	r3, [r3, #12]
87802758:	15803000 	strne	r3, [r0]
8780275c:	e3510000 	cmp	r1, #0
87802760:	159f3018 	ldrne	r3, [pc, #24]	; 87802780 <rt_memory_info+0x34>
87802764:	15933030 	ldrne	r3, [r3, #48]	; 0x30
87802768:	15813000 	strne	r3, [r1]
8780276c:	e3520000 	cmp	r2, #0
87802770:	159f3008 	ldrne	r3, [pc, #8]	; 87802780 <rt_memory_info+0x34>
87802774:	15933034 	ldrne	r3, [r3, #52]	; 0x34
87802778:	15823000 	strne	r3, [r2]
8780277c:	e12fff1e 	bx	lr
87802780:	878043b0 	.word	0x878043b0

87802784 <rt_system_object_init>:
87802784:	e12fff1e 	bx	lr

87802788 <rt_object_get_information>:
87802788:	e59f2030 	ldr	r2, [pc, #48]	; 878027c0 <rt_object_get_information+0x38>
8780278c:	e3a03000 	mov	r3, #0
87802790:	e7d2c203 	ldrb	ip, [r2, r3, lsl #4]
87802794:	e1a01203 	lsl	r1, r3, #4
87802798:	e15c0000 	cmp	ip, r0
8780279c:	1a000002 	bne	878027ac <rt_object_get_information+0x24>
878027a0:	e59f3018 	ldr	r3, [pc, #24]	; 878027c0 <rt_object_get_information+0x38>
878027a4:	e0830001 	add	r0, r3, r1
878027a8:	e12fff1e 	bx	lr
878027ac:	e2833001 	add	r3, r3, #1
878027b0:	e3530007 	cmp	r3, #7
878027b4:	1afffff5 	bne	87802790 <rt_object_get_information+0x8>
878027b8:	e3a00000 	mov	r0, #0
878027bc:	e12fff1e 	bx	lr
878027c0:	87803ee0 	.word	0x87803ee0

878027c4 <rt_object_init>:
878027c4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878027c8:	e1a05000 	mov	r5, r0
878027cc:	e1a00001 	mov	r0, r1
878027d0:	e1a04001 	mov	r4, r1
878027d4:	e1a08002 	mov	r8, r2
878027d8:	ebffffea 	bl	87802788 <rt_object_get_information>
878027dc:	e1a07000 	mov	r7, r0
878027e0:	eb000127 	bl	87802c84 <rt_enter_critical>
878027e4:	e1a03007 	mov	r3, r7
878027e8:	e5b36004 	ldr	r6, [r3, #4]!
878027ec:	e1560003 	cmp	r6, r3
878027f0:	15966000 	ldrne	r6, [r6]
878027f4:	1afffffc 	bne	878027ec <rt_object_init+0x28>
878027f8:	eb00012a 	bl	87802ca8 <rt_exit_critical>
878027fc:	e1e01c84 	mvn	r1, r4, lsl #25
87802800:	e3a02008 	mov	r2, #8
87802804:	e1a00005 	mov	r0, r5
87802808:	e1e01ca1 	mvn	r1, r1, lsr #25
8780280c:	e5c51008 	strb	r1, [r5, #8]
87802810:	e1a01008 	mov	r1, r8
87802814:	ebfffcf0 	bl	87801bdc <rt_strncpy>
87802818:	ebfff68c 	bl	87800250 <rt_hw_interrupt_disable>
8780281c:	e5972004 	ldr	r2, [r7, #4]
87802820:	e285300c 	add	r3, r5, #12
87802824:	e5823004 	str	r3, [r2, #4]
87802828:	e585200c 	str	r2, [r5, #12]
8780282c:	e5873004 	str	r3, [r7, #4]
87802830:	e5856010 	str	r6, [r5, #16]
87802834:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87802838:	eafff683 	b	8780024c <rt_hw_interrupt_enable>

8780283c <rt_object_detach>:
8780283c:	e92d4010 	push	{r4, lr}
87802840:	e3a03000 	mov	r3, #0
87802844:	e5c03008 	strb	r3, [r0, #8]
87802848:	e1a04000 	mov	r4, r0
8780284c:	ebfff67f 	bl	87800250 <rt_hw_interrupt_disable>
87802850:	e5941010 	ldr	r1, [r4, #16]
87802854:	e284300c 	add	r3, r4, #12
87802858:	e594200c 	ldr	r2, [r4, #12]
8780285c:	e5821004 	str	r1, [r2, #4]
87802860:	e5941010 	ldr	r1, [r4, #16]
87802864:	e5812000 	str	r2, [r1]
87802868:	e5843010 	str	r3, [r4, #16]
8780286c:	e584300c 	str	r3, [r4, #12]
87802870:	e8bd4010 	pop	{r4, lr}
87802874:	eafff674 	b	8780024c <rt_hw_interrupt_enable>

87802878 <rt_object_allocate>:
87802878:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
8780287c:	e1a06001 	mov	r6, r1
87802880:	e1a07000 	mov	r7, r0
87802884:	ebffffbf 	bl	87802788 <rt_object_get_information>
87802888:	e1a04000 	mov	r4, r0
8780288c:	e590000c 	ldr	r0, [r0, #12]
87802890:	ebfffec9 	bl	878023bc <rt_malloc>
87802894:	e2505000 	subs	r5, r0, #0
87802898:	0a000011 	beq	878028e4 <rt_object_allocate+0x6c>
8780289c:	e594200c 	ldr	r2, [r4, #12]
878028a0:	e3a01000 	mov	r1, #0
878028a4:	ebfffc3e 	bl	878019a4 <rt_memset>
878028a8:	e5c57008 	strb	r7, [r5, #8]
878028ac:	e3a03000 	mov	r3, #0
878028b0:	e5c53009 	strb	r3, [r5, #9]
878028b4:	e3a02008 	mov	r2, #8
878028b8:	e1a01006 	mov	r1, r6
878028bc:	e1a00005 	mov	r0, r5
878028c0:	ebfffcc5 	bl	87801bdc <rt_strncpy>
878028c4:	ebfff661 	bl	87800250 <rt_hw_interrupt_disable>
878028c8:	e5942004 	ldr	r2, [r4, #4]
878028cc:	e285300c 	add	r3, r5, #12
878028d0:	e5823004 	str	r3, [r2, #4]
878028d4:	e585200c 	str	r2, [r5, #12]
878028d8:	e5a43004 	str	r3, [r4, #4]!
878028dc:	e5854010 	str	r4, [r5, #16]
878028e0:	ebfff659 	bl	8780024c <rt_hw_interrupt_enable>
878028e4:	e1a00005 	mov	r0, r5
878028e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

878028ec <rt_object_delete>:
878028ec:	e92d4010 	push	{r4, lr}
878028f0:	e3a03000 	mov	r3, #0
878028f4:	e5c03008 	strb	r3, [r0, #8]
878028f8:	e1a04000 	mov	r4, r0
878028fc:	ebfff653 	bl	87800250 <rt_hw_interrupt_disable>
87802900:	e5941010 	ldr	r1, [r4, #16]
87802904:	e284300c 	add	r3, r4, #12
87802908:	e594200c 	ldr	r2, [r4, #12]
8780290c:	e5821004 	str	r1, [r2, #4]
87802910:	e5941010 	ldr	r1, [r4, #16]
87802914:	e5812000 	str	r2, [r1]
87802918:	e5843010 	str	r3, [r4, #16]
8780291c:	e584300c 	str	r3, [r4, #12]
87802920:	ebfff649 	bl	8780024c <rt_hw_interrupt_enable>
87802924:	e1a00004 	mov	r0, r4
87802928:	e8bd4010 	pop	{r4, lr}
8780292c:	eaffff10 	b	87802574 <rt_free>

87802930 <rt_object_is_systemobject>:
87802930:	e1d000d8 	ldrsb	r0, [r0, #8]
87802934:	e1a00fa0 	lsr	r0, r0, #31
87802938:	e12fff1e 	bx	lr

8780293c <rt_object_get_type>:
8780293c:	e5d00008 	ldrb	r0, [r0, #8]
87802940:	e200007f 	and	r0, r0, #127	; 0x7f
87802944:	e12fff1e 	bx	lr

87802948 <rt_object_find>:
87802948:	e351000c 	cmp	r1, #12
8780294c:	93a03000 	movls	r3, #0
87802950:	83a03001 	movhi	r3, #1
87802954:	e3500000 	cmp	r0, #0
87802958:	03833001 	orreq	r3, r3, #1
8780295c:	e3530000 	cmp	r3, #0
87802960:	1a000018 	bne	878029c8 <rt_object_find+0x80>
87802964:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802968:	e1a04001 	mov	r4, r1
8780296c:	e1a06000 	mov	r6, r0
87802970:	eb0000c3 	bl	87802c84 <rt_enter_critical>
87802974:	e1a00004 	mov	r0, r4
87802978:	ebffff82 	bl	87802788 <rt_object_get_information>
8780297c:	e1a07000 	mov	r7, r0
87802980:	e5b75004 	ldr	r5, [r7, #4]!
87802984:	e1550007 	cmp	r5, r7
87802988:	0a00000b 	beq	878029bc <rt_object_find+0x74>
8780298c:	e245400c 	sub	r4, r5, #12
87802990:	e3a02008 	mov	r2, #8
87802994:	e1a01006 	mov	r1, r6
87802998:	e1a00004 	mov	r0, r4
8780299c:	ebfffc9c 	bl	87801c14 <rt_strncmp>
878029a0:	e3500000 	cmp	r0, #0
878029a4:	1a000002 	bne	878029b4 <rt_object_find+0x6c>
878029a8:	eb0000be 	bl	87802ca8 <rt_exit_critical>
878029ac:	e1a00004 	mov	r0, r4
878029b0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878029b4:	e5955000 	ldr	r5, [r5]
878029b8:	eafffff1 	b	87802984 <rt_object_find+0x3c>
878029bc:	eb0000b9 	bl	87802ca8 <rt_exit_critical>
878029c0:	e3a00000 	mov	r0, #0
878029c4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
878029c8:	e3a00000 	mov	r0, #0
878029cc:	e12fff1e 	bx	lr

878029d0 <rt_system_scheduler_init>:
878029d0:	e59f203c 	ldr	r2, [pc, #60]	; 87802a14 <rt_system_scheduler_init+0x44>
878029d4:	e3a03000 	mov	r3, #0
878029d8:	e59f1038 	ldr	r1, [pc, #56]	; 87802a18 <rt_system_scheduler_init+0x48>
878029dc:	e1c230b0 	strh	r3, [r2]
878029e0:	e0832001 	add	r2, r3, r1
878029e4:	e5822004 	str	r2, [r2, #4]
878029e8:	e7832001 	str	r2, [r3, r1]
878029ec:	e2833008 	add	r3, r3, #8
878029f0:	e3530c01 	cmp	r3, #256	; 0x100
878029f4:	1afffff9 	bne	878029e0 <rt_system_scheduler_init+0x10>
878029f8:	e59f301c 	ldr	r3, [pc, #28]	; 87802a1c <rt_system_scheduler_init+0x4c>
878029fc:	e3a02000 	mov	r2, #0
87802a00:	e5832000 	str	r2, [r3]
87802a04:	e59f3014 	ldr	r3, [pc, #20]	; 87802a20 <rt_system_scheduler_init+0x50>
87802a08:	e5833004 	str	r3, [r3, #4]
87802a0c:	e5833000 	str	r3, [r3]
87802a10:	e12fff1e 	bx	lr
87802a14:	878043e8 	.word	0x878043e8
87802a18:	878043f8 	.word	0x878043f8
87802a1c:	87804500 	.word	0x87804500
87802a20:	87804504 	.word	0x87804504

87802a24 <rt_schedule_insert_thread>:
87802a24:	e92d4010 	push	{r4, lr}
87802a28:	e1a04000 	mov	r4, r0
87802a2c:	ebfff607 	bl	87800250 <rt_hw_interrupt_disable>
87802a30:	e59f3068 	ldr	r3, [pc, #104]	; 87802aa0 <rt_schedule_insert_thread+0x7c>
87802a34:	e5932000 	ldr	r2, [r3]
87802a38:	e1520004 	cmp	r2, r4
87802a3c:	05d23034 	ldrbeq	r3, [r2, #52]	; 0x34
87802a40:	03c3300f 	biceq	r3, r3, #15
87802a44:	03833003 	orreq	r3, r3, #3
87802a48:	05c23034 	strbeq	r3, [r2, #52]	; 0x34
87802a4c:	0a000011 	beq	87802a98 <rt_schedule_insert_thread+0x74>
87802a50:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
87802a54:	e2842014 	add	r2, r4, #20
87802a58:	e5d41035 	ldrb	r1, [r4, #53]	; 0x35
87802a5c:	e3c3300f 	bic	r3, r3, #15
87802a60:	e3833001 	orr	r3, r3, #1
87802a64:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802a68:	e59f3034 	ldr	r3, [pc, #52]	; 87802aa4 <rt_schedule_insert_thread+0x80>
87802a6c:	e0833181 	add	r3, r3, r1, lsl #3
87802a70:	e5931004 	ldr	r1, [r3, #4]
87802a74:	e5812000 	str	r2, [r1]
87802a78:	e5841018 	str	r1, [r4, #24]
87802a7c:	e5832004 	str	r2, [r3, #4]
87802a80:	e59f2020 	ldr	r2, [pc, #32]	; 87802aa8 <rt_schedule_insert_thread+0x84>
87802a84:	e5843014 	str	r3, [r4, #20]
87802a88:	e5941038 	ldr	r1, [r4, #56]	; 0x38
87802a8c:	e5923000 	ldr	r3, [r2]
87802a90:	e1813003 	orr	r3, r1, r3
87802a94:	e5823000 	str	r3, [r2]
87802a98:	e8bd4010 	pop	{r4, lr}
87802a9c:	eafff5ea 	b	8780024c <rt_hw_interrupt_enable>
87802aa0:	878044fc 	.word	0x878044fc
87802aa4:	878043f8 	.word	0x878043f8
87802aa8:	87804500 	.word	0x87804500

87802aac <rt_schedule_remove_thread>:
87802aac:	e92d4010 	push	{r4, lr}
87802ab0:	e1a04000 	mov	r4, r0
87802ab4:	ebfff5e5 	bl	87800250 <rt_hw_interrupt_disable>
87802ab8:	e5942014 	ldr	r2, [r4, #20]
87802abc:	e2843014 	add	r3, r4, #20
87802ac0:	e5941018 	ldr	r1, [r4, #24]
87802ac4:	e5821004 	str	r1, [r2, #4]
87802ac8:	e5941018 	ldr	r1, [r4, #24]
87802acc:	e5812000 	str	r2, [r1]
87802ad0:	e5843014 	str	r3, [r4, #20]
87802ad4:	e5d42035 	ldrb	r2, [r4, #53]	; 0x35
87802ad8:	e5843018 	str	r3, [r4, #24]
87802adc:	e59f3024 	ldr	r3, [pc, #36]	; 87802b08 <rt_schedule_remove_thread+0x5c>
87802ae0:	e0831182 	add	r1, r3, r2, lsl #3
87802ae4:	e7933182 	ldr	r3, [r3, r2, lsl #3]
87802ae8:	e1530001 	cmp	r3, r1
87802aec:	059f2018 	ldreq	r2, [pc, #24]	; 87802b0c <rt_schedule_remove_thread+0x60>
87802af0:	05941038 	ldreq	r1, [r4, #56]	; 0x38
87802af4:	05923000 	ldreq	r3, [r2]
87802af8:	e8bd4010 	pop	{r4, lr}
87802afc:	01c33001 	biceq	r3, r3, r1
87802b00:	05823000 	streq	r3, [r2]
87802b04:	eafff5d0 	b	8780024c <rt_hw_interrupt_enable>
87802b08:	878043f8 	.word	0x878043f8
87802b0c:	87804500 	.word	0x87804500

87802b10 <rt_system_scheduler_start>:
87802b10:	e59f3038 	ldr	r3, [pc, #56]	; 87802b50 <rt_system_scheduler_start+0x40>
87802b14:	e92d4010 	push	{r4, lr}
87802b18:	e5930000 	ldr	r0, [r3]
87802b1c:	ebfffdc0 	bl	87802224 <__rt_ffs>
87802b20:	e59f302c 	ldr	r3, [pc, #44]	; 87802b54 <rt_system_scheduler_start+0x44>
87802b24:	e2400001 	sub	r0, r0, #1
87802b28:	e7934180 	ldr	r4, [r3, r0, lsl #3]
87802b2c:	e59f3024 	ldr	r3, [pc, #36]	; 87802b58 <rt_system_scheduler_start+0x48>
87802b30:	e2440014 	sub	r0, r4, #20
87802b34:	e5830000 	str	r0, [r3]
87802b38:	ebffffdb 	bl	87802aac <rt_schedule_remove_thread>
87802b3c:	e3a03003 	mov	r3, #3
87802b40:	e2840008 	add	r0, r4, #8
87802b44:	e5c43020 	strb	r3, [r4, #32]
87802b48:	e8bd4010 	pop	{r4, lr}
87802b4c:	eafff5c1 	b	87800258 <rt_hw_context_switch_to>
87802b50:	87804500 	.word	0x87804500
87802b54:	878043f8 	.word	0x878043f8
87802b58:	878044fc 	.word	0x878044fc

87802b5c <rt_schedule>:
87802b5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87802b60:	ebfff5ba 	bl	87800250 <rt_hw_interrupt_disable>
87802b64:	e59f3100 	ldr	r3, [pc, #256]	; 87802c6c <rt_schedule+0x110>
87802b68:	e1a07000 	mov	r7, r0
87802b6c:	e1d330f0 	ldrsh	r3, [r3]
87802b70:	e3530000 	cmp	r3, #0
87802b74:	1a00001e 	bne	87802bf4 <rt_schedule+0x98>
87802b78:	e59f30f0 	ldr	r3, [pc, #240]	; 87802c70 <rt_schedule+0x114>
87802b7c:	e5930000 	ldr	r0, [r3]
87802b80:	e3500000 	cmp	r0, #0
87802b84:	0a00001a 	beq	87802bf4 <rt_schedule+0x98>
87802b88:	ebfffda5 	bl	87802224 <__rt_ffs>
87802b8c:	e59f30e0 	ldr	r3, [pc, #224]	; 87802c74 <rt_schedule+0x118>
87802b90:	e2400001 	sub	r0, r0, #1
87802b94:	e7935180 	ldr	r5, [r3, r0, lsl #3]
87802b98:	e59f30d8 	ldr	r3, [pc, #216]	; 87802c78 <rt_schedule+0x11c>
87802b9c:	e2456014 	sub	r6, r5, #20
87802ba0:	e5934000 	ldr	r4, [r3]
87802ba4:	e1a08003 	mov	r8, r3
87802ba8:	e5d42034 	ldrb	r2, [r4, #52]	; 0x34
87802bac:	e202200f 	and	r2, r2, #15
87802bb0:	e3520003 	cmp	r2, #3
87802bb4:	1a000026 	bne	87802c54 <rt_schedule+0xf8>
87802bb8:	e5d42035 	ldrb	r2, [r4, #53]	; 0x35
87802bbc:	e1520000 	cmp	r2, r0
87802bc0:	33a02000 	movcc	r2, #0
87802bc4:	23a02001 	movcs	r2, #1
87802bc8:	e1540006 	cmp	r4, r6
87802bcc:	03a02000 	moveq	r2, #0
87802bd0:	e3520000 	cmp	r2, #0
87802bd4:	1a000009 	bne	87802c00 <rt_schedule+0xa4>
87802bd8:	e1a00004 	mov	r0, r4
87802bdc:	ebffffb2 	bl	87802aac <rt_schedule_remove_thread>
87802be0:	e5982000 	ldr	r2, [r8]
87802be4:	e5d23034 	ldrb	r3, [r2, #52]	; 0x34
87802be8:	e3c3300f 	bic	r3, r3, #15
87802bec:	e3833003 	orr	r3, r3, #3
87802bf0:	e5c23034 	strb	r3, [r2, #52]	; 0x34
87802bf4:	e1a00007 	mov	r0, r7
87802bf8:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87802bfc:	eafff592 	b	8780024c <rt_hw_interrupt_enable>
87802c00:	e59f2074 	ldr	r2, [pc, #116]	; 87802c7c <rt_schedule+0x120>
87802c04:	e5836000 	str	r6, [r3]
87802c08:	e5c20000 	strb	r0, [r2]
87802c0c:	e1a00004 	mov	r0, r4
87802c10:	ebffff83 	bl	87802a24 <rt_schedule_insert_thread>
87802c14:	e1a00006 	mov	r0, r6
87802c18:	ebffffa3 	bl	87802aac <rt_schedule_remove_thread>
87802c1c:	e5d53020 	ldrb	r3, [r5, #32]
87802c20:	e2851008 	add	r1, r5, #8
87802c24:	e284001c 	add	r0, r4, #28
87802c28:	e3c3300f 	bic	r3, r3, #15
87802c2c:	e3833003 	orr	r3, r3, #3
87802c30:	e5c53020 	strb	r3, [r5, #32]
87802c34:	e59f3044 	ldr	r3, [pc, #68]	; 87802c80 <rt_schedule+0x124>
87802c38:	e5d33000 	ldrb	r3, [r3]
87802c3c:	e3530000 	cmp	r3, #0
87802c40:	1a000001 	bne	87802c4c <rt_schedule+0xf0>
87802c44:	ebfff582 	bl	87800254 <rt_hw_context_switch>
87802c48:	eaffffe9 	b	87802bf4 <rt_schedule+0x98>
87802c4c:	ebfff582 	bl	8780025c <rt_hw_context_switch_interrupt>
87802c50:	eaffffe7 	b	87802bf4 <rt_schedule+0x98>
87802c54:	e1540006 	cmp	r4, r6
87802c58:	0affffde 	beq	87802bd8 <rt_schedule+0x7c>
87802c5c:	e59f2018 	ldr	r2, [pc, #24]	; 87802c7c <rt_schedule+0x120>
87802c60:	e5836000 	str	r6, [r3]
87802c64:	e5c20000 	strb	r0, [r2]
87802c68:	eaffffe9 	b	87802c14 <rt_schedule+0xb8>
87802c6c:	878043e8 	.word	0x878043e8
87802c70:	87804500 	.word	0x87804500
87802c74:	878043f8 	.word	0x878043f8
87802c78:	878044fc 	.word	0x878044fc
87802c7c:	878044f8 	.word	0x878044f8
87802c80:	878043a8 	.word	0x878043a8

87802c84 <rt_enter_critical>:
87802c84:	e92d4010 	push	{r4, lr}
87802c88:	ebfff570 	bl	87800250 <rt_hw_interrupt_disable>
87802c8c:	e59f2010 	ldr	r2, [pc, #16]	; 87802ca4 <rt_enter_critical+0x20>
87802c90:	e8bd4010 	pop	{r4, lr}
87802c94:	e1d230b0 	ldrh	r3, [r2]
87802c98:	e2833001 	add	r3, r3, #1
87802c9c:	e1c230b0 	strh	r3, [r2]
87802ca0:	eafff569 	b	8780024c <rt_hw_interrupt_enable>
87802ca4:	878043e8 	.word	0x878043e8

87802ca8 <rt_exit_critical>:
87802ca8:	e92d4010 	push	{r4, lr}
87802cac:	ebfff567 	bl	87800250 <rt_hw_interrupt_disable>
87802cb0:	e59f2040 	ldr	r2, [pc, #64]	; 87802cf8 <rt_exit_critical+0x50>
87802cb4:	e1d230b0 	ldrh	r3, [r2]
87802cb8:	e2433001 	sub	r3, r3, #1
87802cbc:	e6bf3073 	sxth	r3, r3
87802cc0:	e1c230b0 	strh	r3, [r2]
87802cc4:	e3530000 	cmp	r3, #0
87802cc8:	ca000008 	bgt	87802cf0 <rt_exit_critical+0x48>
87802ccc:	e3a03000 	mov	r3, #0
87802cd0:	e1c230b0 	strh	r3, [r2]
87802cd4:	ebfff55c 	bl	8780024c <rt_hw_interrupt_enable>
87802cd8:	e59f301c 	ldr	r3, [pc, #28]	; 87802cfc <rt_exit_critical+0x54>
87802cdc:	e5933000 	ldr	r3, [r3]
87802ce0:	e3530000 	cmp	r3, #0
87802ce4:	08bd8010 	popeq	{r4, pc}
87802ce8:	e8bd4010 	pop	{r4, lr}
87802cec:	eaffff9a 	b	87802b5c <rt_schedule>
87802cf0:	e8bd4010 	pop	{r4, lr}
87802cf4:	eafff554 	b	8780024c <rt_hw_interrupt_enable>
87802cf8:	878043e8 	.word	0x878043e8
87802cfc:	878044fc 	.word	0x878044fc

87802d00 <rt_critical_level>:
87802d00:	e59f3004 	ldr	r3, [pc, #4]	; 87802d0c <rt_critical_level+0xc>
87802d04:	e1d300b0 	ldrh	r0, [r3]
87802d08:	e12fff1e 	bx	lr
87802d0c:	878043e8 	.word	0x878043e8

87802d10 <rt_thread_exit>:
87802d10:	e59f3078 	ldr	r3, [pc, #120]	; 87802d90 <rt_thread_exit+0x80>
87802d14:	e92d4070 	push	{r4, r5, r6, lr}
87802d18:	e5934000 	ldr	r4, [r3]
87802d1c:	ebfff54b 	bl	87800250 <rt_hw_interrupt_disable>
87802d20:	e1a05000 	mov	r5, r0
87802d24:	e1a00004 	mov	r0, r4
87802d28:	ebffff5f 	bl	87802aac <rt_schedule_remove_thread>
87802d2c:	e3a03004 	mov	r3, #4
87802d30:	e284004c 	add	r0, r4, #76	; 0x4c
87802d34:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802d38:	eb00019a 	bl	878033a8 <rt_timer_detach>
87802d3c:	e1a00004 	mov	r0, r4
87802d40:	ebfffefa 	bl	87802930 <rt_object_is_systemobject>
87802d44:	e3500001 	cmp	r0, #1
87802d48:	1a000005 	bne	87802d64 <rt_thread_exit+0x54>
87802d4c:	e5943078 	ldr	r3, [r4, #120]	; 0x78
87802d50:	e3530000 	cmp	r3, #0
87802d54:	1a000002 	bne	87802d64 <rt_thread_exit+0x54>
87802d58:	e1a00004 	mov	r0, r4
87802d5c:	ebfffeb6 	bl	8780283c <rt_object_detach>
87802d60:	ea000006 	b	87802d80 <rt_thread_exit+0x70>
87802d64:	e59f3028 	ldr	r3, [pc, #40]	; 87802d94 <rt_thread_exit+0x84>
87802d68:	e2842014 	add	r2, r4, #20
87802d6c:	e5931000 	ldr	r1, [r3]
87802d70:	e5832000 	str	r2, [r3]
87802d74:	e5812004 	str	r2, [r1, #4]
87802d78:	e5841014 	str	r1, [r4, #20]
87802d7c:	e5843018 	str	r3, [r4, #24]
87802d80:	e1a00005 	mov	r0, r5
87802d84:	ebfff530 	bl	8780024c <rt_hw_interrupt_enable>
87802d88:	e8bd4070 	pop	{r4, r5, r6, lr}
87802d8c:	eaffff72 	b	87802b5c <rt_schedule>
87802d90:	878044fc 	.word	0x878044fc
87802d94:	87804504 	.word	0x87804504

87802d98 <rt_thread_timeout>:
87802d98:	e590c018 	ldr	ip, [r0, #24]
87802d9c:	e3e02001 	mvn	r2, #1
87802da0:	e5901014 	ldr	r1, [r0, #20]
87802da4:	e92d4010 	push	{r4, lr}
87802da8:	e5802030 	str	r2, [r0, #48]	; 0x30
87802dac:	e2802014 	add	r2, r0, #20
87802db0:	e581c004 	str	ip, [r1, #4]
87802db4:	e590c018 	ldr	ip, [r0, #24]
87802db8:	e58c1000 	str	r1, [ip]
87802dbc:	e5802018 	str	r2, [r0, #24]
87802dc0:	e5802014 	str	r2, [r0, #20]
87802dc4:	ebffff16 	bl	87802a24 <rt_schedule_insert_thread>
87802dc8:	e8bd4010 	pop	{r4, lr}
87802dcc:	eaffff62 	b	87802b5c <rt_schedule>

87802dd0 <rt_thread_init>:
87802dd0:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
87802dd4:	e1a04000 	mov	r4, r0
87802dd8:	e59d7028 	ldr	r7, [sp, #40]	; 0x28
87802ddc:	e1a0a002 	mov	sl, r2
87802de0:	e59d802c 	ldr	r8, [sp, #44]	; 0x2c
87802de4:	e1a02001 	mov	r2, r1
87802de8:	e5dd5030 	ldrb	r5, [sp, #48]	; 0x30
87802dec:	e3a01001 	mov	r1, #1
87802df0:	e59d6034 	ldr	r6, [sp, #52]	; 0x34
87802df4:	e1a09003 	mov	r9, r3
87802df8:	ebfffe71 	bl	878027c4 <rt_object_init>
87802dfc:	e584a020 	str	sl, [r4, #32]
87802e00:	e2842014 	add	r2, r4, #20
87802e04:	e5842018 	str	r2, [r4, #24]
87802e08:	e3a01023 	mov	r1, #35	; 0x23
87802e0c:	e5842014 	str	r2, [r4, #20]
87802e10:	e1a00007 	mov	r0, r7
87802e14:	e5849024 	str	r9, [r4, #36]	; 0x24
87802e18:	e1a02008 	mov	r2, r8
87802e1c:	e5847028 	str	r7, [r4, #40]	; 0x28
87802e20:	e584802c 	str	r8, [r4, #44]	; 0x2c
87802e24:	ebfffade 	bl	878019a4 <rt_memset>
87802e28:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87802e2c:	e5941028 	ldr	r1, [r4, #40]	; 0x28
87802e30:	e59f3064 	ldr	r3, [pc, #100]	; 87802e9c <rt_thread_init+0xcc>
87802e34:	e2422004 	sub	r2, r2, #4
87802e38:	e0812002 	add	r2, r1, r2
87802e3c:	e5940020 	ldr	r0, [r4, #32]
87802e40:	e5941024 	ldr	r1, [r4, #36]	; 0x24
87802e44:	ebfff505 	bl	87800260 <rt_hw_stack_init>
87802e48:	e5c45036 	strb	r5, [r4, #54]	; 0x36
87802e4c:	e1a03004 	mov	r3, r4
87802e50:	e5c45035 	strb	r5, [r4, #53]	; 0x35
87802e54:	e3a05000 	mov	r5, #0
87802e58:	e584001c 	str	r0, [r4, #28]
87802e5c:	e1a01004 	mov	r1, r4
87802e60:	e5845038 	str	r5, [r4, #56]	; 0x38
87802e64:	e284004c 	add	r0, r4, #76	; 0x4c
87802e68:	e5846044 	str	r6, [r4, #68]	; 0x44
87802e6c:	e5846048 	str	r6, [r4, #72]	; 0x48
87802e70:	e5845030 	str	r5, [r4, #48]	; 0x30
87802e74:	e5c45034 	strb	r5, [r4, #52]	; 0x34
87802e78:	e5845078 	str	r5, [r4, #120]	; 0x78
87802e7c:	e584507c 	str	r5, [r4, #124]	; 0x7c
87802e80:	e58d5004 	str	r5, [sp, #4]
87802e84:	e58d5000 	str	r5, [sp]
87802e88:	e59f2010 	ldr	r2, [pc, #16]	; 87802ea0 <rt_thread_init+0xd0>
87802e8c:	eb000131 	bl	87803358 <rt_timer_init>
87802e90:	e1a00005 	mov	r0, r5
87802e94:	e28dd008 	add	sp, sp, #8
87802e98:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
87802e9c:	87802d10 	.word	0x87802d10
87802ea0:	87802d98 	.word	0x87802d98

87802ea4 <rt_thread_self>:
87802ea4:	e59f3004 	ldr	r3, [pc, #4]	; 87802eb0 <rt_thread_self+0xc>
87802ea8:	e5930000 	ldr	r0, [r3]
87802eac:	e12fff1e 	bx	lr
87802eb0:	878044fc 	.word	0x878044fc

87802eb4 <rt_thread_detach>:
87802eb4:	e92d4010 	push	{r4, lr}
87802eb8:	e1a04000 	mov	r4, r0
87802ebc:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87802ec0:	e313000f 	tst	r3, #15
87802ec4:	0a000000 	beq	87802ecc <rt_thread_detach+0x18>
87802ec8:	ebfffef7 	bl	87802aac <rt_schedule_remove_thread>
87802ecc:	e284004c 	add	r0, r4, #76	; 0x4c
87802ed0:	eb000134 	bl	878033a8 <rt_timer_detach>
87802ed4:	e3a03004 	mov	r3, #4
87802ed8:	e1a00004 	mov	r0, r4
87802edc:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802ee0:	ebfffe92 	bl	87802930 <rt_object_is_systemobject>
87802ee4:	e3500001 	cmp	r0, #1
87802ee8:	1a000005 	bne	87802f04 <rt_thread_detach+0x50>
87802eec:	e5943078 	ldr	r3, [r4, #120]	; 0x78
87802ef0:	e3530000 	cmp	r3, #0
87802ef4:	1a000002 	bne	87802f04 <rt_thread_detach+0x50>
87802ef8:	e1a00004 	mov	r0, r4
87802efc:	ebfffe4e 	bl	8780283c <rt_object_detach>
87802f00:	ea000008 	b	87802f28 <rt_thread_detach+0x74>
87802f04:	ebfff4d1 	bl	87800250 <rt_hw_interrupt_disable>
87802f08:	e59f3020 	ldr	r3, [pc, #32]	; 87802f30 <rt_thread_detach+0x7c>
87802f0c:	e2842014 	add	r2, r4, #20
87802f10:	e5931000 	ldr	r1, [r3]
87802f14:	e5832000 	str	r2, [r3]
87802f18:	e5812004 	str	r2, [r1, #4]
87802f1c:	e5841014 	str	r1, [r4, #20]
87802f20:	e5843018 	str	r3, [r4, #24]
87802f24:	ebfff4c8 	bl	8780024c <rt_hw_interrupt_enable>
87802f28:	e3a00000 	mov	r0, #0
87802f2c:	e8bd8010 	pop	{r4, pc}
87802f30:	87804504 	.word	0x87804504

87802f34 <rt_thread_create>:
87802f34:	e92d47f3 	push	{r0, r1, r4, r5, r6, r7, r8, r9, sl, lr}
87802f38:	e1a0a001 	mov	sl, r1
87802f3c:	e5dd7028 	ldrb	r7, [sp, #40]	; 0x28
87802f40:	e1a01000 	mov	r1, r0
87802f44:	e59d602c 	ldr	r6, [sp, #44]	; 0x2c
87802f48:	e3a00001 	mov	r0, #1
87802f4c:	e1a09002 	mov	r9, r2
87802f50:	e1a05003 	mov	r5, r3
87802f54:	ebfffe47 	bl	87802878 <rt_object_allocate>
87802f58:	e2504000 	subs	r4, r0, #0
87802f5c:	0a00002b 	beq	87803010 <rt_thread_create+0xdc>
87802f60:	e1a00005 	mov	r0, r5
87802f64:	ebfffd14 	bl	878023bc <rt_malloc>
87802f68:	e2508000 	subs	r8, r0, #0
87802f6c:	1a000003 	bne	87802f80 <rt_thread_create+0x4c>
87802f70:	e1a00004 	mov	r0, r4
87802f74:	ebfffe5c 	bl	878028ec <rt_object_delete>
87802f78:	e1a00008 	mov	r0, r8
87802f7c:	ea000024 	b	87803014 <rt_thread_create+0xe0>
87802f80:	e584a020 	str	sl, [r4, #32]
87802f84:	e2843014 	add	r3, r4, #20
87802f88:	e5843018 	str	r3, [r4, #24]
87802f8c:	e1a02005 	mov	r2, r5
87802f90:	e5843014 	str	r3, [r4, #20]
87802f94:	e3a01023 	mov	r1, #35	; 0x23
87802f98:	e5849024 	str	r9, [r4, #36]	; 0x24
87802f9c:	e5848028 	str	r8, [r4, #40]	; 0x28
87802fa0:	e584502c 	str	r5, [r4, #44]	; 0x2c
87802fa4:	ebfffa7e 	bl	878019a4 <rt_memset>
87802fa8:	e594202c 	ldr	r2, [r4, #44]	; 0x2c
87802fac:	e5941028 	ldr	r1, [r4, #40]	; 0x28
87802fb0:	e59f3064 	ldr	r3, [pc, #100]	; 8780301c <rt_thread_create+0xe8>
87802fb4:	e2422004 	sub	r2, r2, #4
87802fb8:	e0812002 	add	r2, r1, r2
87802fbc:	e5940020 	ldr	r0, [r4, #32]
87802fc0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
87802fc4:	ebfff4a5 	bl	87800260 <rt_hw_stack_init>
87802fc8:	e584001c 	str	r0, [r4, #28]
87802fcc:	e3a03000 	mov	r3, #0
87802fd0:	e5843038 	str	r3, [r4, #56]	; 0x38
87802fd4:	e1a01004 	mov	r1, r4
87802fd8:	e5843030 	str	r3, [r4, #48]	; 0x30
87802fdc:	e284004c 	add	r0, r4, #76	; 0x4c
87802fe0:	e5c43034 	strb	r3, [r4, #52]	; 0x34
87802fe4:	e5843078 	str	r3, [r4, #120]	; 0x78
87802fe8:	e584307c 	str	r3, [r4, #124]	; 0x7c
87802fec:	e5c47036 	strb	r7, [r4, #54]	; 0x36
87802ff0:	e5c47035 	strb	r7, [r4, #53]	; 0x35
87802ff4:	e5846044 	str	r6, [r4, #68]	; 0x44
87802ff8:	e5846048 	str	r6, [r4, #72]	; 0x48
87802ffc:	e59f201c 	ldr	r2, [pc, #28]	; 87803020 <rt_thread_create+0xec>
87803000:	e58d3004 	str	r3, [sp, #4]
87803004:	e58d3000 	str	r3, [sp]
87803008:	e1a03004 	mov	r3, r4
8780300c:	eb0000d1 	bl	87803358 <rt_timer_init>
87803010:	e1a00004 	mov	r0, r4
87803014:	e28dd008 	add	sp, sp, #8
87803018:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
8780301c:	87802d10 	.word	0x87802d10
87803020:	87802d98 	.word	0x87802d98

87803024 <rt_thread_delete>:
87803024:	e92d4010 	push	{r4, lr}
87803028:	e1a04000 	mov	r4, r0
8780302c:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87803030:	e313000f 	tst	r3, #15
87803034:	0a000000 	beq	8780303c <rt_thread_delete+0x18>
87803038:	ebfffe9b 	bl	87802aac <rt_schedule_remove_thread>
8780303c:	e284004c 	add	r0, r4, #76	; 0x4c
87803040:	eb0000d8 	bl	878033a8 <rt_timer_detach>
87803044:	e3a03004 	mov	r3, #4
87803048:	e5c43034 	strb	r3, [r4, #52]	; 0x34
8780304c:	ebfff47f 	bl	87800250 <rt_hw_interrupt_disable>
87803050:	e59f3020 	ldr	r3, [pc, #32]	; 87803078 <rt_thread_delete+0x54>
87803054:	e2842014 	add	r2, r4, #20
87803058:	e5931000 	ldr	r1, [r3]
8780305c:	e5832000 	str	r2, [r3]
87803060:	e5812004 	str	r2, [r1, #4]
87803064:	e5841014 	str	r1, [r4, #20]
87803068:	e5843018 	str	r3, [r4, #24]
8780306c:	ebfff476 	bl	8780024c <rt_hw_interrupt_enable>
87803070:	e3a00000 	mov	r0, #0
87803074:	e8bd8010 	pop	{r4, pc}
87803078:	87804504 	.word	0x87804504

8780307c <rt_thread_yield>:
8780307c:	e92d4010 	push	{r4, lr}
87803080:	ebfffeb5 	bl	87802b5c <rt_schedule>
87803084:	e3a00000 	mov	r0, #0
87803088:	e8bd8010 	pop	{r4, pc}

8780308c <rt_thread_suspend>:
8780308c:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87803090:	e203300d 	and	r3, r3, #13
87803094:	e3530001 	cmp	r3, #1
87803098:	1a00000f 	bne	878030dc <rt_thread_suspend+0x50>
8780309c:	e92d4070 	push	{r4, r5, r6, lr}
878030a0:	e1a04000 	mov	r4, r0
878030a4:	ebfff469 	bl	87800250 <rt_hw_interrupt_disable>
878030a8:	e1a05000 	mov	r5, r0
878030ac:	e1a00004 	mov	r0, r4
878030b0:	ebfffe7d 	bl	87802aac <rt_schedule_remove_thread>
878030b4:	e5d43034 	ldrb	r3, [r4, #52]	; 0x34
878030b8:	e284004c 	add	r0, r4, #76	; 0x4c
878030bc:	e3c3300f 	bic	r3, r3, #15
878030c0:	e3833002 	orr	r3, r3, #2
878030c4:	e5c43034 	strb	r3, [r4, #52]	; 0x34
878030c8:	eb000111 	bl	87803514 <rt_timer_stop>
878030cc:	e1a00005 	mov	r0, r5
878030d0:	ebfff45d 	bl	8780024c <rt_hw_interrupt_enable>
878030d4:	e3a00000 	mov	r0, #0
878030d8:	e8bd8070 	pop	{r4, r5, r6, pc}
878030dc:	e3e00000 	mvn	r0, #0
878030e0:	e12fff1e 	bx	lr

878030e4 <rt_thread_sleep>:
878030e4:	e59f3060 	ldr	r3, [pc, #96]	; 8780314c <rt_thread_sleep+0x68>
878030e8:	e92d40f7 	push	{r0, r1, r2, r4, r5, r6, r7, lr}
878030ec:	e28d5008 	add	r5, sp, #8
878030f0:	e5934000 	ldr	r4, [r3]
878030f4:	e5250004 	str	r0, [r5, #-4]!
878030f8:	ebfff454 	bl	87800250 <rt_hw_interrupt_disable>
878030fc:	e1a07000 	mov	r7, r0
87803100:	e284604c 	add	r6, r4, #76	; 0x4c
87803104:	e1a00004 	mov	r0, r4
87803108:	ebffffdf 	bl	8780308c <rt_thread_suspend>
8780310c:	e1a02005 	mov	r2, r5
87803110:	e3a01000 	mov	r1, #0
87803114:	e1a00006 	mov	r0, r6
87803118:	eb00010f 	bl	8780355c <rt_timer_control>
8780311c:	e1a00006 	mov	r0, r6
87803120:	eb0000cd 	bl	8780345c <rt_timer_start>
87803124:	e1a00007 	mov	r0, r7
87803128:	ebfff447 	bl	8780024c <rt_hw_interrupt_enable>
8780312c:	ebfffe8a 	bl	87802b5c <rt_schedule>
87803130:	e5943030 	ldr	r3, [r4, #48]	; 0x30
87803134:	e3a00000 	mov	r0, #0
87803138:	e3730002 	cmn	r3, #2
8780313c:	03a03000 	moveq	r3, #0
87803140:	05843030 	streq	r3, [r4, #48]	; 0x30
87803144:	e28dd00c 	add	sp, sp, #12
87803148:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
8780314c:	878044fc 	.word	0x878044fc

87803150 <rt_thread_delay>:
87803150:	eaffffe3 	b	878030e4 <rt_thread_sleep>

87803154 <rt_thread_mdelay>:
87803154:	e92d4010 	push	{r4, lr}
87803158:	ebfff460 	bl	878002e0 <rt_tick_from_millisecond>
8780315c:	e8bd4010 	pop	{r4, lr}
87803160:	eaffffdf 	b	878030e4 <rt_thread_sleep>

87803164 <rt_thread_resume>:
87803164:	e5d03034 	ldrb	r3, [r0, #52]	; 0x34
87803168:	e203300f 	and	r3, r3, #15
8780316c:	e3530002 	cmp	r3, #2
87803170:	1a000013 	bne	878031c4 <rt_thread_resume+0x60>
87803174:	e92d4070 	push	{r4, r5, r6, lr}
87803178:	e1a04000 	mov	r4, r0
8780317c:	ebfff433 	bl	87800250 <rt_hw_interrupt_disable>
87803180:	e5942014 	ldr	r2, [r4, #20]
87803184:	e2843014 	add	r3, r4, #20
87803188:	e5941018 	ldr	r1, [r4, #24]
8780318c:	e1a05000 	mov	r5, r0
87803190:	e284004c 	add	r0, r4, #76	; 0x4c
87803194:	e5821004 	str	r1, [r2, #4]
87803198:	e5941018 	ldr	r1, [r4, #24]
8780319c:	e5812000 	str	r2, [r1]
878031a0:	e5843018 	str	r3, [r4, #24]
878031a4:	e5843014 	str	r3, [r4, #20]
878031a8:	eb0000d9 	bl	87803514 <rt_timer_stop>
878031ac:	e1a00005 	mov	r0, r5
878031b0:	ebfff425 	bl	8780024c <rt_hw_interrupt_enable>
878031b4:	e1a00004 	mov	r0, r4
878031b8:	ebfffe19 	bl	87802a24 <rt_schedule_insert_thread>
878031bc:	e3a00000 	mov	r0, #0
878031c0:	e8bd8070 	pop	{r4, r5, r6, pc}
878031c4:	e3e00000 	mvn	r0, #0
878031c8:	e12fff1e 	bx	lr

878031cc <rt_thread_startup>:
878031cc:	e92d4010 	push	{r4, lr}
878031d0:	e3a02001 	mov	r2, #1
878031d4:	e5d01036 	ldrb	r1, [r0, #54]	; 0x36
878031d8:	e1a02112 	lsl	r2, r2, r1
878031dc:	e5802038 	str	r2, [r0, #56]	; 0x38
878031e0:	e3a02002 	mov	r2, #2
878031e4:	e5c01035 	strb	r1, [r0, #53]	; 0x35
878031e8:	e5c02034 	strb	r2, [r0, #52]	; 0x34
878031ec:	ebffffdc 	bl	87803164 <rt_thread_resume>
878031f0:	e59f3014 	ldr	r3, [pc, #20]	; 8780320c <rt_thread_startup+0x40>
878031f4:	e5933000 	ldr	r3, [r3]
878031f8:	e3530000 	cmp	r3, #0
878031fc:	0a000000 	beq	87803204 <rt_thread_startup+0x38>
87803200:	ebfffe55 	bl	87802b5c <rt_schedule>
87803204:	e3a00000 	mov	r0, #0
87803208:	e8bd8010 	pop	{r4, pc}
8780320c:	878044fc 	.word	0x878044fc

87803210 <rt_thread_control>:
87803210:	e3510001 	cmp	r1, #1
87803214:	0a00001f 	beq	87803298 <rt_thread_control+0x88>
87803218:	e3510002 	cmp	r1, #2
8780321c:	0a000002 	beq	8780322c <rt_thread_control+0x1c>
87803220:	e3510000 	cmp	r1, #0
87803224:	1a00001c 	bne	8780329c <rt_thread_control+0x8c>
87803228:	eaffffe7 	b	878031cc <rt_thread_startup>
8780322c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
87803230:	e1a04000 	mov	r4, r0
87803234:	e1a06002 	mov	r6, r2
87803238:	ebfff404 	bl	87800250 <rt_hw_interrupt_disable>
8780323c:	e5d45034 	ldrb	r5, [r4, #52]	; 0x34
87803240:	e1a07000 	mov	r7, r0
87803244:	e205500f 	and	r5, r5, #15
87803248:	e3550001 	cmp	r5, #1
8780324c:	1a000008 	bne	87803274 <rt_thread_control+0x64>
87803250:	e1a00004 	mov	r0, r4
87803254:	ebfffe14 	bl	87802aac <rt_schedule_remove_thread>
87803258:	e5d63000 	ldrb	r3, [r6]
8780325c:	e1a00004 	mov	r0, r4
87803260:	e1a05315 	lsl	r5, r5, r3
87803264:	e5c43035 	strb	r3, [r4, #53]	; 0x35
87803268:	e5845038 	str	r5, [r4, #56]	; 0x38
8780326c:	ebfffdec 	bl	87802a24 <rt_schedule_insert_thread>
87803270:	ea000004 	b	87803288 <rt_thread_control+0x78>
87803274:	e5d62000 	ldrb	r2, [r6]
87803278:	e3a03001 	mov	r3, #1
8780327c:	e1a03213 	lsl	r3, r3, r2
87803280:	e5c42035 	strb	r2, [r4, #53]	; 0x35
87803284:	e5843038 	str	r3, [r4, #56]	; 0x38
87803288:	e1a00007 	mov	r0, r7
8780328c:	ebfff3ee 	bl	8780024c <rt_hw_interrupt_enable>
87803290:	e3a00000 	mov	r0, #0
87803294:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87803298:	eaffff61 	b	87803024 <rt_thread_delete>
8780329c:	e3a00000 	mov	r0, #0
878032a0:	e12fff1e 	bx	lr

878032a4 <rt_thread_find>:
878032a4:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878032a8:	e1a08000 	mov	r8, r0
878032ac:	e59f507c 	ldr	r5, [pc, #124]	; 87803330 <rt_thread_find+0x8c>
878032b0:	e5953000 	ldr	r3, [r5]
878032b4:	e3530000 	cmp	r3, #0
878032b8:	0a000000 	beq	878032c0 <rt_thread_find+0x1c>
878032bc:	ebfffe70 	bl	87802c84 <rt_enter_critical>
878032c0:	e3a00001 	mov	r0, #1
878032c4:	ebfffd2f 	bl	87802788 <rt_object_get_information>
878032c8:	e1a07000 	mov	r7, r0
878032cc:	e5b76004 	ldr	r6, [r7, #4]!
878032d0:	e1560007 	cmp	r6, r7
878032d4:	0a00000d 	beq	87803310 <rt_thread_find+0x6c>
878032d8:	e246400c 	sub	r4, r6, #12
878032dc:	e3a02008 	mov	r2, #8
878032e0:	e1a01008 	mov	r1, r8
878032e4:	e1a00004 	mov	r0, r4
878032e8:	ebfffa49 	bl	87801c14 <rt_strncmp>
878032ec:	e3500000 	cmp	r0, #0
878032f0:	1a000004 	bne	87803308 <rt_thread_find+0x64>
878032f4:	e5953000 	ldr	r3, [r5]
878032f8:	e3530000 	cmp	r3, #0
878032fc:	0a000009 	beq	87803328 <rt_thread_find+0x84>
87803300:	ebfffe68 	bl	87802ca8 <rt_exit_critical>
87803304:	ea000007 	b	87803328 <rt_thread_find+0x84>
87803308:	e5966000 	ldr	r6, [r6]
8780330c:	eaffffef 	b	878032d0 <rt_thread_find+0x2c>
87803310:	e5950000 	ldr	r0, [r5]
87803314:	e3500000 	cmp	r0, #0
87803318:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
8780331c:	ebfffe61 	bl	87802ca8 <rt_exit_critical>
87803320:	e3a00000 	mov	r0, #0
87803324:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87803328:	e1a00004 	mov	r0, r4
8780332c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
87803330:	878044fc 	.word	0x878044fc

87803334 <_rt_timer_remove>:
87803334:	e5901018 	ldr	r1, [r0, #24]
87803338:	e2803014 	add	r3, r0, #20
8780333c:	e5902014 	ldr	r2, [r0, #20]
87803340:	e5821004 	str	r1, [r2, #4]
87803344:	e5901018 	ldr	r1, [r0, #24]
87803348:	e5812000 	str	r2, [r1]
8780334c:	e5803018 	str	r3, [r0, #24]
87803350:	e5803014 	str	r3, [r0, #20]
87803354:	e12fff1e 	bx	lr

87803358 <rt_timer_init>:
87803358:	e92d4070 	push	{r4, r5, r6, lr}
8780335c:	e1a04000 	mov	r4, r0
87803360:	e1a06002 	mov	r6, r2
87803364:	e1a02001 	mov	r2, r1
87803368:	e3a0100a 	mov	r1, #10
8780336c:	e1a05003 	mov	r5, r3
87803370:	ebfffd13 	bl	878027c4 <rt_object_init>
87803374:	e5dd2014 	ldrb	r2, [sp, #20]
87803378:	e3a03000 	mov	r3, #0
8780337c:	e5843028 	str	r3, [r4, #40]	; 0x28
87803380:	e59d3010 	ldr	r3, [sp, #16]
87803384:	e3c22001 	bic	r2, r2, #1
87803388:	e5843024 	str	r3, [r4, #36]	; 0x24
8780338c:	e2843014 	add	r3, r4, #20
87803390:	e5c42009 	strb	r2, [r4, #9]
87803394:	e584601c 	str	r6, [r4, #28]
87803398:	e5845020 	str	r5, [r4, #32]
8780339c:	e5843018 	str	r3, [r4, #24]
878033a0:	e5843014 	str	r3, [r4, #20]
878033a4:	e8bd8070 	pop	{r4, r5, r6, pc}

878033a8 <rt_timer_detach>:
878033a8:	e92d4070 	push	{r4, r5, r6, lr}
878033ac:	e1a04000 	mov	r4, r0
878033b0:	ebfff3a6 	bl	87800250 <rt_hw_interrupt_disable>
878033b4:	e1a05000 	mov	r5, r0
878033b8:	e1a00004 	mov	r0, r4
878033bc:	ebffffdc 	bl	87803334 <_rt_timer_remove>
878033c0:	e1a00005 	mov	r0, r5
878033c4:	ebfff3a0 	bl	8780024c <rt_hw_interrupt_enable>
878033c8:	e1a00004 	mov	r0, r4
878033cc:	ebfffd1a 	bl	8780283c <rt_object_detach>
878033d0:	e3a00000 	mov	r0, #0
878033d4:	e8bd8070 	pop	{r4, r5, r6, pc}

878033d8 <rt_timer_create>:
878033d8:	e92d4070 	push	{r4, r5, r6, lr}
878033dc:	e1a06001 	mov	r6, r1
878033e0:	e1a01000 	mov	r1, r0
878033e4:	e3a0000a 	mov	r0, #10
878033e8:	e1a05002 	mov	r5, r2
878033ec:	e1a04003 	mov	r4, r3
878033f0:	ebfffd20 	bl	87802878 <rt_object_allocate>
878033f4:	e3500000 	cmp	r0, #0
878033f8:	08bd8070 	popeq	{r4, r5, r6, pc}
878033fc:	e5dd1010 	ldrb	r1, [sp, #16]
87803400:	e3a03000 	mov	r3, #0
87803404:	e5803028 	str	r3, [r0, #40]	; 0x28
87803408:	e2803014 	add	r3, r0, #20
8780340c:	e3c11001 	bic	r1, r1, #1
87803410:	e5c01009 	strb	r1, [r0, #9]
87803414:	e580601c 	str	r6, [r0, #28]
87803418:	e5805020 	str	r5, [r0, #32]
8780341c:	e5804024 	str	r4, [r0, #36]	; 0x24
87803420:	e5803018 	str	r3, [r0, #24]
87803424:	e5803014 	str	r3, [r0, #20]
87803428:	e8bd8070 	pop	{r4, r5, r6, pc}

8780342c <rt_timer_delete>:
8780342c:	e92d4070 	push	{r4, r5, r6, lr}
87803430:	e1a04000 	mov	r4, r0
87803434:	ebfff385 	bl	87800250 <rt_hw_interrupt_disable>
87803438:	e1a05000 	mov	r5, r0
8780343c:	e1a00004 	mov	r0, r4
87803440:	ebffffbb 	bl	87803334 <_rt_timer_remove>
87803444:	e1a00005 	mov	r0, r5
87803448:	ebfff37f 	bl	8780024c <rt_hw_interrupt_enable>
8780344c:	e1a00004 	mov	r0, r4
87803450:	ebfffd25 	bl	878028ec <rt_object_delete>
87803454:	e3a00000 	mov	r0, #0
87803458:	e8bd8070 	pop	{r4, r5, r6, pc}

8780345c <rt_timer_start>:
8780345c:	e92d4070 	push	{r4, r5, r6, lr}
87803460:	e1a04000 	mov	r4, r0
87803464:	ebfff379 	bl	87800250 <rt_hw_interrupt_disable>
87803468:	e1a05000 	mov	r5, r0
8780346c:	e1a00004 	mov	r0, r4
87803470:	ebffffaf 	bl	87803334 <_rt_timer_remove>
87803474:	e5d43009 	ldrb	r3, [r4, #9]
87803478:	e1a00005 	mov	r0, r5
8780347c:	e3c33001 	bic	r3, r3, #1
87803480:	e5c43009 	strb	r3, [r4, #9]
87803484:	ebfff370 	bl	8780024c <rt_hw_interrupt_enable>
87803488:	ebfff377 	bl	8780026c <rt_tick_get>
8780348c:	e5943024 	ldr	r3, [r4, #36]	; 0x24
87803490:	e0830000 	add	r0, r3, r0
87803494:	e5840028 	str	r0, [r4, #40]	; 0x28
87803498:	ebfff36c 	bl	87800250 <rt_hw_interrupt_disable>
8780349c:	e59f306c 	ldr	r3, [pc, #108]	; 87803510 <rt_timer_start+0xb4>
878034a0:	e5935004 	ldr	r5, [r3, #4]
878034a4:	e1a0c003 	mov	ip, r3
878034a8:	e1550003 	cmp	r5, r3
878034ac:	e5932000 	ldr	r2, [r3]
878034b0:	0a000008 	beq	878034d8 <rt_timer_start+0x7c>
878034b4:	e5921014 	ldr	r1, [r2, #20]
878034b8:	e594e028 	ldr	lr, [r4, #40]	; 0x28
878034bc:	e151000e 	cmp	r1, lr
878034c0:	0a000002 	beq	878034d0 <rt_timer_start+0x74>
878034c4:	e06e1001 	rsb	r1, lr, r1
878034c8:	e371010a 	cmn	r1, #-2147483646	; 0x80000002
878034cc:	9a000001 	bls	878034d8 <rt_timer_start+0x7c>
878034d0:	e1a03002 	mov	r3, r2
878034d4:	eafffff3 	b	878034a8 <rt_timer_start+0x4c>
878034d8:	e59c1008 	ldr	r1, [ip, #8]
878034dc:	e2811001 	add	r1, r1, #1
878034e0:	e58c1008 	str	r1, [ip, #8]
878034e4:	e2841014 	add	r1, r4, #20
878034e8:	e5821004 	str	r1, [r2, #4]
878034ec:	e5842014 	str	r2, [r4, #20]
878034f0:	e5831000 	str	r1, [r3]
878034f4:	e5843018 	str	r3, [r4, #24]
878034f8:	e5d43009 	ldrb	r3, [r4, #9]
878034fc:	e3833001 	orr	r3, r3, #1
87803500:	e5c43009 	strb	r3, [r4, #9]
87803504:	ebfff350 	bl	8780024c <rt_hw_interrupt_enable>
87803508:	e3a00000 	mov	r0, #0
8780350c:	e8bd8070 	pop	{r4, r5, r6, pc}
87803510:	878043ec 	.word	0x878043ec

87803514 <rt_timer_stop>:
87803514:	e5d03009 	ldrb	r3, [r0, #9]
87803518:	e3130001 	tst	r3, #1
8780351c:	0a00000c 	beq	87803554 <rt_timer_stop+0x40>
87803520:	e92d4070 	push	{r4, r5, r6, lr}
87803524:	e1a04000 	mov	r4, r0
87803528:	ebfff348 	bl	87800250 <rt_hw_interrupt_disable>
8780352c:	e1a05000 	mov	r5, r0
87803530:	e1a00004 	mov	r0, r4
87803534:	ebffff7e 	bl	87803334 <_rt_timer_remove>
87803538:	e1a00005 	mov	r0, r5
8780353c:	ebfff342 	bl	8780024c <rt_hw_interrupt_enable>
87803540:	e5d43009 	ldrb	r3, [r4, #9]
87803544:	e3a00000 	mov	r0, #0
87803548:	e3c33001 	bic	r3, r3, #1
8780354c:	e5c43009 	strb	r3, [r4, #9]
87803550:	e8bd8070 	pop	{r4, r5, r6, pc}
87803554:	e3e00000 	mvn	r0, #0
87803558:	e12fff1e 	bx	lr

8780355c <rt_timer_control>:
8780355c:	e3510003 	cmp	r1, #3
87803560:	979ff101 	ldrls	pc, [pc, r1, lsl #2]
87803564:	ea00000f 	b	878035a8 <rt_timer_control+0x4c>
87803568:	87803584 	.word	0x87803584
8780356c:	87803578 	.word	0x87803578
87803570:	87803590 	.word	0x87803590
87803574:	8780359c 	.word	0x8780359c
87803578:	e5903024 	ldr	r3, [r0, #36]	; 0x24
8780357c:	e5823000 	str	r3, [r2]
87803580:	ea000008 	b	878035a8 <rt_timer_control+0x4c>
87803584:	e5923000 	ldr	r3, [r2]
87803588:	e5803024 	str	r3, [r0, #36]	; 0x24
8780358c:	ea000005 	b	878035a8 <rt_timer_control+0x4c>
87803590:	e5d03009 	ldrb	r3, [r0, #9]
87803594:	e3c33002 	bic	r3, r3, #2
87803598:	ea000001 	b	878035a4 <rt_timer_control+0x48>
8780359c:	e5d03009 	ldrb	r3, [r0, #9]
878035a0:	e3833002 	orr	r3, r3, #2
878035a4:	e5c03009 	strb	r3, [r0, #9]
878035a8:	e3a00000 	mov	r0, #0
878035ac:	e12fff1e 	bx	lr

878035b0 <rt_timer_check>:
878035b0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
878035b4:	ebfff32c 	bl	8780026c <rt_tick_get>
878035b8:	e59f5074 	ldr	r5, [pc, #116]	; 87803634 <rt_timer_check+0x84>
878035bc:	e1a06000 	mov	r6, r0
878035c0:	ebfff322 	bl	87800250 <rt_hw_interrupt_disable>
878035c4:	e1a07000 	mov	r7, r0
878035c8:	e5954000 	ldr	r4, [r5]
878035cc:	e1540005 	cmp	r4, r5
878035d0:	0a000014 	beq	87803628 <rt_timer_check+0x78>
878035d4:	e5940014 	ldr	r0, [r4, #20]
878035d8:	e2448014 	sub	r8, r4, #20
878035dc:	e0600006 	rsb	r0, r0, r6
878035e0:	e370010a 	cmn	r0, #-2147483646	; 0x80000002
878035e4:	8a00000f 	bhi	87803628 <rt_timer_check+0x78>
878035e8:	e1a00008 	mov	r0, r8
878035ec:	ebffff50 	bl	87803334 <_rt_timer_remove>
878035f0:	e5943008 	ldr	r3, [r4, #8]
878035f4:	e594000c 	ldr	r0, [r4, #12]
878035f8:	e12fff33 	blx	r3
878035fc:	ebfff31a 	bl	8780026c <rt_tick_get>
87803600:	e554300b 	ldrb	r3, [r4, #-11]
87803604:	e1a06000 	mov	r6, r0
87803608:	e2032003 	and	r2, r3, #3
8780360c:	e3c33001 	bic	r3, r3, #1
87803610:	e3520003 	cmp	r2, #3
87803614:	e544300b 	strb	r3, [r4, #-11]
87803618:	1affffea 	bne	878035c8 <rt_timer_check+0x18>
8780361c:	e1a00008 	mov	r0, r8
87803620:	ebffff8d 	bl	8780345c <rt_timer_start>
87803624:	eaffffe7 	b	878035c8 <rt_timer_check+0x18>
87803628:	e1a00007 	mov	r0, r7
8780362c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
87803630:	eafff305 	b	8780024c <rt_hw_interrupt_enable>
87803634:	878043ec 	.word	0x878043ec

87803638 <rt_timer_next_timeout_tick>:
87803638:	e59f2010 	ldr	r2, [pc, #16]	; 87803650 <rt_timer_next_timeout_tick+0x18>
8780363c:	e5923000 	ldr	r3, [r2]
87803640:	e1530002 	cmp	r3, r2
87803644:	15930014 	ldrne	r0, [r3, #20]
87803648:	03e00000 	mvneq	r0, #0
8780364c:	e12fff1e 	bx	lr
87803650:	878043ec 	.word	0x878043ec

87803654 <rt_system_timer_init>:
87803654:	e59f3008 	ldr	r3, [pc, #8]	; 87803664 <rt_system_timer_init+0x10>
87803658:	e5833004 	str	r3, [r3, #4]
8780365c:	e5833000 	str	r3, [r3]
87803660:	e12fff1e 	bx	lr
87803664:	878043ec 	.word	0x878043ec

87803668 <rt_system_timer_thread_init>:
87803668:	e12fff1e 	bx	lr

8780366c <atoi>:
8780366c:	e5d02000 	ldrb	r2, [r0]
87803670:	e2421009 	sub	r1, r2, #9
87803674:	e3520020 	cmp	r2, #32
87803678:	13510004 	cmpne	r1, #4
8780367c:	92800001 	addls	r0, r0, #1
87803680:	9afffff9 	bls	8780366c <atoi>
87803684:	e352002b 	cmp	r2, #43	; 0x2b
87803688:	e1a03000 	mov	r3, r0
8780368c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87803690:	0a000003 	beq	878036a4 <atoi+0x38>
87803694:	e352002d 	cmp	r2, #45	; 0x2d
87803698:	03e02000 	mvneq	r2, #0
8780369c:	0a000001 	beq	878036a8 <atoi+0x3c>
878036a0:	ea000002 	b	878036b0 <atoi+0x44>
878036a4:	e3a02001 	mov	r2, #1
878036a8:	e2833001 	add	r3, r3, #1
878036ac:	ea000000 	b	878036b4 <atoi+0x48>
878036b0:	e3a02001 	mov	r2, #1
878036b4:	e2433001 	sub	r3, r3, #1
878036b8:	e3a00000 	mov	r0, #0
878036bc:	e3a0e00a 	mov	lr, #10
878036c0:	e5f31001 	ldrb	r1, [r3, #1]!
878036c4:	e241c030 	sub	ip, r1, #48	; 0x30
878036c8:	e35c0009 	cmp	ip, #9
878036cc:	9020109e 	mlals	r0, lr, r0, r1
878036d0:	92400030 	subls	r0, r0, #48	; 0x30
878036d4:	9afffff9 	bls	878036c0 <atoi+0x54>
878036d8:	e3720001 	cmn	r2, #1
878036dc:	02600000 	rsbeq	r0, r0, #0
878036e0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

878036e4 <atol>:
878036e4:	e5d01000 	ldrb	r1, [r0]
878036e8:	e2413009 	sub	r3, r1, #9
878036ec:	e3510020 	cmp	r1, #32
878036f0:	13530004 	cmpne	r3, #4
878036f4:	93a03001 	movls	r3, #1
878036f8:	83a03000 	movhi	r3, #0
878036fc:	92800001 	addls	r0, r0, #1
87803700:	9afffff7 	bls	878036e4 <atol>
87803704:	e351002b 	cmp	r1, #43	; 0x2b
87803708:	e1a02000 	mov	r2, r0
8780370c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
87803710:	0a000002 	beq	87803720 <atol+0x3c>
87803714:	e351002d 	cmp	r1, #45	; 0x2d
87803718:	1a000001 	bne	87803724 <atol+0x40>
8780371c:	e3e03000 	mvn	r3, #0
87803720:	e2822001 	add	r2, r2, #1
87803724:	e2422001 	sub	r2, r2, #1
87803728:	e3a00000 	mov	r0, #0
8780372c:	e3a0e00a 	mov	lr, #10
87803730:	e5f21001 	ldrb	r1, [r2, #1]!
87803734:	e241c030 	sub	ip, r1, #48	; 0x30
87803738:	e35c0009 	cmp	ip, #9
8780373c:	9020109e 	mlals	r0, lr, r0, r1
87803740:	92400030 	subls	r0, r0, #48	; 0x30
87803744:	9afffff9 	bls	87803730 <atol+0x4c>
87803748:	e3530000 	cmp	r3, #0
8780374c:	12600000 	rsbne	r0, r0, #0
87803750:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

87803754 <malloc>:
87803754:	eafffb18 	b	878023bc <rt_malloc>

87803758 <free>:
87803758:	eafffb85 	b	87802574 <rt_free>

8780375c <realloc>:
8780375c:	eafffba8 	b	87802604 <rt_realloc>

87803760 <calloc>:
87803760:	eafffb78 	b	87802548 <rt_calloc>
87803764:	00000000 	andeq	r0, r0, r0

87803768 <__aeabi_uidiv>:
87803768:	1e4a      	subs	r2, r1, #1
8780376a:	bf08      	it	eq
8780376c:	4770      	bxeq	lr
8780376e:	f0c0 8124 	bcc.w	878039ba <__aeabi_uidiv+0x252>
87803772:	4288      	cmp	r0, r1
87803774:	f240 8116 	bls.w	878039a4 <__aeabi_uidiv+0x23c>
87803778:	4211      	tst	r1, r2
8780377a:	f000 8117 	beq.w	878039ac <__aeabi_uidiv+0x244>
8780377e:	fab0 f380 	clz	r3, r0
87803782:	fab1 f281 	clz	r2, r1
87803786:	eba2 0303 	sub.w	r3, r2, r3
8780378a:	f1c3 031f 	rsb	r3, r3, #31
8780378e:	a204      	add	r2, pc, #16	; (adr r2, 878037a0 <__aeabi_uidiv+0x38>)
87803790:	eb02 1303 	add.w	r3, r2, r3, lsl #4
87803794:	f04f 0200 	mov.w	r2, #0
87803798:	469f      	mov	pc, r3
8780379a:	bf00      	nop
8780379c:	f3af 8000 	nop.w
878037a0:	ebb0 7fc1 	cmp.w	r0, r1, lsl #31
878037a4:	bf00      	nop
878037a6:	eb42 0202 	adc.w	r2, r2, r2
878037aa:	bf28      	it	cs
878037ac:	eba0 70c1 	subcs.w	r0, r0, r1, lsl #31
878037b0:	ebb0 7f81 	cmp.w	r0, r1, lsl #30
878037b4:	bf00      	nop
878037b6:	eb42 0202 	adc.w	r2, r2, r2
878037ba:	bf28      	it	cs
878037bc:	eba0 7081 	subcs.w	r0, r0, r1, lsl #30
878037c0:	ebb0 7f41 	cmp.w	r0, r1, lsl #29
878037c4:	bf00      	nop
878037c6:	eb42 0202 	adc.w	r2, r2, r2
878037ca:	bf28      	it	cs
878037cc:	eba0 7041 	subcs.w	r0, r0, r1, lsl #29
878037d0:	ebb0 7f01 	cmp.w	r0, r1, lsl #28
878037d4:	bf00      	nop
878037d6:	eb42 0202 	adc.w	r2, r2, r2
878037da:	bf28      	it	cs
878037dc:	eba0 7001 	subcs.w	r0, r0, r1, lsl #28
878037e0:	ebb0 6fc1 	cmp.w	r0, r1, lsl #27
878037e4:	bf00      	nop
878037e6:	eb42 0202 	adc.w	r2, r2, r2
878037ea:	bf28      	it	cs
878037ec:	eba0 60c1 	subcs.w	r0, r0, r1, lsl #27
878037f0:	ebb0 6f81 	cmp.w	r0, r1, lsl #26
878037f4:	bf00      	nop
878037f6:	eb42 0202 	adc.w	r2, r2, r2
878037fa:	bf28      	it	cs
878037fc:	eba0 6081 	subcs.w	r0, r0, r1, lsl #26
87803800:	ebb0 6f41 	cmp.w	r0, r1, lsl #25
87803804:	bf00      	nop
87803806:	eb42 0202 	adc.w	r2, r2, r2
8780380a:	bf28      	it	cs
8780380c:	eba0 6041 	subcs.w	r0, r0, r1, lsl #25
87803810:	ebb0 6f01 	cmp.w	r0, r1, lsl #24
87803814:	bf00      	nop
87803816:	eb42 0202 	adc.w	r2, r2, r2
8780381a:	bf28      	it	cs
8780381c:	eba0 6001 	subcs.w	r0, r0, r1, lsl #24
87803820:	ebb0 5fc1 	cmp.w	r0, r1, lsl #23
87803824:	bf00      	nop
87803826:	eb42 0202 	adc.w	r2, r2, r2
8780382a:	bf28      	it	cs
8780382c:	eba0 50c1 	subcs.w	r0, r0, r1, lsl #23
87803830:	ebb0 5f81 	cmp.w	r0, r1, lsl #22
87803834:	bf00      	nop
87803836:	eb42 0202 	adc.w	r2, r2, r2
8780383a:	bf28      	it	cs
8780383c:	eba0 5081 	subcs.w	r0, r0, r1, lsl #22
87803840:	ebb0 5f41 	cmp.w	r0, r1, lsl #21
87803844:	bf00      	nop
87803846:	eb42 0202 	adc.w	r2, r2, r2
8780384a:	bf28      	it	cs
8780384c:	eba0 5041 	subcs.w	r0, r0, r1, lsl #21
87803850:	ebb0 5f01 	cmp.w	r0, r1, lsl #20
87803854:	bf00      	nop
87803856:	eb42 0202 	adc.w	r2, r2, r2
8780385a:	bf28      	it	cs
8780385c:	eba0 5001 	subcs.w	r0, r0, r1, lsl #20
87803860:	ebb0 4fc1 	cmp.w	r0, r1, lsl #19
87803864:	bf00      	nop
87803866:	eb42 0202 	adc.w	r2, r2, r2
8780386a:	bf28      	it	cs
8780386c:	eba0 40c1 	subcs.w	r0, r0, r1, lsl #19
87803870:	ebb0 4f81 	cmp.w	r0, r1, lsl #18
87803874:	bf00      	nop
87803876:	eb42 0202 	adc.w	r2, r2, r2
8780387a:	bf28      	it	cs
8780387c:	eba0 4081 	subcs.w	r0, r0, r1, lsl #18
87803880:	ebb0 4f41 	cmp.w	r0, r1, lsl #17
87803884:	bf00      	nop
87803886:	eb42 0202 	adc.w	r2, r2, r2
8780388a:	bf28      	it	cs
8780388c:	eba0 4041 	subcs.w	r0, r0, r1, lsl #17
87803890:	ebb0 4f01 	cmp.w	r0, r1, lsl #16
87803894:	bf00      	nop
87803896:	eb42 0202 	adc.w	r2, r2, r2
8780389a:	bf28      	it	cs
8780389c:	eba0 4001 	subcs.w	r0, r0, r1, lsl #16
878038a0:	ebb0 3fc1 	cmp.w	r0, r1, lsl #15
878038a4:	bf00      	nop
878038a6:	eb42 0202 	adc.w	r2, r2, r2
878038aa:	bf28      	it	cs
878038ac:	eba0 30c1 	subcs.w	r0, r0, r1, lsl #15
878038b0:	ebb0 3f81 	cmp.w	r0, r1, lsl #14
878038b4:	bf00      	nop
878038b6:	eb42 0202 	adc.w	r2, r2, r2
878038ba:	bf28      	it	cs
878038bc:	eba0 3081 	subcs.w	r0, r0, r1, lsl #14
878038c0:	ebb0 3f41 	cmp.w	r0, r1, lsl #13
878038c4:	bf00      	nop
878038c6:	eb42 0202 	adc.w	r2, r2, r2
878038ca:	bf28      	it	cs
878038cc:	eba0 3041 	subcs.w	r0, r0, r1, lsl #13
878038d0:	ebb0 3f01 	cmp.w	r0, r1, lsl #12
878038d4:	bf00      	nop
878038d6:	eb42 0202 	adc.w	r2, r2, r2
878038da:	bf28      	it	cs
878038dc:	eba0 3001 	subcs.w	r0, r0, r1, lsl #12
878038e0:	ebb0 2fc1 	cmp.w	r0, r1, lsl #11
878038e4:	bf00      	nop
878038e6:	eb42 0202 	adc.w	r2, r2, r2
878038ea:	bf28      	it	cs
878038ec:	eba0 20c1 	subcs.w	r0, r0, r1, lsl #11
878038f0:	ebb0 2f81 	cmp.w	r0, r1, lsl #10
878038f4:	bf00      	nop
878038f6:	eb42 0202 	adc.w	r2, r2, r2
878038fa:	bf28      	it	cs
878038fc:	eba0 2081 	subcs.w	r0, r0, r1, lsl #10
87803900:	ebb0 2f41 	cmp.w	r0, r1, lsl #9
87803904:	bf00      	nop
87803906:	eb42 0202 	adc.w	r2, r2, r2
8780390a:	bf28      	it	cs
8780390c:	eba0 2041 	subcs.w	r0, r0, r1, lsl #9
87803910:	ebb0 2f01 	cmp.w	r0, r1, lsl #8
87803914:	bf00      	nop
87803916:	eb42 0202 	adc.w	r2, r2, r2
8780391a:	bf28      	it	cs
8780391c:	eba0 2001 	subcs.w	r0, r0, r1, lsl #8
87803920:	ebb0 1fc1 	cmp.w	r0, r1, lsl #7
87803924:	bf00      	nop
87803926:	eb42 0202 	adc.w	r2, r2, r2
8780392a:	bf28      	it	cs
8780392c:	eba0 10c1 	subcs.w	r0, r0, r1, lsl #7
87803930:	ebb0 1f81 	cmp.w	r0, r1, lsl #6
87803934:	bf00      	nop
87803936:	eb42 0202 	adc.w	r2, r2, r2
8780393a:	bf28      	it	cs
8780393c:	eba0 1081 	subcs.w	r0, r0, r1, lsl #6
87803940:	ebb0 1f41 	cmp.w	r0, r1, lsl #5
87803944:	bf00      	nop
87803946:	eb42 0202 	adc.w	r2, r2, r2
8780394a:	bf28      	it	cs
8780394c:	eba0 1041 	subcs.w	r0, r0, r1, lsl #5
87803950:	ebb0 1f01 	cmp.w	r0, r1, lsl #4
87803954:	bf00      	nop
87803956:	eb42 0202 	adc.w	r2, r2, r2
8780395a:	bf28      	it	cs
8780395c:	eba0 1001 	subcs.w	r0, r0, r1, lsl #4
87803960:	ebb0 0fc1 	cmp.w	r0, r1, lsl #3
87803964:	bf00      	nop
87803966:	eb42 0202 	adc.w	r2, r2, r2
8780396a:	bf28      	it	cs
8780396c:	eba0 00c1 	subcs.w	r0, r0, r1, lsl #3
87803970:	ebb0 0f81 	cmp.w	r0, r1, lsl #2
87803974:	bf00      	nop
87803976:	eb42 0202 	adc.w	r2, r2, r2
8780397a:	bf28      	it	cs
8780397c:	eba0 0081 	subcs.w	r0, r0, r1, lsl #2
87803980:	ebb0 0f41 	cmp.w	r0, r1, lsl #1
87803984:	bf00      	nop
87803986:	eb42 0202 	adc.w	r2, r2, r2
8780398a:	bf28      	it	cs
8780398c:	eba0 0041 	subcs.w	r0, r0, r1, lsl #1
87803990:	ebb0 0f01 	cmp.w	r0, r1
87803994:	bf00      	nop
87803996:	eb42 0202 	adc.w	r2, r2, r2
8780399a:	bf28      	it	cs
8780399c:	eba0 0001 	subcs.w	r0, r0, r1
878039a0:	4610      	mov	r0, r2
878039a2:	4770      	bx	lr
878039a4:	bf0c      	ite	eq
878039a6:	2001      	moveq	r0, #1
878039a8:	2000      	movne	r0, #0
878039aa:	4770      	bx	lr
878039ac:	fab1 f281 	clz	r2, r1
878039b0:	f1c2 021f 	rsb	r2, r2, #31
878039b4:	fa20 f002 	lsr.w	r0, r0, r2
878039b8:	4770      	bx	lr
878039ba:	b108      	cbz	r0, 878039c0 <__aeabi_uidiv+0x258>
878039bc:	f04f 30ff 	mov.w	r0, #4294967295
878039c0:	f000 b966 	b.w	87803c90 <__aeabi_idiv0>

878039c4 <__aeabi_uidivmod>:
878039c4:	2900      	cmp	r1, #0
878039c6:	d0f8      	beq.n	878039ba <__aeabi_uidiv+0x252>
878039c8:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
878039cc:	f7ff fecc 	bl	87803768 <__aeabi_uidiv>
878039d0:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
878039d4:	fb02 f300 	mul.w	r3, r2, r0
878039d8:	eba1 0103 	sub.w	r1, r1, r3
878039dc:	4770      	bx	lr
878039de:	bf00      	nop

878039e0 <__aeabi_idiv>:
878039e0:	2900      	cmp	r1, #0
878039e2:	f000 813e 	beq.w	87803c62 <.divsi3_skip_div0_test+0x27c>

878039e6 <.divsi3_skip_div0_test>:
878039e6:	ea80 0c01 	eor.w	ip, r0, r1
878039ea:	bf48      	it	mi
878039ec:	4249      	negmi	r1, r1
878039ee:	1e4a      	subs	r2, r1, #1
878039f0:	f000 811f 	beq.w	87803c32 <.divsi3_skip_div0_test+0x24c>
878039f4:	0003      	movs	r3, r0
878039f6:	bf48      	it	mi
878039f8:	4243      	negmi	r3, r0
878039fa:	428b      	cmp	r3, r1
878039fc:	f240 811e 	bls.w	87803c3c <.divsi3_skip_div0_test+0x256>
87803a00:	4211      	tst	r1, r2
87803a02:	f000 8123 	beq.w	87803c4c <.divsi3_skip_div0_test+0x266>
87803a06:	fab3 f283 	clz	r2, r3
87803a0a:	fab1 f081 	clz	r0, r1
87803a0e:	eba0 0202 	sub.w	r2, r0, r2
87803a12:	f1c2 021f 	rsb	r2, r2, #31
87803a16:	a004      	add	r0, pc, #16	; (adr r0, 87803a28 <.divsi3_skip_div0_test+0x42>)
87803a18:	eb00 1202 	add.w	r2, r0, r2, lsl #4
87803a1c:	f04f 0000 	mov.w	r0, #0
87803a20:	4697      	mov	pc, r2
87803a22:	bf00      	nop
87803a24:	f3af 8000 	nop.w
87803a28:	ebb3 7fc1 	cmp.w	r3, r1, lsl #31
87803a2c:	bf00      	nop
87803a2e:	eb40 0000 	adc.w	r0, r0, r0
87803a32:	bf28      	it	cs
87803a34:	eba3 73c1 	subcs.w	r3, r3, r1, lsl #31
87803a38:	ebb3 7f81 	cmp.w	r3, r1, lsl #30
87803a3c:	bf00      	nop
87803a3e:	eb40 0000 	adc.w	r0, r0, r0
87803a42:	bf28      	it	cs
87803a44:	eba3 7381 	subcs.w	r3, r3, r1, lsl #30
87803a48:	ebb3 7f41 	cmp.w	r3, r1, lsl #29
87803a4c:	bf00      	nop
87803a4e:	eb40 0000 	adc.w	r0, r0, r0
87803a52:	bf28      	it	cs
87803a54:	eba3 7341 	subcs.w	r3, r3, r1, lsl #29
87803a58:	ebb3 7f01 	cmp.w	r3, r1, lsl #28
87803a5c:	bf00      	nop
87803a5e:	eb40 0000 	adc.w	r0, r0, r0
87803a62:	bf28      	it	cs
87803a64:	eba3 7301 	subcs.w	r3, r3, r1, lsl #28
87803a68:	ebb3 6fc1 	cmp.w	r3, r1, lsl #27
87803a6c:	bf00      	nop
87803a6e:	eb40 0000 	adc.w	r0, r0, r0
87803a72:	bf28      	it	cs
87803a74:	eba3 63c1 	subcs.w	r3, r3, r1, lsl #27
87803a78:	ebb3 6f81 	cmp.w	r3, r1, lsl #26
87803a7c:	bf00      	nop
87803a7e:	eb40 0000 	adc.w	r0, r0, r0
87803a82:	bf28      	it	cs
87803a84:	eba3 6381 	subcs.w	r3, r3, r1, lsl #26
87803a88:	ebb3 6f41 	cmp.w	r3, r1, lsl #25
87803a8c:	bf00      	nop
87803a8e:	eb40 0000 	adc.w	r0, r0, r0
87803a92:	bf28      	it	cs
87803a94:	eba3 6341 	subcs.w	r3, r3, r1, lsl #25
87803a98:	ebb3 6f01 	cmp.w	r3, r1, lsl #24
87803a9c:	bf00      	nop
87803a9e:	eb40 0000 	adc.w	r0, r0, r0
87803aa2:	bf28      	it	cs
87803aa4:	eba3 6301 	subcs.w	r3, r3, r1, lsl #24
87803aa8:	ebb3 5fc1 	cmp.w	r3, r1, lsl #23
87803aac:	bf00      	nop
87803aae:	eb40 0000 	adc.w	r0, r0, r0
87803ab2:	bf28      	it	cs
87803ab4:	eba3 53c1 	subcs.w	r3, r3, r1, lsl #23
87803ab8:	ebb3 5f81 	cmp.w	r3, r1, lsl #22
87803abc:	bf00      	nop
87803abe:	eb40 0000 	adc.w	r0, r0, r0
87803ac2:	bf28      	it	cs
87803ac4:	eba3 5381 	subcs.w	r3, r3, r1, lsl #22
87803ac8:	ebb3 5f41 	cmp.w	r3, r1, lsl #21
87803acc:	bf00      	nop
87803ace:	eb40 0000 	adc.w	r0, r0, r0
87803ad2:	bf28      	it	cs
87803ad4:	eba3 5341 	subcs.w	r3, r3, r1, lsl #21
87803ad8:	ebb3 5f01 	cmp.w	r3, r1, lsl #20
87803adc:	bf00      	nop
87803ade:	eb40 0000 	adc.w	r0, r0, r0
87803ae2:	bf28      	it	cs
87803ae4:	eba3 5301 	subcs.w	r3, r3, r1, lsl #20
87803ae8:	ebb3 4fc1 	cmp.w	r3, r1, lsl #19
87803aec:	bf00      	nop
87803aee:	eb40 0000 	adc.w	r0, r0, r0
87803af2:	bf28      	it	cs
87803af4:	eba3 43c1 	subcs.w	r3, r3, r1, lsl #19
87803af8:	ebb3 4f81 	cmp.w	r3, r1, lsl #18
87803afc:	bf00      	nop
87803afe:	eb40 0000 	adc.w	r0, r0, r0
87803b02:	bf28      	it	cs
87803b04:	eba3 4381 	subcs.w	r3, r3, r1, lsl #18
87803b08:	ebb3 4f41 	cmp.w	r3, r1, lsl #17
87803b0c:	bf00      	nop
87803b0e:	eb40 0000 	adc.w	r0, r0, r0
87803b12:	bf28      	it	cs
87803b14:	eba3 4341 	subcs.w	r3, r3, r1, lsl #17
87803b18:	ebb3 4f01 	cmp.w	r3, r1, lsl #16
87803b1c:	bf00      	nop
87803b1e:	eb40 0000 	adc.w	r0, r0, r0
87803b22:	bf28      	it	cs
87803b24:	eba3 4301 	subcs.w	r3, r3, r1, lsl #16
87803b28:	ebb3 3fc1 	cmp.w	r3, r1, lsl #15
87803b2c:	bf00      	nop
87803b2e:	eb40 0000 	adc.w	r0, r0, r0
87803b32:	bf28      	it	cs
87803b34:	eba3 33c1 	subcs.w	r3, r3, r1, lsl #15
87803b38:	ebb3 3f81 	cmp.w	r3, r1, lsl #14
87803b3c:	bf00      	nop
87803b3e:	eb40 0000 	adc.w	r0, r0, r0
87803b42:	bf28      	it	cs
87803b44:	eba3 3381 	subcs.w	r3, r3, r1, lsl #14
87803b48:	ebb3 3f41 	cmp.w	r3, r1, lsl #13
87803b4c:	bf00      	nop
87803b4e:	eb40 0000 	adc.w	r0, r0, r0
87803b52:	bf28      	it	cs
87803b54:	eba3 3341 	subcs.w	r3, r3, r1, lsl #13
87803b58:	ebb3 3f01 	cmp.w	r3, r1, lsl #12
87803b5c:	bf00      	nop
87803b5e:	eb40 0000 	adc.w	r0, r0, r0
87803b62:	bf28      	it	cs
87803b64:	eba3 3301 	subcs.w	r3, r3, r1, lsl #12
87803b68:	ebb3 2fc1 	cmp.w	r3, r1, lsl #11
87803b6c:	bf00      	nop
87803b6e:	eb40 0000 	adc.w	r0, r0, r0
87803b72:	bf28      	it	cs
87803b74:	eba3 23c1 	subcs.w	r3, r3, r1, lsl #11
87803b78:	ebb3 2f81 	cmp.w	r3, r1, lsl #10
87803b7c:	bf00      	nop
87803b7e:	eb40 0000 	adc.w	r0, r0, r0
87803b82:	bf28      	it	cs
87803b84:	eba3 2381 	subcs.w	r3, r3, r1, lsl #10
87803b88:	ebb3 2f41 	cmp.w	r3, r1, lsl #9
87803b8c:	bf00      	nop
87803b8e:	eb40 0000 	adc.w	r0, r0, r0
87803b92:	bf28      	it	cs
87803b94:	eba3 2341 	subcs.w	r3, r3, r1, lsl #9
87803b98:	ebb3 2f01 	cmp.w	r3, r1, lsl #8
87803b9c:	bf00      	nop
87803b9e:	eb40 0000 	adc.w	r0, r0, r0
87803ba2:	bf28      	it	cs
87803ba4:	eba3 2301 	subcs.w	r3, r3, r1, lsl #8
87803ba8:	ebb3 1fc1 	cmp.w	r3, r1, lsl #7
87803bac:	bf00      	nop
87803bae:	eb40 0000 	adc.w	r0, r0, r0
87803bb2:	bf28      	it	cs
87803bb4:	eba3 13c1 	subcs.w	r3, r3, r1, lsl #7
87803bb8:	ebb3 1f81 	cmp.w	r3, r1, lsl #6
87803bbc:	bf00      	nop
87803bbe:	eb40 0000 	adc.w	r0, r0, r0
87803bc2:	bf28      	it	cs
87803bc4:	eba3 1381 	subcs.w	r3, r3, r1, lsl #6
87803bc8:	ebb3 1f41 	cmp.w	r3, r1, lsl #5
87803bcc:	bf00      	nop
87803bce:	eb40 0000 	adc.w	r0, r0, r0
87803bd2:	bf28      	it	cs
87803bd4:	eba3 1341 	subcs.w	r3, r3, r1, lsl #5
87803bd8:	ebb3 1f01 	cmp.w	r3, r1, lsl #4
87803bdc:	bf00      	nop
87803bde:	eb40 0000 	adc.w	r0, r0, r0
87803be2:	bf28      	it	cs
87803be4:	eba3 1301 	subcs.w	r3, r3, r1, lsl #4
87803be8:	ebb3 0fc1 	cmp.w	r3, r1, lsl #3
87803bec:	bf00      	nop
87803bee:	eb40 0000 	adc.w	r0, r0, r0
87803bf2:	bf28      	it	cs
87803bf4:	eba3 03c1 	subcs.w	r3, r3, r1, lsl #3
87803bf8:	ebb3 0f81 	cmp.w	r3, r1, lsl #2
87803bfc:	bf00      	nop
87803bfe:	eb40 0000 	adc.w	r0, r0, r0
87803c02:	bf28      	it	cs
87803c04:	eba3 0381 	subcs.w	r3, r3, r1, lsl #2
87803c08:	ebb3 0f41 	cmp.w	r3, r1, lsl #1
87803c0c:	bf00      	nop
87803c0e:	eb40 0000 	adc.w	r0, r0, r0
87803c12:	bf28      	it	cs
87803c14:	eba3 0341 	subcs.w	r3, r3, r1, lsl #1
87803c18:	ebb3 0f01 	cmp.w	r3, r1
87803c1c:	bf00      	nop
87803c1e:	eb40 0000 	adc.w	r0, r0, r0
87803c22:	bf28      	it	cs
87803c24:	eba3 0301 	subcs.w	r3, r3, r1
87803c28:	f1bc 0f00 	cmp.w	ip, #0
87803c2c:	bf48      	it	mi
87803c2e:	4240      	negmi	r0, r0
87803c30:	4770      	bx	lr
87803c32:	ea9c 0f00 	teq	ip, r0
87803c36:	bf48      	it	mi
87803c38:	4240      	negmi	r0, r0
87803c3a:	4770      	bx	lr
87803c3c:	bf38      	it	cc
87803c3e:	2000      	movcc	r0, #0
87803c40:	bf04      	itt	eq
87803c42:	ea4f 70ec 	moveq.w	r0, ip, asr #31
87803c46:	f040 0001 	orreq.w	r0, r0, #1
87803c4a:	4770      	bx	lr
87803c4c:	fab1 f281 	clz	r2, r1
87803c50:	f1c2 021f 	rsb	r2, r2, #31
87803c54:	f1bc 0f00 	cmp.w	ip, #0
87803c58:	fa23 f002 	lsr.w	r0, r3, r2
87803c5c:	bf48      	it	mi
87803c5e:	4240      	negmi	r0, r0
87803c60:	4770      	bx	lr
87803c62:	2800      	cmp	r0, #0
87803c64:	bfc8      	it	gt
87803c66:	f06f 4000 	mvngt.w	r0, #2147483648	; 0x80000000
87803c6a:	bfb8      	it	lt
87803c6c:	f04f 4000 	movlt.w	r0, #2147483648	; 0x80000000
87803c70:	f000 b80e 	b.w	87803c90 <__aeabi_idiv0>

87803c74 <__aeabi_idivmod>:
87803c74:	2900      	cmp	r1, #0
87803c76:	d0f4      	beq.n	87803c62 <.divsi3_skip_div0_test+0x27c>
87803c78:	e92d 4003 	stmdb	sp!, {r0, r1, lr}
87803c7c:	f7ff feb3 	bl	878039e6 <.divsi3_skip_div0_test>
87803c80:	e8bd 4006 	ldmia.w	sp!, {r1, r2, lr}
87803c84:	fb02 f300 	mul.w	r3, r2, r0
87803c88:	eba1 0103 	sub.w	r1, r1, r3
87803c8c:	4770      	bx	lr
87803c8e:	bf00      	nop

87803c90 <__aeabi_idiv0>:
87803c90:	4770      	bx	lr
87803c92:	bf00      	nop

87803c94 <register_fini>:
87803c94:	f240 0300 	movw	r3, #0
87803c98:	f2c0 0300 	movt	r3, #0
87803c9c:	b12b      	cbz	r3, 87803caa <register_fini+0x16>
87803c9e:	f643 40b9 	movw	r0, #15545	; 0x3cb9
87803ca2:	f2c8 7080 	movt	r0, #34688	; 0x8780
87803ca6:	f000 b801 	b.w	87803cac <atexit>
87803caa:	4770      	bx	lr

87803cac <atexit>:
87803cac:	2300      	movs	r3, #0
87803cae:	4601      	mov	r1, r0
87803cb0:	461a      	mov	r2, r3
87803cb2:	4618      	mov	r0, r3
87803cb4:	f000 b81a 	b.w	87803cec <__register_exitproc>

87803cb8 <__libc_fini_array>:
87803cb8:	b538      	push	{r3, r4, r5, lr}
87803cba:	f244 3484 	movw	r4, #17284	; 0x4384
87803cbe:	f244 3580 	movw	r5, #17280	; 0x4380
87803cc2:	f2c8 7480 	movt	r4, #34688	; 0x8780
87803cc6:	f2c8 7580 	movt	r5, #34688	; 0x8780
87803cca:	1b64      	subs	r4, r4, r5
87803ccc:	10a4      	asrs	r4, r4, #2
87803cce:	bf18      	it	ne
87803cd0:	eb05 0584 	addne.w	r5, r5, r4, lsl #2
87803cd4:	d005      	beq.n	87803ce2 <__libc_fini_array+0x2a>
87803cd6:	3c01      	subs	r4, #1
87803cd8:	f855 3d04 	ldr.w	r3, [r5, #-4]!
87803cdc:	4798      	blx	r3
87803cde:	2c00      	cmp	r4, #0
87803ce0:	d1f9      	bne.n	87803cd6 <__libc_fini_array+0x1e>
87803ce2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
87803ce6:	f000 b857 	b.w	87803d98 <_fini>
87803cea:	bf00      	nop

87803cec <__register_exitproc>:
87803cec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
87803cf0:	f643 64dc 	movw	r4, #16092	; 0x3edc
87803cf4:	f2c8 7480 	movt	r4, #34688	; 0x8780
87803cf8:	4606      	mov	r6, r0
87803cfa:	6825      	ldr	r5, [r4, #0]
87803cfc:	460f      	mov	r7, r1
87803cfe:	4690      	mov	r8, r2
87803d00:	4699      	mov	r9, r3
87803d02:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
87803d06:	2c00      	cmp	r4, #0
87803d08:	d03d      	beq.n	87803d86 <__register_exitproc+0x9a>
87803d0a:	6860      	ldr	r0, [r4, #4]
87803d0c:	281f      	cmp	r0, #31
87803d0e:	bfd8      	it	le
87803d10:	f100 0e01 	addle.w	lr, r0, #1
87803d14:	dd18      	ble.n	87803d48 <__register_exitproc+0x5c>
87803d16:	f243 7354 	movw	r3, #14164	; 0x3754
87803d1a:	f2c8 7380 	movt	r3, #34688	; 0x8780
87803d1e:	b3bb      	cbz	r3, 87803d90 <__register_exitproc+0xa4>
87803d20:	f44f 70c8 	mov.w	r0, #400	; 0x190
87803d24:	f7ff ed16 	blx	87803754 <malloc>
87803d28:	4604      	mov	r4, r0
87803d2a:	b388      	cbz	r0, 87803d90 <__register_exitproc+0xa4>
87803d2c:	f8d5 2148 	ldr.w	r2, [r5, #328]	; 0x148
87803d30:	2100      	movs	r1, #0
87803d32:	f04f 0e01 	mov.w	lr, #1
87803d36:	6041      	str	r1, [r0, #4]
87803d38:	4608      	mov	r0, r1
87803d3a:	6022      	str	r2, [r4, #0]
87803d3c:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
87803d40:	f8c4 1188 	str.w	r1, [r4, #392]	; 0x188
87803d44:	f8c4 118c 	str.w	r1, [r4, #396]	; 0x18c
87803d48:	b1ae      	cbz	r6, 87803d76 <__register_exitproc+0x8a>
87803d4a:	eb04 0580 	add.w	r5, r4, r0, lsl #2
87803d4e:	2201      	movs	r2, #1
87803d50:	2e02      	cmp	r6, #2
87803d52:	f8c5 8088 	str.w	r8, [r5, #136]	; 0x88
87803d56:	fa02 f200 	lsl.w	r2, r2, r0
87803d5a:	f8d4 3188 	ldr.w	r3, [r4, #392]	; 0x188
87803d5e:	ea43 0302 	orr.w	r3, r3, r2
87803d62:	f8c4 3188 	str.w	r3, [r4, #392]	; 0x188
87803d66:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
87803d6a:	bf02      	ittt	eq
87803d6c:	f8d4 318c 	ldreq.w	r3, [r4, #396]	; 0x18c
87803d70:	431a      	orreq	r2, r3
87803d72:	f8c4 218c 	streq.w	r2, [r4, #396]	; 0x18c
87803d76:	1c83      	adds	r3, r0, #2
87803d78:	f8c4 e004 	str.w	lr, [r4, #4]
87803d7c:	2000      	movs	r0, #0
87803d7e:	f844 7023 	str.w	r7, [r4, r3, lsl #2]
87803d82:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
87803d86:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
87803d8a:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
87803d8e:	e7bc      	b.n	87803d0a <__register_exitproc+0x1e>
87803d90:	f04f 30ff 	mov.w	r0, #4294967295
87803d94:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

87803d98 <_fini>:
87803d98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
87803d9a:	bf00      	nop
87803d9c:	bcf8      	pop	{r3, r4, r5, r6, r7}
87803d9e:	bc08      	pop	{r3}
87803da0:	469e      	mov	lr, r3
87803da2:	4770      	bx	lr

Disassembly of section .init:

87803da4 <_init>:
87803da4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
87803da6:	bf00      	nop
