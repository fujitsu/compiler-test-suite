module m1
real,target::MYDATA(10)
integer::NR=5,NB=1
integer::NC=2
contains
subroutine s1(B) 
real, pointer :: VVVVVV ( : )
real, pointer :: MATRIX ( :,: )
REAL, CONTIGUOUS, POINTER :: A(:)
REAL, CONTIGUOUS, TARGET :: B(:,:)
MATRIX( 1:NR, 1:NC ) => MYDATA
if (any([MATRIX]/=[(k,k=1,10)])) print *,101
if (any(ubound(MATRIX)/=[5,2])) print *,102
VVVVVV => MYDATA( 1::NB+1 )
if (any(VVVVVV/=[1,3,5,7,9])) print *,103
if (size(VVVVVV)/=5) print *,104
A(1:SIZE(B)) => B
if (any(A/=[(k,k=1,12)])) print *,201
if (size(A)/=size(b)) print *,201
if (size(A)/=12     ) print *,202
end subroutine
end
use m1
REAL, TARGET :: B(3,4)=reshape([(k,k=1,12)] , [3,4])
MYDATA=[(k,k=1,10)]
call s1( B  )
print *,'pass'
end

