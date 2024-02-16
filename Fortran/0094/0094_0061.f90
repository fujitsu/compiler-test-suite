module m1
  complex :: arr(2,2)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
arr(1,1)= (1.0,2.0)
arr(1,2)= (2.0,1.8)
arr(2,1)= (2.0,2.2)
arr(2,2)= (1.4,1.8)
x=BESSEL_Y0(arr%im)
  if( .not.(x(1,1)>0.50 .and. x(1,1)<0.54))  print *,101
   if( .not.(x(2,1)>0.50 .and. x(2,1)<0.54))  print *,102
    if( .not.(x(1,2)>0.45 .and. x(1,2)<0.49))  print *,103
     if( .not.(x(2,2)>0.45 .and. x(2,2)<0.49))  print *,104
print*,"pass"
end
