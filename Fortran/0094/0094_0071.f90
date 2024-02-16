module m1
  complex :: arr(2,2)
  real :: x(2,2)
end module m1
program pro
use m1
implicit none
arr(1,1)= (1.0,3.0)
arr(1,2)= (2.0,4.0)
arr(2,1)= (2.0,5.0)
arr(2,2)= (1.4,3.5)
x=BESSEL_Y1(arr%im)
       if( .not.(x(1,1)>0.30 .and. x(1,1)<0.34))  print *,101
       if( .not.(x(2,1)>0.12 .and. x(2,1)<0.16))  print *,102
       if( .not.(x(1,2)>0.37 .and. x(1,2)<0.40))  print *,103
       if( .not.(x(2,2)>0.40 .and. x(2,2)<0.45))  print *,104
    print*,"pass"
end
