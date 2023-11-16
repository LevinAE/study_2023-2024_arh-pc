; hello.asm
SECTION .data			     ; Начало секции данных
	hello:	DB 'Hello world!',10 ; 'Hello world!' плюс
				     ; символ перевода строки
	helloLen: EQU $-hello	     ; Длина строки hello

SECTION .text		; Начало секции кода
	GLOBAL _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,hello
	mov edx,helloLen
	int 80h
	
	mov eax,1
	mov ebx,0
	int 80h
