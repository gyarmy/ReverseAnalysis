; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L051\L051\L051.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG91983 DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG91985 DB	'The system time is: %02d:%02d', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	__imp__GetSystemTime@4:PROC
EXTRN	_free:PROC
EXTRN	_malloc:PROC
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_t$ = -4						; size = 4
_main	PROC
; File C:\Users\libit\source\repos\L051\L051\L051.cpp
; Line 8
	push	ebp
	mov	ebp, esp
	push	ecx
; Line 9
	push	OFFSET $SG91983
	call	_printf
	add	esp, 4
; Line 12
	push	16					; 00000010H
	call	_malloc
	add	esp, 4
	mov	DWORD PTR _t$[ebp], eax
; Line 14
	cmp	DWORD PTR _t$[ebp], 0
	je	SHORT $LN1@main
; Line 16
	mov	eax, DWORD PTR _t$[ebp]
	push	eax
	call	DWORD PTR __imp__GetSystemTime@4
; Line 17
	mov	ecx, 2
	imul	edx, ecx, 5
	mov	eax, DWORD PTR _t$[ebp]
	movzx	ecx, WORD PTR [eax+edx]
	push	ecx
	mov	edx, 2
	shl	edx, 2
	mov	eax, DWORD PTR _t$[ebp]
	movzx	ecx, WORD PTR [eax+edx]
	push	ecx
	push	OFFSET $SG91985
	call	_printf
	add	esp, 12					; 0000000cH
; Line 18
	mov	edx, DWORD PTR _t$[ebp]
	push	edx
	call	_free
	add	esp, 4
$LN1@main:
; Line 32
	xor	eax, eax
	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT _printf
_TEXT	SEGMENT
__Result$ = -8						; size = 4
__ArgList$ = -4						; size = 4
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 957
	lea	eax, DWORD PTR __Format$[ebp+4]
	mov	DWORD PTR __ArgList$[ebp], eax
; Line 958
	mov	ecx, DWORD PTR __ArgList$[ebp]
	push	ecx
	push	0
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	push	1
	call	___acrt_iob_func
	add	esp, 4
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H
	mov	DWORD PTR __Result$[ebp], eax
; Line 959
	mov	DWORD PTR __ArgList$[ebp], 0
; Line 960
	mov	eax, DWORD PTR __Result$[ebp]
; Line 961
	mov	esp, ebp
	pop	ebp
	ret	0
_printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 642
	push	ebp
	mov	ebp, esp
; Line 643
	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	mov	ecx, DWORD PTR __Locale$[ebp]
	push	ecx
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	mov	eax, DWORD PTR __Stream$[ebp]
	push	eax
	call	___local_stdio_printf_options
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR [eax]
	push	edx
	call	___stdio_common_vfprintf
	add	esp, 24					; 00000018H
; Line 644
	pop	ebp
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 86
	push	ebp
	mov	ebp, esp
; Line 88
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	pop	ebp
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
