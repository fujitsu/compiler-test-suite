module m1
contains
SUBROUTINE S0(A,B,C)
REAL(KIND=8),INTENT(INOUT)::A(2,2,2,2),B(2,2),C(2,2)
I=1
C=MATMUL(TRANSPOSE(B),A(I+1,1:2,2,1:2))
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(2,2,2,2),B(2,2),C(2,2)
A=reshape((/(i,i=1,16)/),(/2,2,2,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
 call S0(A,B,C)
if (any(abs((/C/)-(/&
22,50,46,106&
/))>0.001))print *,'error'

print *,'pass'
end
