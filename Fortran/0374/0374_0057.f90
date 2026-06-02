module m1
 integer :: i1,i2
 integer :: j1,j2
 common /com1/j1
 common /com2/j2

 bind(c) :: i1
 bind(c) :: /com1/
 bind(c) :: i2,/com2/

contains
 subroutine sub1
  i1=1
  i2=2
  j1=1
  j2=2
 end subroutine
end module

use m1
integer :: k1
common /com3/k1
bind(c) :: /com3/

k1=1

call sub1
if(i1 /= 1) print *,'fail'
if(i2 /= 2) print *,'fail'
if(j1 /= 1) print *,'fail'
if(j2 /= 2) print *,'fail'
if(k1 /= 1) print *,'fail'

print *,'pass'
end
