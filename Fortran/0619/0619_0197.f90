module mod01
 type ty01
  sequence
  integer(kind = 4) :: i01
  integer(kind = 4) ,private:: i02
 end type
type (ty01) :: t101
contains
subroutine chk01(x)
type(ty01)::x
if (t101%i01/=2)print *,101
end subroutine
end module

module mod02
 type ty01
  sequence
  integer(kind = 4) :: i01
  integer(kind = 4) ,private:: i02
 end type
type (ty01) :: t102
contains
subroutine set02(x)
type(ty01)::x
x=ty01(1,2)
end subroutine
end module

module xx
use mod01,only:t101
use mod02,only:t102
interface assignment(=)
 module procedure z
end interface
contains
subroutine z(r,a) 
use mod01,only:ty01,chk01
use mod02,only:ty02=>ty01
type(ty01),intent(out)::r
type(ty02),intent(in)::a
r%i01=a%i01+1
end subroutine
subroutine s1
use mod02,only:ty02=>ty01,set02
use mod01,only:chk01
call set02(t102)
t101 = t102  
call chk01(t101)
end subroutine
end

use xx
call s1
print *,'pass'
end
