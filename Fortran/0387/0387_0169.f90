module mod01
 type                :: ty01
  character(4)       :: ii01 = 'fire'
 end type
 type, extends(ty01) :: ty02
 end type
end module

use mod01

interface ifunc
 function ifunc01(iarg01) result(irst01)
  use mod01
  procedure(type(ty01)) :: iarg01
  character(4) :: irst01
 end function

 function ifunc02(iarg02) result(irst02)
  use mod01
  procedure(type(ty02)) :: iarg02
  character(4) :: irst02
 end function
end interface

interface tyfunc
 function tyfunc01() result(tyrst01)
  use mod01
  type(ty01) :: tyrst01
 end function
end interface

print *,ifunc(tyfunc01)

end

function tyfunc01() result(tyrst01)
 use mod01
 type(ty01) :: tyrst01
 tyrst01 = ty01('pass')
end function

function ifunc01(iarg01) result(irst01)
 use mod01
 procedure(type(ty01)) :: iarg01
 type (ty01) :: tt01
 character(4) :: irst01
 tt01 = iarg01()
 irst01 = tt01%ii01
end function
