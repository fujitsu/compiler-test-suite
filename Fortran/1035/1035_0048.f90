module m1
integer,allocatable:: a(:)
contains
subroutine sub01(a)
integer,allocatable,intent(out)::a(:)
if (allocated(a))print *,'error-1'
end subroutine 
end
use m1
if (allocated(a))print *,'error-2'
allocate(a(-1:0))
a=1
call sub01(a)
if (allocated(a))print *,'error-3'
print *,'pass'
end
