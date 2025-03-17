module m1
contains
SUBROUTINE S0(A,B)
REAL(KIND=8),INTENT(INOUT)::A(2,3,3,1),B(2,2)
A(1,1:2,1:2,1)=A(1,1:2,1:2,1)+MATMUL(TRANSPOSE(B),TRANSPOSE(A(2,1:2,1:2,1)))
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(3,3,2),B(2,2)
A=reshape((/(i,i=1,18)/),(/3,3,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
 call S0(A,B)
if (any(abs((/A/)-(/&
19,2,41,4,5,6,31,8,61,10,11,12,13,14,15,16,17,18&
/))>0.001))print *,'error'

print *,'pass'
end
