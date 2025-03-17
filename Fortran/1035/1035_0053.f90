module m1
integer,allocatable:: a(:),b(:),c(:)
contains
subroutine sub00(a,b,c)
integer,optional,allocatable,intent(out)::a(:),b(:),c(:)
end subroutine 
subroutine sub01(a,b,c)
integer,optional,allocatable,intent(out)::a(:),b(:),c(:)
if (present(a))then
if (allocated(a))print *,'error-1-a'
endif
if (present(b))then
if (allocated(b))print *,'error-1-b'
endif
if (present(c))then
if (allocated(c))print *,'error-1-c'
endif
end subroutine 
subroutine sub02(a,b,c)
integer,optional,allocatable,intent(out)::a(:),b(:),c(:)
if (present(a))then
if (allocated(a))print *,'error-1-1-a'
allocate(a(1000:1001))
a(1000)=1; a(1001)=2
endif
if (present(b))then
if (allocated(b))print *,'error-1-1-b'
allocate(b(1000:1001))
b(1000)=11; b(1001)=22
endif
if (present(c))then
if (allocated(c))print *,'error-1-1-c'
allocate(c(1000:1001))
c(1000)=111; c(1001)=222
endif
end subroutine 
end
use m1
if (allocated(a))print *,'error-2-0-a'
if (allocated(b))print *,'error-2-0-b'
if (allocated(c))print *,'error-2-0-c'

call sub01(a,b,c)
if (allocated(a))print *,'error-2-a'
if (allocated(b))print *,'error-2-b'
if (allocated(c))print *,'error-2-c'
allocate(a(-1:0),b(-1:0),c(-1:0))
a=1; b=1;c=1
call sub01(a,b,c)
if (allocated(a))print *,'error-3-a'
if (allocated(b))print *,'error-3-b'
if (allocated(c))print *,'error-3-c'
call sub01()

call sub02(a,b,c)
if (.not.allocated(a))print *,'error-4-1-a'
if (.not.allocated(b))print *,'error-4-1-b'
if (.not.allocated(c))print *,'error-4-1-c'
if (a(1000)/=1)print *,'error-4-2-a'
if (a(1001)/=2)print *,'error-4-3-a'
if (b(1000)/=11)print *,'error-4-2-b'
if (b(1001)/=22)print *,'error-4-3-b'
if (c(1000)/=111)print *,'error-4-2-c'
if (c(1001)/=222)print *,'error-4-3-c'
call sub02(a,b,c)
if (.not.allocated(a))print *,'error-3-x-a'
if (.not.allocated(b))print *,'error-3-x-b'
if (.not.allocated(c))print *,'error-3-x-c'
if (a(1000)/=1)print *,'error-4-2-a'
if (a(1001)/=2)print *,'error-4-3-a'
if (b(1000)/=11)print *,'error-4-2-b'
if (b(1001)/=22)print *,'error-4-3-b'
if (c(1000)/=111)print *,'error-4-2-c'
if (c(1001)/=222)print *,'error-4-3-c'
call sub02()

call sub00(a,b,c)
if (allocated(a))print *,'error-2-01-a'
if (allocated(b))print *,'error-2-01-b'
if (allocated(c))print *,'error-2-01-c'
allocate(a(-1:0),b(-1:0),c(-1:0))
a=1;b=1;c=1
call sub00(a,b,c)
if (allocated(a))print *,'error-3-00-a'
if (allocated(b))print *,'error-3-00-b'
if (allocated(c))print *,'error-3-00-c'
call sub00()
print *,'pass'
end
