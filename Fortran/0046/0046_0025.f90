program pro
type ty
  real(kind=4) :: cc1(3)
end type
type(ty),parameter :: obj = ty((/2.0,1.0,2.2/))
real :: res1 = BESSEL_J1(obj%cc1(2))
if (.not.(res1>0.43 .and.  res1<0.46)) print *,101
print *,"pass"
end

