; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L046\L046\L046.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG5571	DB	'Hello World!', 0aH, 00H
	ORG $+2
$SG5572	DB	'my_abs', 0aH, 00H
$SG5573	DB	'%f', 0aH, 00H
$SG5574	DB	'%f', 0aH, 00H
$SG5575	DB	'set_sign', 0aH, 00H
	ORG $+2
$SG5576	DB	'%f', 0aH, 00H
$SG5577	DB	'%f', 0aH, 00H
$SG5578	DB	'set_neg', 0aH, 00H
	ORG $+3
$SG5579	DB	'%f', 0aH, 00H
$SG5580	DB	'%f', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	?my_abs@@YAMM@Z					; my_abs
PUBLIC	?set_sign@@YAMM@Z				; set_sign
PUBLIC	?set_neg@@YAMM@Z				; set_neg
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
PUBLIC	__real@405edd2f20000000
PUBLIC	__real@c05edd2f20000000
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
EXTRN	__fltused:DWORD
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT __real@c05edd2f20000000
CONST	SEGMENT
__real@c05edd2f20000000 DQ 0c05edd2f20000000r	; -123.456
CONST	ENDS
;	COMDAT __real@405edd2f20000000
CONST	SEGMENT
__real@405edd2f20000000 DQ 0405edd2f20000000r	; 123.456
CONST	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
_main	PROC
; File C:\Users\libit\source\repos\L046\L046\L046.cpp
; Line 27
	push	OFFSET $SG5571
	call	_printf
; Line 28
	push	OFFSET $SG5572
	call	_printf
; Line 29
	fld	QWORD PTR __real@405edd2f20000000
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5573
	call	_printf
; Line 30
	fld	QWORD PTR __real@405edd2f20000000
	add	esp, 4
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5574
	call	_printf
; Line 32
	push	OFFSET $SG5575
	call	_printf
; Line 33
	fld	QWORD PTR __real@c05edd2f20000000
	add	esp, 8
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5576
	call	_printf
; Line 34
	fld	QWORD PTR __real@c05edd2f20000000
	add	esp, 4
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5577
	call	_printf
; Line 36
	push	OFFSET $SG5578
	call	_printf
; Line 37
	fld	QWORD PTR __real@c05edd2f20000000
	add	esp, 8
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5579
	call	_printf
; Line 38
	fld	QWORD PTR __real@405edd2f20000000
	add	esp, 4
	fstp	QWORD PTR [esp]
	push	OFFSET $SG5580
	call	_printf
	add	esp, 12					; 0000000cH
; Line 39
	xor	eax, eax
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
_temp$ = 8						; size = 4
_i$ = 8							; size = 4
?set_neg@@YAMM@Z PROC					; set_neg
; File C:\Users\libit\source\repos\L046\L046\L046.cpp
; Line 20
	xor	DWORD PTR _i$[esp-4], -2147483648	; 80000000H
; Line 21
	fld	DWORD PTR _temp$[esp-4]
; Line 22
	ret	0
?set_neg@@YAMM@Z ENDP					; set_neg
_TEXT	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
_temp$ = 8						; size = 4
_i$ = 8							; size = 4
?set_sign@@YAMM@Z PROC					; set_sign
; File C:\Users\libit\source\repos\L046\L046\L046.cpp
; Line 14
	or	DWORD PTR _i$[esp-4], -2147483648	; 80000000H
; Line 15
	fld	DWORD PTR _temp$[esp-4]
; Line 16
	ret	0
?set_sign@@YAMM@Z ENDP					; set_sign
_TEXT	ENDS
; Function compile flags: /Ogtpy
_TEXT	SEGMENT
_temp$ = 8						; size = 4
_i$ = 8							; size = 4
?my_abs@@YAMM@Z PROC					; my_abs
; File C:\Users\libit\source\repos\L046\L046\L046.cpp
; Line 8
	and	DWORD PTR _i$[esp-4], 2147483647	; 7fffffffH
; Line 9
	fld	DWORD PTR _temp$[esp-4]
; Line 10
	ret	0
?my_abs@@YAMM@Z ENDP					; my_abs
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
