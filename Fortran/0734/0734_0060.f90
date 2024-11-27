module mm
contains
function f (mask) result (vector)
logical, intent(in) :: mask(:)
integer :: vector(count(mask))
vector=1
end function
end
use mm
logical,allocatable,dimension(:)::x
allocate(x(5));x=.false.
x(1:5)=.true.
if (any(shape(f(x))/=(/5/)))print *,'error-1'
if (any(     (f(x))/=1))print *,'error-2'
x=.false.;x(1:5:2)=.true.
if (any(shape(f(x))/=(/3/)))print *,'error-3'
if (any(     (f(x))/=1))print *,'error-4'
print *,'pass'
end
