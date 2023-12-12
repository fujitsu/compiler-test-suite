! 1D Array, Array Section
! Keywords Used
! INTRINSIC Keyword Used
program pro
implicit none
integer,parameter :: n1(2)=2
real,parameter :: arr(5)=[5.0,5.0,1.0,2.0,5.0]
Intrinsic :: BESSEL_YN
real :: x(2)=BESSEL_YN(n=n1,x=arr(3:4))
if( .not.(x(1)<-1.64 .and. x(1)>-1.66))  print *,101
if( .not.(x(2)<-0.60 .and. x(2)>-0.62))  print *,102
print*,"pass"
end
