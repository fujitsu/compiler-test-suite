module mod01
 interface
  function mifunc01() result(mirst01) bind(c, name = 'ABC')
   character(1) :: mirst01
  end function
 end interface
 procedure(mifunc01), bind(c, name = 'DEF') :: pmifunc01
 contains
  function m1func01() result(m1rst01) bind(c)
   character(1) :: m1rst01
   m1rst01 = 'pass'
  end function
end module

use mod01, mif1  => mifunc01
use mod01, pmif1 => pmifunc01
use mod01, m1f1  => m1func01

procedure(m1f1), pointer :: pm1funcp01
procedure(m1f1), pointer :: pm1funcp02

pm1funcp01 => cfunc01(mif1)
pm1funcp02 => cfunc01(pmif1)

if (pm1funcp01().ne.pm1funcp02()) print *,'not pass'

print *,'pass'

contains
 function cfunc01(carg01) result(crst01)
  procedure(m1f1)          :: carg01
  procedure(m1f1), pointer :: crst01
  crst01 => carg01
 end function
end

function mifunc01() result(mirst01) bind(c, name = 'ABC')
 character(1) :: mirst01
 mirst01 = 'pass'
end function

function pmifunc01() result(pmirst01) bind(c, name = 'DEF')
 character(1) :: pmirst01
 pmirst01 = 'pass'
end function
