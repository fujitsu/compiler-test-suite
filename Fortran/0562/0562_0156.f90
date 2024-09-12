module m1
contains
real function fun(dmy)
real,pointer,intent(in)::dmy
if(.NOT.associated(dmy))print*,"error",101
dmy = 2.50
fun=dmy
end function
end module m1

use m1
real,target::tar
call sub
print*,"Pass"
contains
subroutine sub
real::ii
ii=fun(tar)
if (ii /= tar)print*,"error",102
end subroutine
end
