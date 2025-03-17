 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 L=-2
 A(L:K+KB-1,J+JB:JJ) = MATMUL(A(K+KB:KK,J+JB:JJJ:2),B)
 if (any(abs((/A(-2:1,2:5)/)-(/&
16610,16660,16710,16760,21858,21924,21990,22056,27106,27188,27270,27352,32354,32452,32550,32648&
/))>0.001))then
print *,'error'
print *,int(A(-2:1,2:5))
endif
print *,'pass'
end
