program pro
implicit none
integer :: n1=2
integer :: n2=3
real(16) :: x(2,2)
real(16) :: rslt(2)
x(1,1)= 2.0
x(1,2)= 1.6
x(2,1)= 1.0
x(2,2)= 1.8
rslt=BESSEL_JN(n1,n2,x(2,1))
if( .not.(rslt(1)>0.10 .and. rslt(1)<0.12))  print *,101
if( .not.(rslt(2)>0.0194 .and. rslt(2)<0.0196))  print *,102
print*,"pass"
end
