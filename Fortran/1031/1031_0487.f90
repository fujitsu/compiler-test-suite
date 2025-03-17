module m1
contains
SUBROUTINE S0(A,B)
REAL(KIND=8),INTENT(INOUT)::A(3,3),B(3,3)
J=1
M=3
N=3
A(:,:)=A(:,:)+MATMUL(TRANSPOSE(A(:,:3)),TRANSPOSE(B(J:M,J:N)))
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(3,3),B(3,3)
A=reshape((/(i,i=1,18)/),(/3,3/))
B=reshape((/(i,i=1,18)/),(/3,3/))
 call S0(A,B)
if (any(abs((/A/)-(/&
31,68,105,40,86,132,49,104,159&
/))>0.001))print *,'error'

print *,'pass'
end
