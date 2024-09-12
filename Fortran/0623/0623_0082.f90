use , intrinsic :: iso_c_binding,only:c_ptr,c_loc
integer(kind=4), target :: t
type(c_ptr) :: cptr
cptr = c_loc(t)
print *,"pass"
end
