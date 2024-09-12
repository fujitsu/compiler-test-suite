module mod01
 interface
  function mifunc01(mif1arg01) result(mirst01)
   integer :: mif1arg01
   integer :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 procedure(m1func01) :: pm1func01
 contains
  function m1func01(m1f1arg01, m1f1arg02) result(m1rst01)
   integer :: m1f1arg01
   integer :: m1f1arg02
   integer :: m1rst01
   m1rst01 = m1f1arg01 + m1f1arg02
  end function
  function m1func02() result(m1rst02)
   procedure(mifunc01), pointer :: m1rst02
   m1rst02 => pmifunc01
  end function
  function m1func03(m1f3arg01) result(m1rst03)
   integer, external            :: m1f3arg01
   procedure(m1func01), pointer :: m1rst03
   m1rst03 => m1f3arg01
  end function
end module

use mod01

interface pxfunc
 module procedure m1func02, m1func03
end interface

procedure(mifunc01), pointer :: pmifuncp01
procedure(m1func01), pointer :: pm1funcp01

pmifuncp01 => pxfunc()
pm1funcp01 => pxfunc(pm1func01)

if (pmifuncp01(4).ne.pm1funcp01(2, 2)) print *,'not pass'

print *,'pass'

end

function mifunc01(mif1arg01) result(mirst01)
 integer :: mif1arg01
 integer :: mirst01
 mirst01 = mif1arg01
end function

function pmifunc01(pmif1arg01) result(pmirst01)
 integer :: pmif1arg01
 integer :: pmirst01
 pmirst01 = pmif1arg01
end function

function pm1func01(pm1f1arg01, pm1f1arg02) result(pm1rst01)
 integer :: pm1f1arg01
 integer :: pm1f1arg02
 integer :: pm1rst01
 pm1rst01 = pm1f1arg01 * pm1f1arg02
end function
