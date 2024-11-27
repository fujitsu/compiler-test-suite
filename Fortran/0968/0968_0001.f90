module mod01
 procedure(m01_func01) :: pm01_func01
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function
end module
use mod01

call csub01( m01_func01)
call csub02(pm01_func01)

contains

 subroutine csub01(cs01_dfp01)
  procedure(m01_func01), pointer, intent(in) :: cs01_dfp01
 end subroutine

 subroutine csub02(cs02_dfp01)
  integer, external, pointer, intent(in) :: cs02_dfp01
 end subroutine

end

function pm01_func01() result(pm01_rst01)
 integer :: pm01_rst01
 pm01_rst01 = 1
end function

