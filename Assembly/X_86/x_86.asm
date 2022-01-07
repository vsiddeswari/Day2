
section .bss
	digitspace resb 100
	digitspacePos resb 8

section .text
	global _start

_start:
	mov rax,1
	mov rbx,2
	mov rcx,0
	mov rax,rbx
	cmp rax,5
	jne loop1
	loop1:
	mov rdx,rax
	sub rdx,1
	and rdx,rax
	cmp rdx,0
	jne loop3
	loop2:                                                                   
	add rcx,rax
	loop3:
	add rax,1
	cmp rax,5
	jne loop1
	mov rax,rcx

	call _output

	mov rax,60
	mov rdi,0
	syscall


_output:
	mov rcx,digitspace
	mov rbx,10
	mov [rcx],rbx
	inc rcx
	mov [digitspacePos],rcx
printRAXLoop:
	mov rdx,0
	mov rbx,10
	div rbx
	push rax
	add rdx,48
	mov rcx,[digitspacePos]
	mov[rcx],dl
	inc rcx
	mov[digitspacePos],rcx
	pop rax
	cmp rax,0
	jne printRAXLoop

printRAXLoop2:
	mov rcx,[digitspacePos]
	mov rax,1
	mov rdi,1
	mov rsi,rcx
	mov rdx,1
	syscall
	mov rcx,[digitspacePos]
	dec rcx
	mov[digitspacePos],rcx
	cmp rcx,digitspace
	jge printRAXLoop2

	ret

