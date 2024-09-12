module mod01
 type ty01
  sequence
  integer(kind = 4) :: i01
  integer(kind = 4) ,private:: i02
 end type
type (ty01) :: t101
end module

module mod02
 type ty01
  sequence
  integer(kind = 4) :: i01
  integer(kind = 4) ,private:: i02
 end type
type (ty01) :: t102
contains
 subroutine set
    t102%i01=1
    t102%i02=2
 end subroutine
end module

use mod01,only:t101
use mod02,only:t102,set

call set
t101%i01 = t102%i01

print *,'pass'
end
