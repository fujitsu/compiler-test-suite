module mod01
 type, private :: ty01
  sequence
  integer   :: i01
  character :: c01
 end type
 contains
  function m01_func01(m01_f01_arg01) result(m01_rst01)
   integer :: m01_f01_arg01
   integer :: m01_rst01
   m01_rst01 = m01_f01_arg01
  end function
  function m01_func02(m01_f02_arg01, m01_f02_arg02) result(m01_rst02)
   integer   :: m01_f02_arg01
   character :: m01_f02_arg02
   type (ty01) :: m01_rst02
  end function
end module

use mod01

interface ty01
 module procedure m01_func01, m01_func02
end interface

type ty01
 sequence
 integer      :: i01
 character(3) :: c01
end type

print *,ty01(1, 'a')

end
