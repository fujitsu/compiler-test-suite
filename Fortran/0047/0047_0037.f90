!Kind 16
program pro
type ty
real :: x
end type
type(ty),parameter :: obj=ty(1.0)
integer(kind=8),parameter :: n1=2
integer(kind=8),parameter :: n2=3
real(kind=16) :: rslt(2)=BESSEL_YN(n1,n2,obj%x)
if( .not.(rslt(1)<-1.64 .and. rslt(1)>-1.66))  print *,101
if( .not.(rslt(2)<-5.81 .and. rslt(2)>-5.83))  print *,102
print *, "pass"
end

