program pro
implicit none
real :: arr(5)
Intrinsic :: BESSEL_J0
real :: x(2)
arr= 5.0
arr(3)= 1.0
arr(4)= 2.0
x=BESSEL_J0(x=arr(3:4))
if( .not.(x(1)>0.74 .and. x(1)<0.78))  print *,101
if( .not.(x(2)>0.20 .and. x(2)<0.25))  print *,102
print*,"pass"
end
