; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L040\L040\L040.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?month@@3PAPBDA					; month
CONST	SEGMENT
$SG5741	DB	'January', 00H
$SG5742	DB	'February', 00H
	ORG $+3
$SG5743	DB	'March', 00H
	ORG $+2
$SG5744	DB	'April', 00H
	ORG $+2
$SG5745	DB	'May', 00H
$SG5746	DB	'June', 00H
	ORG $+3
$SG5747	DB	'July', 00H
	ORG $+3
$SG5748	DB	'August', 00H
	ORG $+1
$SG5749	DB	'September', 00H
	ORG $+2
$SG5750	DB	'October', 00H
$SG5751	DB	'November', 00H
	ORG $+3
$SG5752	DB	'December', 00H
	ORG $+3
$SG5760	DB	'L', 00H, '0', 00H, '4', 00H, '0', 00H, '.', 00H, 'c', 00H
	DB	'p', 00H, 'p', 00H, 00H, 00H
	ORG $+2
$SG5761	DB	'm', 00H, 'o', 00H, 'n', 00H, 't', 00H, 'h', 00H, '_', 00H
	DB	'n', 00H, 'u', 00H, 'm', 00H, ' ', 00H, '>', 00H, '=', 00H, ' '
	DB	00H, '0', 00H, 00H, 00H
	ORG $+2
$SG5762	DB	'L', 00H, '0', 00H, '4', 00H, '0', 00H, '.', 00H, 'c', 00H
	DB	'p', 00H, 'p', 00H, 00H, 00H
	ORG $+2
$SG5763	DB	'm', 00H, 'o', 00H, 'n', 00H, 't', 00H, 'h', 00H, '_', 00H
	DB	'n', 00H, 'u', 00H, 'm', 00H, ' ', 00H, '<', 00H, ' ', 00H, '1'
	DB	00H, '2', 00H, 00H, 00H
	ORG $+2
$SG5766	DB	'Hello World 1!', 0aH, 00H
$SG5767	DB	'%s', 0aH, 00H
$SG5768	DB	'Hello World 2!', 0aH, 00H
CONST	ENDS
_DATA	SEGMENT
?month@@3PAPBDA DD FLAT:$SG5741				; month
	DD	FLAT:$SG5742
	DD	FLAT:$SG5743
	DD	FLAT:$SG5744
	DD	FLAT:$SG5745
	DD	FLAT:$SG5746
	DD	FLAT:$SG5747
	DD	FLAT:$SG5748
	DD	FLAT:$SG5749
	DD	FLAT:$SG5750
	DD	FLAT:$SG5751
	DD	FLAT:$SG5752
_DATA	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	?get_month@@YAPBDH@Z				; get_month
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	__wassert:PROC
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_main	PROC
; File C:\Users\libit\source\repos\L040\L040\L040.cpp
; Line 29
	push	ebp
	mov	ebp, esp
; Line 30
	push	OFFSET $SG5766
	call	_printf
	add	esp, 4
; Line 31
	push	-2					; fffffffeH
	call	?get_month@@YAPBDH@Z			; get_month
	add	esp, 4
	push	eax
	push	OFFSET $SG5767
	call	_printf
	add	esp, 8
; Line 32
	push	OFFSET $SG5768
	call	_printf
	add	esp, 4
; Line 33
	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_month_num$ = 8						; size = 4
?get_month@@YAPBDH@Z PROC				; get_month
; File C:\Users\libit\source\repos\L040\L040\L040.cpp
; Line 22
	push	ebp
	mov	ebp, esp
; Line 23
	cmp	DWORD PTR _month_num$[ebp], 0
	jge	SHORT $LN3@get_month
	push	23					; 00000017H
	push	OFFSET $SG5760
	push	OFFSET $SG5761
	call	__wassert
	add	esp, 12					; 0000000cH
$LN3@get_month:
; Line 24
	cmp	DWORD PTR _month_num$[ebp], 12		; 0000000cH
	jl	SHORT $LN4@get_month
	push	24					; 00000018H
	push	OFFSET $SG5762
	push	OFFSET $SG5763
	call	__wassert
	add	esp, 12					; 0000000cH
$LN4@get_month:
; Line 25
	mov	edx, DWORD PTR _month_num$[ebp]
	mov	eax, DWORD PTR ?month@@3PAPBDA[edx*4]
; Line 26
	pop	ebp
	ret	0
?get_month@@YAPBDH@Z ENDP				; get_month
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
