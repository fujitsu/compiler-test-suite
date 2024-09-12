module mod01
 type ty01
  integer, private :: ip01 = 101
 end type
end module

use mod01

type , extends(ty01) :: ty02
 integer :: ip02 = 202
end type

type (ty02) :: tt02

tt02 = ty02(ip02 = 2)
tt02 = ty02()

print *,'pass'

end
