module mod01
 type ty01
  integer :: ii01
 end type
end module

use mod01

interface
 function ifunc01() result(irst01)
  use mod01
  type (ty01) :: irst01
 end function
 function jfunc01() result(jrst01)
  use mod01
  type (ty01) :: jrst01
 end function
end interface

procedure(ifunc01), pointer :: pifunc01p01
type (ty01) :: tt01
pifunc01p01 => jfunc01
tt01 = pifunc01p01()

if (tt01%ii01.ne.1) print *,'error'

print *,'pass'

end

function jfunc01() result(jrst01)
 use mod01
 type (ty01) :: jrst01
 jrst01 = ty01(1)
end function
