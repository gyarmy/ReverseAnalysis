; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

	TITLE	C:\Users\libit\source\repos\L042\L042\L042.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?a@@3PAY1BE@BO@HA				; a
_BSS	SEGMENT
?a@@3PAY1BE@BO@HA DD 01770H DUP (?)			; a
_BSS	ENDS
CONST	SEGMENT
$SG5560	DB	'Hello World!', 0aH, 00H
CONST	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	?SetItem@@YAXHHHH@Z				; SetItem
PUBLIC	_main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	___acrt_iob_func:PROC
EXTRN	___stdio_common_vfprintf:PROC
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_main	PROC
; File C:\Users\libit\source\repos\L042\L042\L042.cpp
; Line 32
	push	ebp
	mov	ebp, esp
; Line 33
	push	OFFSET $SG5560
	call	_printf
	add	esp, 4
; Line 63
	xor	eax, eax
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
_x$ = 8							; size = 4
_y$ = 12						; size = 4
_z$ = 16						; size = 4
_value$ = 20						; size = 4
?SetItem@@YAXHHHH@Z PROC				; SetItem
; File C:\Users\libit\source\repos\L042\L042\L042.cpp
; Line 26
	push	ebp
	mov	ebp, esp
; Line 27
	imul	eax, DWORD PTR _x$[ebp], 2400 
	//eax=x* 2400
	//  	=600 *4 *x
	//		=20*30*4*x
	imul	ecx, DWORD PTR _y$[ebp], 120
	//ecx=120*y
	//		=30*4*y
	lea	edx, DWORD PTR ?a@@3PAY1BE@BO@HA[eax+ecx]
	//edx=a+eax+ecx
	//		a+20*30*4*x+30*4*y
	mov	eax, DWORD PTR _z$[ebp]
	//eax=z
	mov	ecx, DWORD PTR _value$[ebp]
	//exc=value
	mov	DWORD PTR [edx+eax*4], ecx
	//*(edx+eax*4)=value
	//*(a+20*30*4*x+30*4*y + z*4)
	//*(4*(20*30*x+30*y+z))
	
	//三维转换成一维
	//20*30*x+30*y+z
	
; Line 28
	pop	ebp
	ret	0
?SetItem@@YAXHHHH@Z ENDP				; SetItem
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
