program pro
implicit none
integer, allocatable :: n(:)
real(kind=8), allocatable :: x(:)
real(kind=8) :: rslt(2)
allocate(n(2))
allocate(x(2))
n(1)= 1
n(2)= 2
x(1)= 1.0
x(2)= 1.0
rslt=BESSEL_JN(n,x)
if( .not.(rslt(1)>0.42 .and. rslt(1)<0.46))  print *,101
if( .not.(rslt(2)>0.113 .and. rslt(2)<0.116))  print *,102
print*,"pass"
end
