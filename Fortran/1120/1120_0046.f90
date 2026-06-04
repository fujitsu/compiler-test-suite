module mod01
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   procedure(m01_func02)          :: m01_f01_arg01
   procedure(m01_func02), pointer :: m01_rst01
   m01_rst01 => m01_f01_arg01
  end function

  function m01_func02(m01_f02_arg01) result(m01_rst02)
   procedure(m01_func03)          :: m01_f02_arg01
   procedure(m01_func03), pointer :: m01_rst02
   m01_rst02 => m01_f02_arg01
  end function

  function m01_func03(m01_f03_arg01) result(m01_rst03)
   integer :: m01_f03_arg01
   integer :: m01_rst03
   m01_rst03 = m01_f03_arg01
  end function

end module

use mod01

procedure(m01_func01), pointer :: pm01_func01p01
procedure(m01_func02), pointer :: pm01_func02p01
procedure(m01_func03), pointer :: pm01_func03p01

pm01_func01p01 => m01_func01
pm01_func02p01 => pm01_func01p01(m01_func02)
pm01_func03p01 => pm01_func02p01(m01_func03)

print *,'pass'

end
