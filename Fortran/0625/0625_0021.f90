module mod01
 type ty01
  integer :: i01
 end type
end module

use mod01

interface ty01
 function ifunc01(if01_arg01) result(irst01)
  use mod01
  type (ty01), optional :: if01_arg01
  type (ty01)           :: irst01
 end function
end interface

type, extends(ty01) :: ty02
 integer :: i02
end type

type (ty02) :: tt02

tt02 = ty02(ty01 = ty01(ty01()), i02 = 1)

if (tt02%i01.ne.4) print *,'i01'
if (tt02%i02.ne.1) print *,'i02'

print *,'pass'

end

function ifunc01(if01_arg01) result(irst01)
 use mod01
 type (ty01), optional :: if01_arg01
 type (ty01)           :: irst01
 irst01 = ty01(4)
 if (present(if01_arg01)) irst01 = if01_arg01
end function
