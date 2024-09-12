module mod01
 type ty01
  sequence
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function
end module

use mod01, ty0A => ty01

type(ty0A) :: t01, t02

t01 = t02
print *,'pass'
end
