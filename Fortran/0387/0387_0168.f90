module mod01
 type                :: ty01
  integer            :: ii01 = 100
 end type
 type, extends(ty01) :: ty02
 end type
end module

use mod01

interface ifunc
 function ifunc01(iarg01) result(irst01)
  use mod01
  procedure(type(ty01)) :: iarg01
  integer :: irst01
 end function

 function ifunc02(iarg02) result(irst02)
  use mod01
  procedure(type(ty02)) :: iarg02
  integer :: irst02
 end function
end interface

interface tyfunc
 function tyfunc01() result(tyrst01)
  use mod01
  type(ty01) :: tyrst01
 end function
end interface

if (ifunc(tyfunc01).ne.111) print *,'not pass'

print *,'pass'

end

function tyfunc01() result(tyrst01)
 use mod01
 type(ty01) :: tyrst01
 tyrst01 = ty01(111)
end function

function ifunc01(iarg01) result(irst01)
 use mod01
 procedure(type(ty01)) :: iarg01
 type (ty01) :: tt01
 integer :: irst01
 tt01 = iarg01()
 irst01 = tt01%ii01
end function
