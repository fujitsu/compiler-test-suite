module mod
interface bill
module procedure fred, jim
end interface
contains
function fred(i)
integer :: i
fred=i+2
end function fred
function jim(r)
real :: r
jim=r*3
end function jim
end module mod

use mod
real*8 a(100),b(100),c
DO i=1,100
b(i)=fred(i)+1
ENDDO
DO i=1,100
c=i+1.5
a(i)=sin(b(i))+c
b(i)=cos(b(i))
enddo
write(6,*)"a=",a
write(6,*)"b=",b
end
