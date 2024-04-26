module m1
real(8) :: arr(2,2)
real(8) :: x
contains
subroutine sub1
implicit none
 x=NORM2(x=arr)
end subroutine
end module m1

program pro
use m1
implicit none
 arr(1,1)= 2.0
 arr(1,2)= 3.0
 arr(2,1)= 4.0
 arr(2,2)= 5.0
call sub1
if(.not.(x<=7.4 .and. x>=7.2)) print*,101
print*,"pass"
end
