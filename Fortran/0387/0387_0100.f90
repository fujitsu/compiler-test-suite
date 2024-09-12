module mod01
 interface
  function ifunc01() result(irst01)
   character(4) :: irst01
  end function
 end interface
end module

module mod02
 use mod01
 contains
  function m2func01() result(mrst01)
   procedure(ifunc01), pointer :: mrst01
   mrst01 => ifunc01
  end function
  subroutine m2sub01(dprocp01)
   procedure(ifunc01), pointer :: dprocp01
   dprocp01 => ifunc01
  end subroutine
  subroutine m2sub02(dproc01, dprocp01)
   procedure(ifunc01)          :: dproc01
   procedure(ifunc01), pointer :: dprocp01
   dprocp01 => dproc01
  end subroutine
  subroutine m2sub03(dprocp01, dprocp02)
   procedure(ifunc01), pointer :: dprocp01
   procedure(ifunc01), pointer :: dprocp02
   dprocp01 => dprocp02
  end subroutine
end module

use mod01
use mod02

procedure()  :: pprocp01, pprocp02, pprocp03, pprocp04, pprocp05
character(4) :: pprocp01, pprocp02, pprocp03, pprocp04, pprocp05
pointer      :: pprocp01, pprocp02, pprocp03, pprocp04, pprocp05

type ty01
 procedure(ifunc01), pointer, nopass :: pifuncp01
end type
type (ty01) :: tt01

pprocp01 => m2func01()
tt01%pifuncp01 => m2func01()
pprocp03 => ifunc01

if (pprocp01().ne.tt01%pifuncp01()) print *,'error 01'
if (pprocp01().ne.pprocp03())       print *,'error 03'

print *,pprocp01()

end

function ifunc01() result(irst01)
 character(4) :: irst01
 irst01 = 'pass'
end function

function dproc01() result(irst01)
 character(4) :: irst01
 irst01 = 'pass'
end function
