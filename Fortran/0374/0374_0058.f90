module m1
  integer :: i1,i2
  common /com1/i1,i2
 interface
  subroutine s1
  common /com1/i1,i2
  bind(c) :: /com1/
  end subroutine
 end interface
contains
 subroutine sub1
  i1=1
  i2=2
 end subroutine
end module

use m1
interface
 subroutine s2
 common /com2/i1,i2
 bind(c) :: /com2/
 end subroutine
end interface

call sub1

if(i1 /= 1) print *,'fail'
if(i2 /= 2) print *,'fail'

print *,'pass'
end
