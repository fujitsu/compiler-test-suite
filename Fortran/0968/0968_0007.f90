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

interface ty01
 function ifunc01(if01_arg01) result(irst01)
  use mod01
  procedure(m01_func01), pointer :: if01_arg01
  integer                        :: irst01
 end function
end interface

interface ty0A
 function ifunc02(if02_arg01) result(irst02)
  use mod01
  procedure(m01_func01), pointer :: if02_arg01
  integer                        :: irst02
 end function
end interface

interface ty03
 function ifunc03(if03_arg01) result(irst03)
  use mod01
  procedure(m01_func01) :: if03_arg01
  integer               :: irst03
 end function
end interface

type ty01
 sequence
 procedure(m01_func01), pointer, nopass :: pr_pn01
end type

if (same_type_as(ty01(m01_func01), ty0A(m01_func01))) print *,'a'

print *,ty03(m01_func01)

end

function ifunc01(if01_arg01) result(irst01)
 use mod01
 procedure(m01_func01), pointer :: if01_arg01
 integer                        :: irst01
 irst01 = if01_arg01()
end function

function ifunc02(if02_arg01) result(irst02)
 use mod01
 procedure(m01_func01), pointer :: if02_arg01
 integer                        :: irst02
 irst02 = if02_arg01()
end function

function ifunc03(if03_arg01) result(irst03)
 use mod01
 procedure(m01_func01) :: if03_arg01
 integer               :: irst03
 irst03 = if03_arg01()
end function
