
.data
msg1: .asciiz "Num1: "
msg2: .asciiz "Num2: "
msg3: .asciiz "Resultado: "

.text
main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 5
syscall
add $t1, $v0, 0

li $v0, 4
la $a0, msg2
syscall

li $v0, 5
syscall
add $t2, $v0, 0

# Descobrir o maior e o menor
bgt $t1, $t2, t1maior

add $t3, $t2, 0
add $t4, $t1, 0
j definir_fim

t1maior:
add $t3, $t1, 0
add $t4, $t2, 0

definir_fim:
# t3 = maior; t4 = menor
# t0 = numero atual; t5 = soma
add $t0, $t4, 0
li $t5, 0
li $t6, 2
li $t7, 1

repetir:
# Se o numero atual passou do maior, terminar
bgt $t0, $t3, terminar

# Verificar se o numero atual e impar
rem $t8, $t0, $t6
bne $t8, $zero, somar

j proximo

somar:
add $t5, $t5, $t0

proximo:
add $t0, $t0, $t7
j repetir

terminar:
li $v0, 4
la $a0, msg3
syscall

li $v0, 1
add $a0, $t5, 0
syscall

li $v0, 10
syscall



