 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 L=1
 A(L:K+KB+2,J+JB:JJ) = MATMUL(A(K+KB+3:KK+3,J+JB:JJ:1),B)
 if (any(abs((/A(1:4,2:5)/)-(/&
15080,15130,15180,15230,19872,19938,20004,20070,24664,24746,24828,24910,29456,29554,29652,29750&
/))>0.001))then
print *,'error'
print *,int(A(1:4,2:5))
endif
print *,'pass'
end
