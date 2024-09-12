use, intrinsic :: iso_c_binding

type(c_ptr) :: cptr
integer, target :: eeee

cptr = c_loc(eeee)

print *,'pass'

end
