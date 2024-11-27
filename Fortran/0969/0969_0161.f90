module mod01
 interface
  subroutine m01isub01()
  end subroutine
 end interface
 contains
  function m01func01() result(m01rst01)
   procedure(m01isub01), pointer :: m01rst01
   m01rst01 => m01isub01
  end function
end module

use mod01

interface
 function ifunc01() result(irst01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: irst01
 end function
 subroutine isub01()
 end subroutine
end interface

procedure(m01func01), pointer :: pm01func01p01
procedure(ifunc01),   pointer :: pifunc01p01
procedure(cfunc01),   pointer :: pcfunc01p01

pm01func01p01 => pm01func01p01
pm01func01p01 => pifunc01p01
pm01func01p01 => pcfunc01p01

pifunc01p01   => pm01func01p01
pifunc01p01   => pifunc01p01
pifunc01p01   => pcfunc01p01

pcfunc01p01   => pm01func01p01
pcfunc01p01   => pifunc01p01
pcfunc01p01   => pcfunc01p01

contains
 function cfunc01() result(crst01)
  procedure(isub01), pointer :: crst01
  crst01 => isub01
 end function
end

function ifunc01() result(irst01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: irst01
 irst01 => isub01
end function

subroutine isub01()
end subroutine

subroutine m01isub01()
end subroutine
