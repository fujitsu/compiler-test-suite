module mod01
 interface
  function mifunc01(miarg01) result(mirst01)
   integer :: m1arg01
   integer :: mirst01
  end function
  subroutine misub01(miarg01)
   integer :: m1arg01
  end subroutine
 end interface
 contains
  function m1func01(m1arg01) result(m1rst01)
   integer :: m1arg01
   integer :: m1rst01
   entry m1ent01(m1arg01) result(m1rst01)
   m1rst01 = m1arg01
  end function
  subroutine m1sub01(m1arg01)
   integer :: m1arg01
   entry m1ent02(m1arg01)
  end subroutine
end module

module mod02
 use mod01, xfunc01 => mifunc01
 use mod01, xfunc02 => m1func01
 use mod01, ment01  => m1ent01
 use mod01, msub01  => misub01
 use mod01, msub02  => m1sub01
 use mod01, ment02  => m1ent02
 procedure(xfunc01) :: pfunc01
 procedure(xfunc02) :: pfunc02
 procedure(ment01)  :: pfunc03
 procedure(msub01)  :: psub01
 procedure(msub02)  :: psub02
 procedure(ment02)  :: psub03
end module

use mod02
integer :: ii01

procedure(cfunc01), pointer :: pfuncp01
procedure(csub01) , pointer :: psubp01

pfuncp01 => pfunc01
if (pfuncp01(1).ne.2) print *,'error pfunc01'

pfuncp01 => pfunc02
if (pfuncp01(1).ne.0) print *,'error pfunc02'

pfuncp01 => pfunc03
if (pfuncp01(2).ne.4) print *,'error pfunc03'

ii01 = 1
psubp01  => psub01
call psubp01(ii01)
if (ii01.ne.2) print *,'error psub01'
psubp01  => psub02
call psubp01(ii01)
if (ii01.ne.0) print *,'error psub02'
ii01 = 2
psubp01  => psub03
call psubp01(ii01)
if (ii01.ne.4) print *,'error psub03'

print *,'pass'

contains
 function cfunc01(carg01) result(crst01)
  integer :: carg01
  integer :: crst01
  crst01 = carg01
 end function
 subroutine csub01(carg01)
  integer :: carg01
 end subroutine
end

function pfunc01(parg01) result(prst01)
 integer :: parg01
 integer :: prst01
 prst01 = parg01 + parg01
end function

function pfunc02(parg02) result(prst02)
 integer :: parg02
 integer :: prst02
 prst02 = parg02 - parg02
end function

function pfunc03(parg03) result(prst03)
 integer :: parg03
 integer :: prst03
 prst03 = parg03 * parg03
end function

subroutine psub01(parg01)
 integer :: parg01
 parg01 = parg01 + parg01
end subroutine

subroutine psub02(parg02)
 integer :: parg02
 parg02 = parg02 - parg02
end subroutine

subroutine psub03(parg03)
 integer :: parg03
 parg03 = parg03 * parg03
end subroutine
