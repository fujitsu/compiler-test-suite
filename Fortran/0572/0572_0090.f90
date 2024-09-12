module m1
  complex :: arr(2,2)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
arr(1,1)= (10.0,10.4)
arr(1,2)= (20.0,20.0)
arr(2,1)= (20.0,10.8)
arr(2,2)= (10.4,20.2)
x=ERFC_SCALED(arr%im)
  if( .not.(x(1,1)>0.053 .and. x(1,1)<0.055))  print *,101
  if( .not.(x(1,2)>0.026 .and. x(1,2)<0.029))  print *,102
  if( .not.(x(2,1)>0.051 .and. x(2,1)<0.054))  print *,103
  if( .not.(x(2,2)>0.026 .and. x(2,2)<0.029))  print *,104
print*,"pass"
end
