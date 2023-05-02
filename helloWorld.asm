section .data
    msg db 'Hello World', 0xA;responsável por pular linha
    a1 db 'Hello World', 0xA;responsável por pular linha
    b2 db 'Hello World', 0xA;responsável por pular linha
    c3 db 'Hello World', 0xA;responsável por pular linha
    tam equ $- msg; conta a quantidade de caracteres da mensagem
    msgContinue db 'Não vou aparecer', 0xA;responsável por pular linha

section .text

global _start

_start:
        mov EAX, 0x4
        mov EBX, 0x1
        mov ECX, msg
        mov EDX, tam
        int 0x80; responsável por executar os comandos acima

        mov EAX, 0x1 ; SO estou terminando o sistema
        mov EBX, 0x0 ; SO o valor de retorno é 0
        int 0x80; responsável por executar os comandos acima