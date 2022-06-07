 global _start
section .text	;
_start: 		;точка входа в программу
;Вывод фразы "Input the line: "
mov rax, 1 		; номер функции
mov rdi, 1 		; номер файла, 1-stdout
mov rsi, msg1 	; адрес строки для вывода
mov rdx, len1 	;длина выводимой строки
syscall 		;системный вызов 
;Ввод строки
mov rax, 0 		
mov rdi, 0 		
mov rsi, msg 	
mov rdx, 1024 		
syscall 		
;Вывод фразы "Duplicate line: "
mov rax, 1 		
mov rdi, 1 		
mov rsi, msg2 	
mov rdx, len2 	
syscall			
;Вывод продублированной строки
mov rax, 1 		
mov rdi, 1 		
mov rsi, msg 	
mov rdx, 1024 	
syscall 		
mov rax, 60 	
mov rdi, 0 		
syscall 		
section .data	;секция с инициализированными данными	
msg1:			;метка
DB "Input the line: ", 0xa ;байтовый массив
len1 EQU $ - msg1 
msg2:
DB "Duplicate line: ", 0xa ;
len2 EQU $ - msg2 ;
section .bss	;секция с неиницилизированными данными 
msg resb 1024	;


