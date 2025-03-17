module m1
contains
SUBROUTINE S0(A,B)
REAL(KIND=8),INTENT(INOUT)::A(3,3),B(3,3)
J=1
M=3
N=3
A(:3,:3)=A(:3,:3)+MATMUL(A(:3,1:3),B(J:M,J:N))
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(3,3),B(3,3)
A=reshape((/(i,i=1,18)/),(/3,3/))
B=reshape((/(i,i=1,18)/),(/3,3/))
 call S0(A,B)
if (any(abs((/A/)-(/&
31,38,45,70,86,102,109,134,159&
/))>0.001))print *,'error'

print *,'pass'
end
