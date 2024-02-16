program pro
implicit none
integer :: n1(2)
real :: arr(5)
Intrinsic :: BESSEL_JN
real :: x(2)
n1=2
arr= 5.0
arr(3)= 1.0
arr(4)= 2.0
x=BESSEL_JN(n=n1,x=arr(3:4))
if( .not.(x(1)>0.10 .and. x(1)<0.12))  print *,101
if( .not.(x(2)>0.34 .and. x(2)<0.36))  print *,102
print*,"pass"
end
