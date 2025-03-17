 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 L=1
 A(K+KB+2:KK+2,J+JB:JJ) = MATMUL(A(JJJ-13:K+KB-4,J+JB:JJ:1),B)
 if (any(abs((/A(4:7,2:5)/)-(/&
14580,14630,14680,14730,19212,19278,19344,19410,23844,23926,24008,24090,28476,28574,28672,28770&
/))>0.001))then
print *,'error'
print *,int(A(4:7,2:5))
endif
print *,'pass'
end
