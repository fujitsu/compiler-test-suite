module m
type matrix
real,allocatable :: value(:,:)
end type
end module
use m
type(matrix) a,b,c
real :: ar(2,2) = 1
real,allocatable :: aar(:,:)
a = matrix(null())
b = matrix(ar*2)
c = matrix(aar)
call move_alloc(b%value,a%value)
if(any(a%value/=reshape((/(2.0,i=1,4)/),(/2,2/)))) print *,'err1'
call move_alloc(a%value,c%value)
if(any(c%value/=reshape((/(2.0,i=1,4)/),(/2,2/)))) print *,'err2'
if(allocated(b%value).neqv..false.) print *,'err3'
print *,'pass'
end

