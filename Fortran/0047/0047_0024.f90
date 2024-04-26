program pro
implicit none
integer, parameter :: n(2)=[1,2]
real(kind=8), parameter :: x(2)=1.0
real(kind=8) :: rslt(2)=BESSEL_YN(n,x)
if( .not.(rslt(1)<-0.77 .and. rslt(1)>-0.79))  print *,101
if( .not.(rslt(2)<-1.64 .and. rslt(2)>-1.66))  print *,102
print*,"pass"
end
