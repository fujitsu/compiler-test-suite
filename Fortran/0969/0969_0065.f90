use, intrinsic             :: iso_c_binding
type(c_ptr)                :: cptr01
integer(kind = 4), target  :: ii04_tt01
integer(kind = 4), pointer :: ii04_pp01

cptr01 = c_loc(ii04_tt01)
call c_f_pointer(cptr01, ii04_pp01)

end
