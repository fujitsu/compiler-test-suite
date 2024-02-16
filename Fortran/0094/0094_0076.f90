program pro
implicit none
integer :: n1=2
integer :: n2=3
real(16) :: x(1,2)
real(16) :: rslt(2)
x(1,1)= 2.0
x(1,2)= 1.6
rslt=BESSEL_YN(n1,n2,x(1,2))
if( .not.(rslt(1)<-0.854 .and. rslt(1)>-0.855))  print *,101
if( .not.(rslt(2)<-1.789 .and. rslt(2)>-1.79))  print *,102
print*,"pass"
end
