module mod01
 type ty01
  integer :: i01
 end type
 type ty02
  integer :: i02
 end type
 contains
  function m01func01() result(m01rst01)
   type(ty01) :: m01rst01
   m01rst01 = ty01(1)
  end function
end module
use mod01
interface ty02
 function ifunc01() result(irst01)
  use mod01
  type(ty02) :: irst01
 end function
end interface
print *,'pass'
end
