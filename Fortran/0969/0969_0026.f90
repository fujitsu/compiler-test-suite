use , intrinsic :: iso_c_binding
logical(kind = 4) , target  :: ll04_ta01(1)
logical(kind = 4) , pointer :: ll04_pp01(:)

type (c_ptr) :: cptr

cptr = c_loc(ll04_ta01)
cptr = c_loc(ll04_pp01)

if (c_associated(cptr)) print *,'pass'

end
