interface c_loc
 function func01(it01) result(rst)
  use, intrinsic     :: iso_c_binding
  integer, target    :: it01
  type (c_ptr)       :: rst
 end function
end interface

integer, target :: it01

call sub01(c_loc(it01))

print *,'pass'

end

function func01(it01) result(rst)
 use, intrinsic     :: iso_c_binding
 integer, target    :: it01
 type (c_ptr)       :: rst
 rst = c_loc(it01)
end function

subroutine sub01(cptr)
 use, intrinsic :: iso_c_binding
 type(c_ptr) :: cptr
end subroutine
