module mod01
 interface
  function mod01_ifunc01(m01_if01_arg01, m01_if01_arg02) result(m01_irst01)
   integer :: m01_if01_arg01
   integer :: m01_if01_arg02
   integer :: m01_irst01
  end function
 end interface
end module

use mod01
implicit type(ty01) (i)

interface
 function ifunc01(if01_df01)
  use mod01
  type ty01
   sequence
   procedure(mod01_ifunc01), pointer, nopass :: pr_pn01
  end type
  procedure(integer) :: if01_df01
 type (ty01) :: ifunc01
 end function

end interface

intrinsic :: idim

type ty01
 sequence
 procedure(mod01_ifunc01), pointer, nopass :: pr_pn01
end type

type (ty01) :: t01

t01 = ifunc01(idim)

if (t01%pr_pn01(2, 2).ne.idim(2, 2)) print *,'1'

print *,'pass'

end

function ifunc01(if01_df01)
 use mod01
 type ty01
  sequence
  procedure(mod01_ifunc01), pointer, nopass :: pr_pn01
 end type
 procedure(integer) :: if01_df01
 type (ty01) :: ifunc01
 ifunc01 = ty01(if01_df01)
end function

function mod01_ifunc01(m01_if01_arg01, m01_if01_arg02) result(m01_irst01)
 integer :: m01_if01_arg01
 integer :: m01_if01_arg02
 integer :: m01_irst01
 m01_irst01 = m01_if01_arg01 + m01_if01_arg02
end function
