module mod01
 type ty01
  sequence
  integer :: i01
  procedure(m01_func01), pointer, nopass :: pr_pn01
 end type
 type ty02
  sequence
  integer :: i01
  procedure(m01_func02), pointer, nopass :: pr_pn02
 end type
 contains
  function m01_func01() result(m01_rst01)
   integer :: m01_rst01
   m01_rst01 = 1
  end function
  function m01_func02() result(m01_rst02)
   integer :: m01_rst02
   m01_rst02 = 2
  end function
end module

use mod01, ty0A => ty01, ty0B => ty02

type ty01
 sequence
 integer :: i01
 procedure(m01_func01), pointer, nopass :: pr_pn01
end type

type ty02
 sequence
 integer :: i01
 procedure(m01_func02), pointer, nopass :: pr_pn02
end type

type (ty01) :: t01
type (ty02) :: t02

type (ty0A) :: t0A
type (ty0B) :: t0B

t01 = t0A
t02 = t0B

print *,'pass'

end
