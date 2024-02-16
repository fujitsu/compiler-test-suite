program pro
implicit none
real :: arr(5)
Intrinsic :: BESSEL_J1
real :: x(2)
arr= 5.0
arr(3)= 1.0
arr(4)= 2.0
x=BESSEL_J1(x=arr(3:4))
if( .not.(x(1)>0.43 .and. x(1)<0.46))  print *,101
if( .not.(x(2)>0.56 .and. x(2)<0.58))  print *,102
print*,"pass"
end
