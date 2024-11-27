use, intrinsic :: iso_c_binding

type (c_ptr) :: cptr

logical (kind = 4), target :: ll04_01(1)

cptr = c_loc(ll04_01)
if (.not.c_associated(cptr)) print *,'not pass'

print *,'pass'

end
