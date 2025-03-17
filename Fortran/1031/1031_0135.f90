module m1
contains
SUBROUTINE S0(A,B)
REAL(KIND=8),INTENT(INOUT)::A(2,2,2,2),B(2,2)
I=1
A(I,1:2,1:2,1)=MATMUL(B,A(I+1,1:2,2,1:2))
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(2,2,2,2),B(2,2)
A=reshape((/(i,i=1,16)/),(/2,2,2,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
 call S0(A,B)
if (any(abs((/A/)-(/&
30,2,44,4,62,6,92,8,9,10,11,12,13,14,15,16&
/))>0.001))print *,'error'

print *,'pass'
end
