
hello:     file format elf64-x86-64


Disassembly of section .init:

0000000000400488 <_init>:
  400488:	48 83 ec 08          	sub    $0x8,%rsp
  40048c:	48 8b 05 65 0b 20 00 	mov    0x200b65(%rip),%rax        # 600ff8 <__gmon_start__>
  400493:	48 85 c0             	test   %rax,%rax
  400496:	74 02                	je     40049a <_init+0x12>
  400498:	ff d0                	callq  *%rax
  40049a:	48 83 c4 08          	add    $0x8,%rsp
  40049e:	c3                   	retq   

Disassembly of section .plt:

00000000004004a0 <.plt>:
  4004a0:	ff 35 62 0b 20 00    	pushq  0x200b62(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004a6:	ff 25 64 0b 20 00    	jmpq   *0x200b64(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004b0 <puts@plt>:
  4004b0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4004b6:	68 00 00 00 00       	pushq  $0x0
  4004bb:	e9 e0 ff ff ff       	jmpq   4004a0 <.plt>

00000000004004c0 <printf@plt>:
  4004c0:	ff 25 5a 0b 20 00    	jmpq   *0x200b5a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  4004c6:	68 01 00 00 00       	pushq  $0x1
  4004cb:	e9 d0 ff ff ff       	jmpq   4004a0 <.plt>

00000000004004d0 <getchar@plt>:
  4004d0:	ff 25 52 0b 20 00    	jmpq   *0x200b52(%rip)        # 601028 <getchar@GLIBC_2.2.5>
  4004d6:	68 02 00 00 00       	pushq  $0x2
  4004db:	e9 c0 ff ff ff       	jmpq   4004a0 <.plt>

00000000004004e0 <exit@plt>:
  4004e0:	ff 25 4a 0b 20 00    	jmpq   *0x200b4a(%rip)        # 601030 <exit@GLIBC_2.2.5>
  4004e6:	68 03 00 00 00       	pushq  $0x3
  4004eb:	e9 b0 ff ff ff       	jmpq   4004a0 <.plt>

00000000004004f0 <sleep@plt>:
  4004f0:	ff 25 42 0b 20 00    	jmpq   *0x200b42(%rip)        # 601038 <sleep@GLIBC_2.2.5>
  4004f6:	68 04 00 00 00       	pushq  $0x4
  4004fb:	e9 a0 ff ff ff       	jmpq   4004a0 <.plt>

Disassembly of section .text:

0000000000400500 <_start>:
  400500:	31 ed                	xor    %ebp,%ebp
  400502:	49 89 d1             	mov    %rdx,%r9
  400505:	5e                   	pop    %rsi
  400506:	48 89 e2             	mov    %rsp,%rdx
  400509:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40050d:	50                   	push   %rax
  40050e:	54                   	push   %rsp
  40050f:	49 c7 c0 20 06 40 00 	mov    $0x400620,%r8
  400516:	48 c7 c1 b0 05 40 00 	mov    $0x4005b0,%rcx
  40051d:	48 c7 c7 32 05 40 00 	mov    $0x400532,%rdi
  400524:	ff 15 c6 0a 20 00    	callq  *0x200ac6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40052a:	f4                   	hlt    
  40052b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400530 <_dl_relocate_static_pie>:
  400530:	f3 c3                	repz retq 

0000000000400532 <main>:
  400532:	55                   	push   %rbp
  400533:	48 89 e5             	mov    %rsp,%rbp
  400536:	48 83 ec 20          	sub    $0x20,%rsp
  40053a:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40053d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400541:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
  400545:	74 14                	je     40055b <main+0x29>
  400547:	bf 38 06 40 00       	mov    $0x400638,%edi
  40054c:	e8 5f ff ff ff       	callq  4004b0 <puts@plt>
  400551:	bf 01 00 00 00       	mov    $0x1,%edi
  400556:	e8 85 ff ff ff       	callq  4004e0 <exit@plt>
  40055b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400562:	eb 39                	jmp    40059d <main+0x6b>
  400564:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400568:	48 83 c0 10          	add    $0x10,%rax
  40056c:	48 8b 10             	mov    (%rax),%rdx
  40056f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400573:	48 83 c0 08          	add    $0x8,%rax
  400577:	48 8b 00             	mov    (%rax),%rax
  40057a:	48 89 c6             	mov    %rax,%rsi
  40057d:	bf 57 06 40 00       	mov    $0x400657,%edi
  400582:	b8 00 00 00 00       	mov    $0x0,%eax
  400587:	e8 34 ff ff ff       	callq  4004c0 <printf@plt>
  40058c:	8b 05 b2 0a 20 00    	mov    0x200ab2(%rip),%eax        # 601044 <sleepsecs>
  400592:	89 c7                	mov    %eax,%edi
  400594:	e8 57 ff ff ff       	callq  4004f0 <sleep@plt>
  400599:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40059d:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  4005a1:	7e c1                	jle    400564 <main+0x32>
  4005a3:	e8 28 ff ff ff       	callq  4004d0 <getchar@plt>
  4005a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4005ad:	c9                   	leaveq 
  4005ae:	c3                   	retq   
  4005af:	90                   	nop

00000000004005b0 <__libc_csu_init>:
  4005b0:	41 57                	push   %r15
  4005b2:	41 56                	push   %r14
  4005b4:	49 89 d7             	mov    %rdx,%r15
  4005b7:	41 55                	push   %r13
  4005b9:	41 54                	push   %r12
  4005bb:	4c 8d 25 8e 08 20 00 	lea    0x20088e(%rip),%r12        # 600e50 <_DYNAMIC>
  4005c2:	55                   	push   %rbp
  4005c3:	48 8d 2d 86 08 20 00 	lea    0x200886(%rip),%rbp        # 600e50 <_DYNAMIC>
  4005ca:	53                   	push   %rbx
  4005cb:	41 89 fd             	mov    %edi,%r13d
  4005ce:	49 89 f6             	mov    %rsi,%r14
  4005d1:	4c 29 e5             	sub    %r12,%rbp
  4005d4:	48 83 ec 08          	sub    $0x8,%rsp
  4005d8:	48 c1 fd 03          	sar    $0x3,%rbp
  4005dc:	e8 a7 fe ff ff       	callq  400488 <_init>
  4005e1:	48 85 ed             	test   %rbp,%rbp
  4005e4:	74 20                	je     400606 <__libc_csu_init+0x56>
  4005e6:	31 db                	xor    %ebx,%ebx
  4005e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4005ef:	00 
  4005f0:	4c 89 fa             	mov    %r15,%rdx
  4005f3:	4c 89 f6             	mov    %r14,%rsi
  4005f6:	44 89 ef             	mov    %r13d,%edi
  4005f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005fd:	48 83 c3 01          	add    $0x1,%rbx
  400601:	48 39 dd             	cmp    %rbx,%rbp
  400604:	75 ea                	jne    4005f0 <__libc_csu_init+0x40>
  400606:	48 83 c4 08          	add    $0x8,%rsp
  40060a:	5b                   	pop    %rbx
  40060b:	5d                   	pop    %rbp
  40060c:	41 5c                	pop    %r12
  40060e:	41 5d                	pop    %r13
  400610:	41 5e                	pop    %r14
  400612:	41 5f                	pop    %r15
  400614:	c3                   	retq   
  400615:	90                   	nop
  400616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40061d:	00 00 00 

0000000000400620 <__libc_csu_fini>:
  400620:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400624 <_fini>:
  400624:	48 83 ec 08          	sub    $0x8,%rsp
  400628:	48 83 c4 08          	add    $0x8,%rsp
  40062c:	c3                   	retq   
