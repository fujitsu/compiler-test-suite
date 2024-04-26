module m1
real(4) :: arr(2,2)
real(4) :: x
end module m1

program pro
use m1
implicit none
 arr = 3.40282347E+37
 x=NORM2(x=arr)
if(.not.(x<=6.80565000E+37 .and. x>=6.80563000E+37)) print*,101
print*,"pass"
end
