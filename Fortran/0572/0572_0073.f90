module m1
  real :: arr(3,2)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
arr(1,1)= 30.4
arr(1,2)= 20.0
arr(2,1)= 30.8
arr(2,2)= 20.2
arr(3,1)= 20.5
arr(3,2)= 30.2
x=ERFC_SCALED(arr(1*1:1+1,1:3-1))
if( .not.(x(1,1)>0.0184 .and. x(1,1)<0.0186))  print *,101
if( .not.(x(2,1)>0.0182 .and. x(2,1)<0.0186))  print *,102
if( .not.(x(1,2)>0.027 .and. x(1,2)<0.029))  print *,103
if( .not.(x(2,2)>0.026 .and. x(2,2)<0.029))  print *,104
print*,"pass"
end
