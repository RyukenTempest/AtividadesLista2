.data
msg1:.asciiz "Nota1:"
msg2:.asciiz "Nota2:"
msg3:.asciiz "Nota3:"
msg4:.asciiz "Nota4:"
msg5:.asciiz "Media: "
msg6:.asciiz "\nAprovado"
msg7:.asciiz "\nExame"
msg8:.asciiz "\nRetido"
.text
main:
li $v0,4
la $a0,msg1
syscall

li $v0,5
syscall
add $t1,$v0,0

li $v0,4
la $a0,msg2
syscall

li $v0,5
syscall
add $t2,$v0,0

li $v0,4
la $a0,msg3
syscall

li $v0,5
syscall
add $t3,$v0,0

li $v0,4
la $a0,msg4
syscall

li $v0,5
syscall
add $t4,$v0,0

add $t5,$t1,$t2
add $t5,$t5,$t3
add $t5,$t5,$t4
div $t5,$t5,4

li $v0,4
la $a0,msg5
syscall

li $v0,1
add $a0,$t5,0
syscall

bge $t5,6,Aprovado
bge $t5,3,Exame

li $v0,4
la $a0,msg8
syscall

j fim

Exame:
li $v0,4
la $a0,msg7
syscall

j fim

Aprovado:
li $v0,4
la $a0,msg6
syscall

j fim

fim: