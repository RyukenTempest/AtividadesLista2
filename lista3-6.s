.data
msg1: .asciiz "Digite um numero positivo: "
msg2: .asciiz "\nMaior valor: "
msg3: .asciiz "\nMenor valor: "
msg4: .asciiz "\nValor invalido! Digite novamente.\n"

.text
main:
li $t0, 0
li $t1, 10

ler_numero:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
add $t2, $v0, 0

bltz $t2, invalido

beq $t0, $zero, primeiro

bgt $t2, $t3, atualizar_maior
blt $t2, $t4, atualizar_menor
j contar

primeiro:
add $t3, $t2, 0
add $t4, $t2, 0
j contar

atualizar_maior:
add $t3, $t2, 0
blt $t2, $t4, atualizar_menor
j contar

atualizar_menor:
add $t4, $t2, 0
j contar

invalido:
li $v0, 4
la $a0, msg4
syscall
j ler_numero

contar:
add $t0, $t0, 1
blt $t0, $t1, ler_numero

li $v0, 4
la $a0, msg2
syscall

li $v0, 1
add $a0, $t3, 0
syscall

li $v0, 4
la $a0, msg3
syscall

li $v0, 1
add $a0, $t4, 0
syscall

li $v0, 10
syscall