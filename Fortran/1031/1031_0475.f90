module m1
contains
SUBROUTINE S0(A,B)
REAL(KIND=8),INTENT(INOUT)::A(2,3,3,2),B(2,2)
A(1,1:2,1:2,1)=A(1,1:2,1:2,1)+MATMUL(B,TRANSPOSE(A(1,1:2,2,1:2)))
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(3,3,4),B(2,2)
A=reshape((/(i,i=1,18*2)/),(/3,3,4/))
B=reshape((/(i,i=1,4)/),(/2,2/))
 call S0(A,B)
if (any(abs((/A/)-(/&
83,2,117,4,5,6,97,8,135,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36&
/))>0.001))print *,'error'

print *,'pass'
end
