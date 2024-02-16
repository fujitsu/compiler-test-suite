program pro
implicit none
integer, pointer :: n(:)
real(kind=16), pointer :: x(:)
real(kind=16) :: rslt(2)
allocate(n(2))
allocate(x(2))
n(1)= 2
n(2)= 2
x(1)= 1.0
x(2)= 2.0
rslt=BESSEL_YN(n=n,x=x)
if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-0.60 .and. rslt(2)>-0.62))  print *,102
print*,"pass"
end
