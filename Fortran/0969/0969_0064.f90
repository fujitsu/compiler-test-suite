use, intrinsic             :: iso_c_binding
type(c_ptr)                :: cptr01, cptr02
integer(kind = 4), target  :: ii04_tt01
integer(kind = 4), pointer :: ii04_pp01

ii04_pp01 => ii04_tt01
cptr01 = c_loc(ii04_pp01)
cptr02 = c_loc(ii04_tt01)

if (c_associated(cptr01, cptr02)) print *,'pass'

end
