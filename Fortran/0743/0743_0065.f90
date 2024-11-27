module m1
type xx
integer,allocatable,dimension(:)::f
end type
interface operator(+)
 module procedure fg
end interface
contains
function fg(f1,f2)
type(xx),intent(in)::f1
integer,intent(in)::f2
integer,dimension(2)::fg
fg=f1%f+f2
end function
function f()
type(xx)::f
allocate( f%f(2) )
f%f=(/1,2/)
end function
end
use m1
if (sum(f()+1)/=5)print *,'errror'
if (sum(f()+1)/=5.or.sum(f()+1)/=5)print *,'errror'
print *,'pass'
end
