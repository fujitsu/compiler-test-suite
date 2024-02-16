module m1
contains
SUBROUTINE S0(A,B)
complex(KIND=8),INTENT(INOUT)::A(3,6),B(3,3)
J=1
M=3
N=3
A(J:M,J:N)=A(J:M,J:N)+MATMUL(A(:,N+1:M+N),B(J:M,J:N))
end SUBROUTINE
SUBROUTINE S1(A,B)
complex(KIND=8),INTENT(INOUT)::A(3,6),B(3,3)
J=1
M=3
N=3
A(J:M,J:N)=A(J:M,J:N)+MATMUL(A(J:3,N+1:6),B(J:M,J:N))
end SUBROUTINE
end
use m1
complex(KIND=8)::A(3,6),B(3,3)
do k=1,2
A=reshape((/(i,i=1,18)/),(/3,6/))
B=reshape((/(i,i=1,18)/),(/3,3/))
if (k==1) then
 call S0(A,B)
else
 call S1(A,B)
endif
if (any(abs((/A/)-(/&
85,92,99,205,221,237,325,350,375,10,11,12,13,14,15,16,17,18&
/))>0.001))print *,'error',k
end do

print *,'pass'
end

