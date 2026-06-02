module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  function mifunc02(miarg01) result(mirst02)
   integer :: miarg01
   integer :: mirst02
  end function
  function mifunc03(miarg01, miarg02) result(mirst02)
   integer :: miarg01
   integer :: miarg02
   integer :: mirst03
  end function
 end interface
 type m1ty01
  procedure(mifunc01), pointer, nopass :: pmifunc01p
  procedure(mifunc02), pointer, nopass :: pmifunc02p
  procedure(mifunc03), pointer, nopass :: pmifunc03p
 end type
 contains
  function m1func01(m1f1arg01) result(m1rst01)
   integer, external, pointer :: m1f1arg01
   integer                    :: m1rst01
   m1rst01 = m1f1arg01()
  end function
  function m1func02(m1f2arg01) result(m1rst02)
   integer, external, pointer :: m1f2arg01
   integer                    :: m1rst02
   m1rst02 = m1f2arg01()
  end function
  function m1func03() result(m1rst03)
   integer :: m1rst03
   m1rst03 = 1
  end function
end module

use mod01

type (m1ty01) :: m1tt01_01
type (m1ty01) :: m1tt01_02
integer       :: i1, i2

i1 = m1func01(cfunc01())
i2 = m1func02(cfunc02())

print *,'pass'

contains

 function cfunc01() result(crst01)
  use mod01
  procedure(integer) , pointer :: crst01
  crst01 => m1func03
 end function

 function cfunc02() result(crst02)
  use mod01
  integer, external ,  pointer :: crst02
  crst02 => m1func03
 end function

end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function mifunc02(miarg01) result(mirst02)
 integer :: miarg01
 integer :: mirst02
 mirst02 = miarg01
end function

function mifunc03(miarg01, miarg02) result(mirst03)
 integer :: miarg01
 integer :: miarg02
 integer :: mirst03
 mirst03 = miarg01 + miarg02
end function
