module mod01
 contains
  subroutine m01_sub01(m01_s01_arg01)
   procedure(m01_func02), pointer,intent(in) :: m01_s01_arg01
!   m01_s01_arg01 => m01_func02
  end subroutine

  function m01_func01(m01_f01_arg01) result(m01_rst01)
   procedure(m01_func02), pointer,intent(in) :: m01_f01_arg01
   procedure(m01_func02), pointer :: m01_rst01
   m01_rst01 => m01_f01_arg01
  end function

  function m01_func02(m01_f02_arg01) result(m01_rst02)
   procedure(m01_func03), pointer :: m01_f02_arg01
   procedure(m01_func03), pointer :: m01_rst02
   m01_rst02 => m01_f02_arg01
  end function

  function m01_func03() result(m01_rst03)
   integer :: m01_rst03
   m01_rst03 = 3
  end function

end module

use mod01

procedure(m01_func02), pointer :: pm01_func02p01

pm01_func02p01 => m01_func02

call m01_sub01(m01_func01(m01_func01(pm01_func02p01)))

print *,'pass'

end
