module mod
 contains
  function ifunc03(di01) result(irst01)
   integer :: di01
   real(kind = 16) :: dr01
   procedure(integer), pointer :: irst01
  end function
end module

use mod,ifunc03a=>ifunc03

interface ifunc

 function ifunc03(di01) result(irst01)
  real(kind=8) :: di01
  procedure(real), pointer :: irst01
 end function

 function ifunc01(di01) result(irst01)
  integer(kind=8) :: di01
  procedure(integer), pointer :: irst01
 end function

 function ifunc02(dr01) result(irst0r)
  real :: dr01
  procedure(real), pointer :: irst0r
 end function

 module procedure ifunc03a

end interface

procedure(integer), pointer :: pprocp01
pprocp01 => ifunc(1)
end
