module mod01
 interface
  function xfunc01() result(mrst01)
   integer :: mrst01
  end function
 end interface
 type ty01
  sequence
  procedure(xfunc01),pointer,nopass :: pxfunc01p
 end type
 type(ty01) :: mod01_str
end module

module mod02
 interface
  function xfunc01() result(mrst01)
   integer :: mrst01
  end function
 end interface
 type ty01
  sequence
  procedure(xfunc01),pointer,nopass :: pxfunc01p
 end type
 type(ty01) :: mod02_str
end module

module mod03
 interface
  function xfunc01() result(mrst01)
   integer :: mrst01
  end function
 end interface
 type ty01
  sequence
  procedure(xfunc01),pointer,nopass :: pxfunc01p
 end type
 type(ty01) :: mod03_str
end module

use mod01
use mod02
use mod03

mod01_str = mod02_str
print *,'pass'
end
