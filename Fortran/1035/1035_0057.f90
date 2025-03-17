module m1
type x
integer,allocatable::a(:)
integer::aa=3
end type
type(x),allocatable:: a(:)
contains
subroutine sub00(a)
type(x),allocatable,intent(out)::a(:)
optional a
end subroutine 
subroutine sub01(a)
type(x),allocatable,intent(out)::a(:)
optional a
if (present(a))then
if (allocated(a))print *,'error-1'
endif
end subroutine 
subroutine sub02(a)
type(x),allocatable,intent(out)::a(:)
optional a
if (present(a))then
if (allocated(a))print *,'error-1-1'
allocate(a(2))
if (allocated(a(2)%a))print *,'error-t-03'
allocate(a(2)%a(1000:1001))
a(2)%a(1000)=1
a(2)%a(1001)=2
endif
end subroutine 
end
call z
print *,'pass'
end
subroutine z
use m1
if (allocated(a))print *,'error-2-0'
call sub00()
call sub00(a)
if (allocated(a))print *,'error-2-01'
allocate(a(-1:0))
if (allocated(a(0)%a))print *,'error-t-01'
allocate(a(0)%a(-1:0))
a(0)%a=1
if (a(0)%aa/=3)print *,'error-t-02'
call sub00(a)
if (allocated(a))print *,'error-3-00'
call sub00()

call sub01()
call sub01(a)
if (allocated(a))print *,'error-2'
allocate(a(-1:0))
if (allocated(a(0)%a))print *,'error-t-05'
allocate(a(0)%a(-1:0))
a(0)%a=1
if (a(0)%aa/=3)print *,'error-t-04'
call sub01(a)
if (allocated(a))print *,'error-3'
call sub01()

call sub02()
call sub02(a)
if (.not.allocated(a))print *,'error-4-1'
if (a(2)%a(1000)/=1)print *,'error-4-2'
if (a(2)%a(1001)/=2)print *,'error-4-3'
if (a(2)%aa/=3)print *,'error-t-06'
call sub02(a)
if (.not.allocated(a))print *,'error-3-x'
if (a(2)%a(1000)/=1)print *,'error-4-2-2'
if (a(2)%a(1001)/=2)print *,'error-4-3-2'
if (a(2)%aa/=3)print *,'error-t-07'
call sub02()

end
