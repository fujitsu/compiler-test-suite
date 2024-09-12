module mod01
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   type ty01
    integer :: ii_01
   end type
   type (ty01) :: m01_f01_arg01
   type (ty01) :: m01_rst01
   m01_rst01 = m01_f01_arg01
  end function

  function m01_func02(m01_f02_arg01) result(m01_rst02)
   type ty01
    sequence
    integer :: ii_01
   end type
   type (ty01) :: m01_f02_arg01
   type (ty01) :: m01_rst02
   m01_rst02 = m01_f02_arg01
  end function

  function m01_func03(m01_f03_arg01) result(m01_rst03)
   type,bind(c) :: ty01
    integer :: ii_01
   end type
   type (ty01) :: m01_f03_arg01
   type (ty01) :: m01_rst03
   m01_rst03 = m01_f03_arg01
  end function

end module

module mod02
 use mod01
 contains
  subroutine m02_sub01()
   interface ty01
    module procedure m01_func01, m01_func02, m01_func03
   end interface
   type ty01
    sequence
    integer :: ii_01
   end type
   type (ty01) :: t01
   t01 = ty01(t01)
  end subroutine
  subroutine m02_sub02()
   interface ty01
    module procedure m01_func01, m01_func02, m01_func03
   end interface
   type,bind(c) :: ty01
    integer :: ii_01
   end type
   type (ty01) :: t01
   t01 = ty01(t01)
  end subroutine
end module

use mod02

print *,'pass'

end
