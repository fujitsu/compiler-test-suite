module m1
type x
integer,allocatable::a(:)
end type
type(x),allocatable:: a(:)
contains
subroutine sub00(a)
type(x),allocatable,intent(out)::a(:)
end subroutine 
subroutine sub01(a)
type(x),allocatable,intent(out)::a(:)
if (allocated(a))print *,'error-1'
end subroutine 
subroutine sub02(a)
type(x),allocatable,intent(out)::a(:)
if (allocated(a))print *,'error-1-1'
allocate(a(2))
allocate(a(2)%a(1000:1001))
a(2)%a(1000)=1
a(2)%a(1001)=2
end subroutine 
end
use m1
if (allocated(a))print *,'error-2-0'
call sub00(a)
if (allocated(a))print *,'error-2-01'
allocate(a(-1:0))
allocate(a(0)%a(-1:0))
a(0)%a=1
call sub00(a)
if (allocated(a))print *,'error-3-00'

call sub01(a)
if (allocated(a))print *,'error-2'
allocate(a(-1:0))
allocate(a(0)%a(-1:0))
a(0)%a=1
call sub01(a)
if (allocated(a))print *,'error-3'

call sub02(a)
if (.not.allocated(a))print *,'error-4-1'
if (a(2)%a(1000)/=1)print *,'error-4-2'
if (a(2)%a(1001)/=2)print *,'error-4-3'
call sub02(a)
if (.not.allocated(a))print *,'error-3-x'
if (a(2)%a(1000)/=1)print *,'error-4-2-2'
if (a(2)%a(1001)/=2)print *,'error-4-3-2'

print *,'pass'
end
