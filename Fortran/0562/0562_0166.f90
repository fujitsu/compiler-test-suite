module m1
contains
logical function fun(ptr)
logical,pointer,intent(in)::ptr(:)
if (.not.associated(ptr))print*,"Error",101
fun = .FALSE.
end function
subroutine s1(d1)
logical,pointer,intent(in)::d1(:)
if (.NOT.associated(d1))print*,"error",102
if (size(d1)/=3)print*,106
if (lbound(d1,1)/= 2 .or. ubound(d1,1)/=4)print*,107
d1 = (/.TRUE.,.TRUE.,.FALSE./)
end subroutine
end module

use m1
call sub
contains
subroutine sub
logical,allocatable,target::tar(:)
logical::ii
allocate(tar(2:4))
tar=.false.
ii=fun(tar)
if (ii)print*,103
call s1(tar)
ii=tar(3)
if (.NOT.ii)print*,104
if (tar(4))print*,105
print*,"Pass"
end subroutine
end
