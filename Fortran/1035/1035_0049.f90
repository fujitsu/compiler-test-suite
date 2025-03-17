module m1
integer,allocatable:: a(:)
contains
subroutine sub00(a)
integer,allocatable,intent(out)::a(:)
end subroutine 
subroutine sub01(a)
integer,allocatable,intent(out)::a(:)
if (allocated(a))print *,'error-1'
end subroutine 
subroutine sub02(a)
integer,allocatable,intent(out)::a(:)
if (allocated(a))print *,'error-1-1'
allocate(a(1000:1001))
a(1000)=1
a(1001)=2
end subroutine 
end
use m1
if (allocated(a))print *,'error-2-01'
allocate(a(-1:0))
a=1
call sub00(a)
if (allocated(a))print *,'error-3-00'
print *,'pass'
end
