module mod01
 interface
  function m01ifunc01() result(m01irst01)
   integer, pointer :: m01irst01(:)
  end function
 end interface
 contains
  function m01func01() result(m01rst01)
   integer, pointer :: m01rst01(:)
   m01rst01 => null()
  end function
end module

use mod01
use , intrinsic :: iso_c_binding

interface
 function ifunc01() result(irst01)
  integer, pointer :: irst01(:)
 end function
end interface

type(c_ptr) :: cptr
integer, pointer :: iipp_01(:), iipp_02(:)
type ty01
 integer, pointer :: iipp_01(:)
end type
type (ty01) :: tt01

iipp_01(1:2) => iipp_02

cptr = c_loc(iipp_01)
cptr = c_loc(iipp_01(1:2))
cptr = c_loc(tt01%iipp_01)
cptr = c_loc(ifunc01())
cptr = c_loc(cfunc01())
cptr = c_loc(m01ifunc01())
cptr = c_loc(m01func01())

print *,'pass'

contains
 function cfunc01() result(crst01)
  integer, pointer :: crst01(:)
  crst01 => null()
 end function
end

function ifunc01() result(irst01)
 integer, pointer :: irst01(:)
 irst01 => null()
end function

function m01ifunc01() result(m01irst01)
 integer, pointer :: m01irst01(:)
 m01irst01 => null()
end function
