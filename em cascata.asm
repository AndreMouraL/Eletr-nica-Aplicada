section .data
    ganho_amplificador1 dd 2.0
    ganho_amplificador2 dd 1.5
    ganho_amplificador3 dd 3.2

section .text
    global _start

_start:
    fld dword [ganho_amplificador1]   ; Carrega o ganho do amplificador 1
    fmul dword [ganho_amplificador2]  ; Multiplica pelo ganho do amplificador 2
    fmul dword [ganho_amplificador3]  ; Multiplica pelo ganho do amplificador 3
    fstp dword [ganho_total]          ; Armazena o resultado do ganho total

    ; Aqui você pode usar o valor do ganho_total para calcular a tensão de saída

    ; Termina o programa
    mov eax, 1    ; Código de saída do programa
    xor ebx, ebx  ; Código de erro
    int 0x80      ; Chamada de sistema para sair
