 REAL(KIND=8) :: A(-10:10,-10:10)
 REAL(KIND=8) :: B(4,4)
A=reshape((/(i,i=1,100000)/),(/21,21/))
B=reshape((/(i,i=11,100)/),(/4,4/))
 J=1; JB=1; JJ=5;JJJ=8
 K=1; KB=1; KK=5
 A(K+KB+2:KK+2,J+JB:JJ) = MATMUL(transpose(A(JJJ-8:K+KB+1,J+JB:JJ:1)),B)
 if (any(abs((/A(4:7,2:5)/)-(/&
13230,14280,15330,16380,17462,18848,20234,21620,21694,23416,25138,26860,25926,27984,30042,32100&
/))>0.001))then
print *,'error'
print *,int(A(4:7,2:5))
endif
print *,'pass'
end
