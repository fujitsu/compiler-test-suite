module mod01
 interface m01_ty01
  module procedure m01_func01, m01_ent01
 end interface
 type m01_ty01
  integer :: m01_t01_i01
  integer :: m01_t01_i02
 end type
 type m01_ty02
  integer :: m01_t02_i01
  integer :: m01_t02_i02
 end type
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   integer :: m01_f01_arg01
   integer :: m01_rst01
   integer :: m01_erst01
   entry m01_ent01() result(m01_erst01)
   m01_rst01  = m01_f01_arg01
   m01_erst01 = 2
  end function
  function m01_func02(m01_f02_arg01) result(m01_rst02)
   integer :: m01_f02_arg01
   integer :: m01_rst02
   integer :: m01_erst02
   entry m01_ent02() result(m01_erst02)
   m01_rst02  = m01_f02_arg01
   m01_erst02 = 2
  end function
  subroutine m01_sub01(m01_s01_arg01)
   interface m01_ty02
    module procedure m01_func02, m01_ent02
   end interface
   integer :: m01_s01_arg01
   if (m01_s01_arg01.ne.m01_ty02( )) print *,101
   if (m01_s01_arg01.ne.m01_ty02(2)) print *,102
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   interface m01_ty02
    module procedure m01_func02, m01_ent02
   end interface
   type(m01_ty02) :: m01_s02_arg01
   if (same_type_as(m01_s02_arg01, m01_ty02(1, 1))) print *,201
  end subroutine
end module

use mod01

interface m01_ty02
 module procedure m01_func02, m01_ent01
end interface

call m01_sub01(m01_ty01( ))
call m01_sub01(m01_ty01(2))

call m01_sub01(m01_ty02( ))
call m01_sub01(m01_ty02(2))

call m01_sub02(m01_ty02(1, 1))

end
