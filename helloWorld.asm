section .data              ; Aqui definimos a seção "Data", que definiremos o "Hello World" na variável "msg"( String ). E para já ser inicializado, declaramos aqui
                           ; OBS: A "section .data" declará todas as variáveis globais inicializadas.

msg: DB 'Hello, World!' , 10 ; Definir uma mensagem em DB( Definição em Byte ). Primeiro informamos o valor da String, e segundo, informamos a quebra de linha ', 10'
msgSize EQU $ - msg          ; Primeiramente, declaro a variável "msgSize", que irá ler até o final da msg.
                             ; Quando chegar no final da msg, irá fazer a subtração do endereço onde a variável msg começou, e apenas deixar os bytes usados para a msg

global start

section .text
    start:
    mov rax, 4              ; Mover o número 4 para o registro RAX ( sys_write no UNIX, é a função 4 no UNIX )
    mov rbx, 1              ; Mover o número 1 para o registro RBX, e fazer o output
    mov rcx, msg            ; Definir para a mensagem ser armazenada no Registro RCX
    mov rdx, msgSize        ; Definir o tamanho da mensagem no registro RDX ( Foi isso que eu entendi )
    int 0x80                ; Interromper à 0x80 para lidar com os parâmetros que foi atribuído                    

    mov rax, 1              ; Mover o número 1 para o registro RAX ( O Syscall para a saída do programa, é a função 1 no UNIX )
    mov rbx, 0              ; Mover o núemro 0 para o registro RBX, que será o retorno padrão do Programa, sinalizando a finalização sem erros do Programa
    int 0x80                ; interromper à 0x80 para lidar com os parâmetros que foi atribuido
    ret


; -----------------------------------------------------------------------------------------------------------
; Syscalls são chamadas para o Sistema Operacional. A Interrupção "0x80" é a chamada padrão dos sistemas UNIX.
; Nessas interrupções, são chamadas os 4 parâmetros que ela trate.
; 
; Os parâmetros são:
; RAX : O número da Função
; RBX : Onde será informado o local onde será executado
; RCX : A direção da memória que queremos executar
; RDX : O tamanho da mensagem em Bytes
;------------------------------------------------------------------------------------------------------------