module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
 end interface
end module

use mod01

procedure(mifunc01), pointer :: procp01

procp01 => mifunc01

call csub01(procp01)

contains
 subroutine csub01(pprocp01)
  procedure(), pointer :: pprocp01
 end subroutine
end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function
