module m1
contains
function f()
integer,allocatable,dimension(:)::f
allocate( f(2) )
f=(/1,2/)
end function
end
use m1
if (sum(f()+1)/=5)print *,'errror'
if (sum(f()+1)/=5.or.sum(f()+1)/=5)print *,'errror'
print *,'pass'
end
