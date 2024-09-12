module mod01
 interface
  function ifunc01() result(irst01)
   integer :: irst01
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
   procedure(ifunc01), pointer, intent(out) :: dprocp01
   dprocp01 => ifunc01
  end subroutine
end module

use mod01
use mod02

procedure() :: pprocp01, pprocp02, pprocp03
integer     :: pprocp01, pprocp02, pprocp03
pointer     :: pprocp01, pprocp02, pprocp03

type ty01
 procedure(ifunc01), pointer, nopass :: pifuncp01
end type
type (ty01) :: tt01

pprocp01 => m2func01()
tt01%pifuncp01 => m2func01()
pprocp03 => ifunc01

if (pprocp01().ne.tt01%pifuncp01()) print *,'error 01'
if (pprocp01().ne.pprocp03())       print *,'error 03'

print *,'pass'

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 101
end function
