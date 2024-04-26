program pro
implicit none
integer,parameter :: n1(2)=2
real,parameter :: arr(5)=[5.0,5.0,1.0,2.0,5.0]
Intrinsic :: BESSEL_JN
real :: x(2)=BESSEL_JN(n=n1,x=arr(3:4))
if( .not.(x(1)>0.10 .and. x(1)<0.12))  print *,101
if( .not.(x(2)>0.34 .and. x(2)<0.36))  print *,102
print*,"pass"
end
