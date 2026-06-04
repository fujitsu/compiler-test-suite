module mod
  use,intrinsic :: iso_c_binding
  integer(c_int),allocatable,target,save :: from(:)
  integer(c_int),allocatable,target,save :: to(:)
  type(c_ptr),bind(c) :: cptr
  integer(c_int),pointer :: f_array(:)
end module

use mod
allocate(from(10))
from = (/1,2,3,4,5,6,7,8,9,10/)
call move_alloc(from,to)
cptr = c_loc(to)
call c_f_pointer(cptr,f_array,(/10/))
if (any(f_array/=(/1,2,3,4,5,6,7,8,9,10/)))print *,'fail'
print *,'pass'
end
