!Kind 16
program pro
type ty
real :: x
end type
type(ty),parameter  :: obj=ty(1.0)
integer(kind=8),parameter :: n1=2
integer(kind=8),parameter :: n2=3
real(kind=16) :: rslt(2)=BESSEL_JN(n1,n2,obj%x)
if( .not.(rslt(1)>0.10 .and. rslt(1)<0.12))  print *,101
if( .not.(rslt(2)>0.0194 .and. rslt(2)<0.0196))  print *,102
print *, "pass"
end

