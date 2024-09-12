use, intrinsic :: iso_c_binding
integer, target  :: it01
integer, pointer :: ip01
type (c_ptr) :: cptr

cptr = c_loc(it01)
call c_f_pointer(cptr, ip01)

it01 = 100

if (ip01.ne.100) print *,'c_f_pointer : error'

print *,'pass'

end
