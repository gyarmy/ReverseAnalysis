; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L035\L035\L035.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG5559	DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG5560	DB	'%f', 0aH, 00H
$SG5561	DB	'%f', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	?d_max@@YANNN@Z					; d_max
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
PUBLIC	__real@3ff3333333333333
PUBLIC	__real@400b333333333333
PUBLIC	__real@4016666666666666
PUBLIC	__real@c01f333333333333
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	__fltused:DWORD
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT __real@c01f333333333333
CONST	SEGMENT
__real@c01f333333333333 DQ 0c01f333333333333r	; -7.8
CONST	ENDS
;	COMDAT __real@4016666666666666
CONST	SEGMENT
__real@4016666666666666 DQ 04016666666666666r	; 5.6
CONST	ENDS
;	COMDAT __real@400b333333333333
CONST	SEGMENT
__real@400b333333333333 DQ 0400b333333333333r	; 3.4
CONST	ENDS
;	COMDAT __real@3ff3333333333333
CONST	SEGMENT
__real@3ff3333333333333 DQ 03ff3333333333333r	; 1.2
CONST	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_main	PROC
; File C:\Users\libit\source\repos\L035\L035\L035.cpp
; Line 12
	push	ebp
	mov	ebp, esp
; Line 13
	push	OFFSET $SG5559
	call	_printf
; Line 14
	add	esp, -4					; fffffffcH
	movsd	xmm0, QWORD PTR __real@400b333333333333
	movsd	QWORD PTR [esp], xmm0
	sub	esp, 8
	movsd	xmm0, QWORD PTR __real@3ff3333333333333
	movsd	QWORD PTR [esp], xmm0
	call	?d_max@@YANNN@Z				; d_max
	add	esp, 8
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5560
	call	_printf
; Line 15
	add	esp, 4
	movsd	xmm0, QWORD PTR __real@c01f333333333333
	movsd	QWORD PTR [esp], xmm0
	sub	esp, 8
	movsd	xmm0, QWORD PTR __real@4016666666666666
	movsd	QWORD PTR [esp], xmm0
	call	?d_max@@YANNN@Z				; d_max
	add	esp, 8
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5561
	call	_printf
	add	esp, 12					; 0000000cH
; Line 16
	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_a$ = 8							; size = 8
_b$ = 16						; size = 8
?d_max@@YANNN@Z PROC					; d_max
; File C:\Users\libit\source\repos\L035\L035\L035.cpp
; Line 6
	push	ebp
	mov	ebp, esp
; Line 7
	movsd	xmm0, QWORD PTR _a$[ebp]
	comisd	xmm0, QWORD PTR _b$[ebp]
	jbe	SHORT $LN2@d_max
	fld	QWORD PTR _a$[ebp]
	jmp	SHORT $LN3@d_max
	jmp	SHORT $LN3@d_max
$LN2@d_max:
; Line 8
	fld	QWORD PTR _b$[ebp]
$LN3@d_max:
; Line 9
	pop	ebp
	ret	0
?d_max@@YANNN@Z ENDP					; d_max
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
