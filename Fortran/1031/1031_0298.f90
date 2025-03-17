 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 A(K+KB+2:KK+2,J+JB:JJ) = MATMUL(transpose(A(JJJ-13+6:K+KB+2,J+JB:JJ:1)),B)
 if (any(abs((/A(4:7,2:5)/)-(/&
13280,14330,15380,16430,17528,18914,20300,21686,21776,23498,25220,26942,26024,28082,30140,32198&
/))>0.001))then
print *,'error'
print *,int(A(4:7,2:5))
endif
print *,'pass'
end
