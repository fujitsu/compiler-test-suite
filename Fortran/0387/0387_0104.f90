module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  function mifunc02() result(mirst02)
   real :: mirst02
  end function
 end interface
end module

module mod02
 contains
  function m2func01(di01) result(m2rst01)
   use mod01
   integer :: di01
   procedure(mifunc01), pointer :: m2rst01
   m2rst01 => mifunc01
  end function
  function m2func02(dr01) result(m2rst02)
   use mod01
   real :: dr01
   procedure(mifunc02), pointer :: m2rst02
   entry ent01(dr01) result(m2rst02)
   m2rst02 => mifunc02
  end function
end module

use mod01
use mod02

procedure(mifunc01), pointer :: mpfuncp01
procedure(mifunc02), pointer :: mpfuncp02

interface xfunc
 module procedure ent01,m2func01
end interface

mpfuncp01 => xfunc(1)
mpfuncp02 => xfunc(1.0)

if (mpfuncp01().ne.1  ) print *,'error 01'
if (mpfuncp02().ne.2.0) print *,'error 02'

print *,'pass'

end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function mifunc02() result(mirst02)
 real :: mirst02
 mirst02 = 2.0
end function
