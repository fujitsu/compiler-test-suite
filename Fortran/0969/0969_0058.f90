module mod01
 type ty01
  integer :: ii01
 end type
 contains
  function m01_func01() result(m01_rst01)
   type ty02
    integer :: ii02
   end type
   type (ty02) :: m01_rst01
   m01_rst01 = ty02(2)
   contains
    function cfunc01() result(crst01)
     type ty03
      integer :: ii03
     end type
     type (ty03) :: crst01
     crst01 = ty03(3)
    end function
  end function
end module

module mod02
 type ty04
  integer :: ii04
 end type
end module

module mod03
 use mod02
 type (ty04) :: tt04
end module

module mod04
 contains
  function m04_func01() result(m04_rst01)
   use mod02
   type (ty04) :: m04_rst01
   m04_rst01 = ty04(4)
  end function
end module

module mod05
 type ty05
  integer :: ii05
 end type
 contains
  function m05_func01() result(m05_rst01)
   type (ty05) :: m05_rst01
   m05_rst01 = ty05(5)
  end function
end module

use mod01
use mod03
use mod04
use mod05

end
