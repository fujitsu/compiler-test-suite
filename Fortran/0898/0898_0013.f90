module m1
complex,protected,target::tar
end module

use m1
call sub(tar%re)
contains
subroutine sub(ptr)
real,pointer,intent(in)::ptr
print*,associated(ptr)
end subroutine
end
