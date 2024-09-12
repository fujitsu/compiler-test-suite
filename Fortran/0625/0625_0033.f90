module mod01
 interface m01_func
  module procedure m01_func01, m01_f02_ent01
 end interface
 type m01_func
  integer :: i01
  integer :: i02
 end type
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   integer :: m01_f02_arg01
   integer :: m01_rst02
   entry m01_f02_ent01(m01_f02_arg01) result(m01_rst02)
   m01_rst02 = m01_f02_arg01
  end function
  subroutine m01_sub01()
   print *,m01_func( )
   print *,m01_func(1)
   contains
    subroutine m01_s01_csub01()
     print *,m01_func( )
     print *,m01_func(1)
    end subroutine
  end subroutine
end module

use mod01

if (m01_func( ).ne.m01_func(1)) print *,'pass'

print *,'pass'

contains
 subroutine csub01()
  print *,m01_func( )
  print *,m01_func(1)
 end subroutine
end
