module m1
contains
SUBROUTINE S0(A,B,C)
complex(KIND=8),INTENT(INOUT)::A(2,2,2,2),B(2,2),C(2,2)
C=MATMUL(A(1,1:2,2,1:2),B)

end SUBROUTINE
end
use m1
complex(KIND=8)::A(2,2,2,2),B(2,2),C(2,2)
A=reshape((/(i,i=1,16)/),(/2,2,2,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
 call S0(A,B,C)
if (any(abs((/C/)-(/&
31,37,67,81&
/))>0.001))print *,'error'

print *,'pass'
end
