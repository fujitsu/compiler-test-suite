module mod01
 type ty01
  integer :: i01
 end type
 interface ty01
  module procedure m01_func01
 end interface
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function
  subroutine m01_sub01()
   print *,ty01()
  end subroutine
end module

use mod01

call m01_sub01()
print *,ty01()

end
