; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L037\L037\L037.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG5561	DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG5562	DB	'a[%d]=%d', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
PUBLIC	__xmm@00000006000000040000000200000000
PUBLIC	__xmm@0000000e0000000c0000000a00000008
PUBLIC	__xmm@00000016000000140000001200000010
PUBLIC	__xmm@0000001e0000001c0000001a00000018
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	___security_cookie:DWORD
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT __xmm@0000001e0000001c0000001a00000018
CONST	SEGMENT
__xmm@0000001e0000001c0000001a00000018 DB 018H, 00H, 00H, 00H, 01aH, 00H, 00H
	DB	00H, 01cH, 00H, 00H, 00H, 01eH, 00H, 00H, 00H
CONST	ENDS
;	COMDAT __xmm@00000016000000140000001200000010
CONST	SEGMENT
__xmm@00000016000000140000001200000010 DB 010H, 00H, 00H, 00H, 012H, 00H, 00H
	DB	00H, 014H, 00H, 00H, 00H, 016H, 00H, 00H, 00H
CONST	ENDS
;	COMDAT __xmm@0000000e0000000c0000000a00000008
CONST	SEGMENT
__xmm@0000000e0000000c0000000a00000008 DB 08H, 00H, 00H, 00H, 0aH, 00H, 00H
	DB	00H, 0cH, 00H, 00H, 00H, 0eH, 00H, 00H, 00H
CONST	ENDS
;	COMDAT __xmm@00000006000000040000000200000000
CONST	SEGMENT
__xmm@00000006000000040000000200000000 DB 00H, 00H, 00H, 00H, 02H, 00H, 00H
	DB	00H, 04H, 00H, 00H, 00H, 06H, 00H, 00H, 00H
CONST	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
_a$ = -84						; size = 80
__$ArrayPad$ = -4					; size = 4
_main	PROC
; File C:\Users\libit\source\repos\L037\L037\L037.cpp
; Line 7
	sub	esp, 84					; 00000054H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, esp
	mov	DWORD PTR __$ArrayPad$[esp+84], eax
; Line 8
	push	OFFSET $SG5561
	call	_printf
; Line 15
	movaps	xmm0, XMMWORD PTR __xmm@00000006000000040000000200000000
	lea	ecx, DWORD PTR _a$[esp+152]
	movups	XMMWORD PTR _a$[esp+88], xmm0
	add	esp, 4
	mov	eax, 32					; 00000020H
	movaps	xmm0, XMMWORD PTR __xmm@0000000e0000000c0000000a00000008
	movups	XMMWORD PTR _a$[esp+100], xmm0
	movaps	xmm0, XMMWORD PTR __xmm@00000016000000140000001200000010
	movups	XMMWORD PTR _a$[esp+116], xmm0
	movaps	xmm0, XMMWORD PTR __xmm@0000001e0000001c0000001a00000018
	movups	XMMWORD PTR _a$[esp+132], xmm0
$LL13@main:
	mov	DWORD PTR [ecx], eax
	lea	ecx, DWORD PTR [ecx+4]
	add	eax, 2
	cmp	eax, 40					; 00000028H
	jl	SHORT $LL13@main
; Line 18
	push	esi
	xor	esi, esi
$LL7@main:
; Line 20
	push	DWORD PTR _a$[esp+esi*4+88]
	push	esi
	push	OFFSET $SG5562
	call	_printf
	inc	esi
	add	esp, 12					; 0000000cH
	cmp	esi, 20					; 00000014H
	jl	SHORT $LL7@main
; Line 22
	mov	ecx, DWORD PTR __$ArrayPad$[esp+88]
	xor	eax, eax
	pop	esi
	xor	ecx, esp
	call	@__security_check_cookie@4
	add	esp, 84					; 00000054H
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT _printf
_TEXT	SEGMENT
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
	push	esi
; Line 958
	mov	esi, DWORD PTR __Format$[esp]
	push	1
	call	___acrt_iob_func
	add	esp, 4
; Line 643
	lea	ecx, DWORD PTR __Format$[esp+4]
	push	ecx
	push	0
	push	esi
	push	eax
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	___stdio_common_vfprintf
	add	esp, 24					; 00000018H
; Line 960
	pop	esi
; Line 961
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 643
	push	DWORD PTR __ArgList$[esp-4]
	push	DWORD PTR __Locale$[esp]
	push	DWORD PTR __Format$[esp+4]
	push	DWORD PTR __Stream$[esp+8]
	call	___local_stdio_printf_options
	push	DWORD PTR [eax+4]
	push	DWORD PTR [eax]
	call	___stdio_common_vfprintf
	add	esp, 24					; 00000018H
; Line 644
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 88
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
