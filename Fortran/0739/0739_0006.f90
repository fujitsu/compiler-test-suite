module m1
contains
function m0_ac() result(a)
 character(kind=1,len=1),allocatable,dimension(:):: a,b
 entry   m1_ac() result(b)
 allocate (a(2))
 a='a'
end function
end
use m1
character*1 x(2)
x=m0_ac()
if (any(x/='a'))write(6,*) "NG"
print *,'pass'
end
