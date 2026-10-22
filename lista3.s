.data
msg:.asciiz "Largura:"
msg2:.asciiz "Comprimento:"
msg3:.asciiz "Altura:"
msg4:.asciiz "Volume="
.text
main:
#Dá o comando 4 pro v0 pra escrita de texto, pro a0 exibir largura com o syscall
li $v0,4
la $a0,msg
syscall

#Dá o comando 5 pro v0 ler um numero digitado e copia o conteudo de v0 pra t1
li $v0,5
syscall
add $t1,$v0,0

#Dá o comando 4 pro v0, e exibe Comprimento:
li $v0,4 
la $a0,msg2
syscall

#Dá o comando 5 pra ler um numero digitado e copia pra t2
li $v0,5
syscall
add $t2,$v0,0

#Dá o comando 4 e exibe altura
li $v0,4
la $a0,msg3
syscall

#Dá o comando 5 pra ler um numero e copia pra t3
li $v0,5
syscall
add $t3,$v0,0

#Faz o calculo mandando o resultado pra t0
mul $t0,$t1,$t2
mul $t0,$t0,$t3

#Dá o comando 4 pro v0 pra exibir Volume=
li $v0,4
la $a0,msg4
syscall

#Mostra o resultado
li $v0,1
add $a0,$t0,0
syscall

