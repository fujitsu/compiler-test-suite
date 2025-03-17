 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 A(K+KB+2:KK+2,J+JB:JJ) = MATMUL(transpose(A(JJJ-13:K+KB-4,J+JB:JJ:1)),B)
 if (any(abs((/A(4:7,2:5)/)-(/&
12980,14030,15080,16130,17132,18518,19904,21290,21284,23006,24728,26450,25436,27494,29552,31610&
/))>0.001))then
print *,'error'
print *,int(A(4:7,2:5))
endif
print *,'pass'
end
