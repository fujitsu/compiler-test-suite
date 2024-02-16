program pro
implicit none
real :: arr(5)
Intrinsic :: BESSEL_Y1
real :: x(2)
arr= 5.0
arr(3)= 3.0
arr(4)= 4.0
x=BESSEL_Y1(x=arr(3:4))
if( .not.(x(1)>0.31 .and. x(1)<0.34))  print *,101
if( .not.(x(2)>0.37 .and. x(2)<0.40))  print *,102
print*,"pass"
end
