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
rslt=BESSEL_JN(n=n,x=x)
if( .not.(rslt(1)>0.113 .and. rslt(1)<0.115))  print *,101
if( .not.(rslt(2)>0.350 .and. rslt(2)<0.354))  print *,102
print*,"pass"
end
