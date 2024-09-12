module mod01
 interface
  function mifunc01() result(mirst01)
   character(4) :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 contains
  function m1func01() result(m1rst01)
   character(4) :: m1rst01
   m1rst01 = 'pass'
  end function
end module

use mod01, mf1  => m1func01
use mod01, pmf1 => pmifunc01

procedure(mf1),          pointer :: pprocp01
procedure(character(4)), pointer :: pprocp02

pprocp01 => cfunc01(mf1)
pprocp02 => cfunc01(pmf1)

if (pprocp01().ne.pprocp02()) print *,'not pass'

print *,'pass'

contains
 function cfunc01(carg01) result(crst01)
  character(4), external           :: carg01
  procedure(character(4)), pointer :: crst01
  crst01 => carg01
 end function
end

function pmifunc01() result(pmirst01)
 character(4) :: pmirst01
 pmirst01 = 'pass'
end function
