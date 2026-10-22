.data
msg:.asciiz "Primeiro Valor:"
msg2:.asciiz "Segundo Valor"
msg3:.asciiz "Diferença="
.text
main:
li $v0,4
la $a0,msg
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

bgt $t1,$t2,maior
sub $t3,$t2,$t1

li $v0,4
la $a0,msg3
syscall

li $v0,1
add $a0,$t3,0
syscall

j fim

maior:
sub $t4,$t1,$t2
li $v0,4
la $a0,msg3
syscall

li $v0,1
add $a0,$t4,0
syscall

fim:
