use , intrinsic :: iso_c_binding
interface c_loc
 function func01() result(rst)
  use , intrinsic :: iso_c_binding
  type (c_ptr)    :: rst
 end function
end interface
type (c_ptr)    :: cptr

cptr = c_loc()
print *,'pass'

end

function func01() result(rst)
 use , intrinsic :: iso_c_binding
 integer,target  :: it01
 type (c_ptr)    :: rst
 rst = c_loc(it01)
end function
