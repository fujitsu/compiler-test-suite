module m
contains
subroutine sub(a)
integer,allocatable::a
if(allocated(a))print*,"101"
allocate(a)
a = 10
if(a.ne.10)print*,"102"
end subroutine
end module
use m
integer,allocatable::ptr
call sub(NULL(ptr))
print*,"pass"
end
