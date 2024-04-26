program pro
implicit none
integer, parameter :: n(2)=[1,2]
real(kind=8), parameter :: x(2)=1.0
real(kind=8) :: rslt(2)=BESSEL_JN(n,x)
if( .not.(rslt(1)>0.42 .and. rslt(1)<0.46))  print *,101
if( .not.(rslt(2)>0.113 .and. rslt(2)<0.116))  print *,102
print*,"pass"
end
