.data
msg:.asciiz "Raio:"
msg2:.asciiz "Circunferencia="
.text
main:
li $v0,4
la $a0,msg
syscall

li $v0,5
syscall
add $t1,$v0,0

mul $t0,$t1,2
mul $t0,$t0,3

li $v0,4
la $a0,msg2
syscall

li $v0,1
add $a0,$t0,0
syscall

