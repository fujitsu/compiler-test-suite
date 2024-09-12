use, intrinsic :: iso_c_binding
type(c_ptr) :: cc,cc2
logical(4)  :: l
integer  , target :: it01, it02
it01 = 101
it02 = 222
cc = c_loc(it01)
cc2 = c_loc(it02)
l=c_associated(cc,cc2)
l=l
print *,'pass'
end
