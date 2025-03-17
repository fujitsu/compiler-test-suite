module m1
contains
SUBROUTINE S0(A,B)
REAL(KIND=8),INTENT(INOUT)::A(3,2,3),B(2,2)
A(1:2,1,1:2)=A(1:2,1,1:2)+MATMUL(A(1:2,2,1:2),B)
end SUBROUTINE
end
use m1
REAL(KIND=8)::A(5,5,2),B(2,2)
A=reshape((/(i,i=1,25*2)/),(/5,5,2/))
B=reshape((/(i,i=1,4)/),(/2,2/))
 call S0(A,B)
if (any(abs((/A/)-(/&
25,29,3,4,5,6,59,67,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50&
/))>0.001))print *,'error'

print *,'pass'
end
