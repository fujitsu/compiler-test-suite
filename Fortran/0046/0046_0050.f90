type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj2(2) = (/ty((/3.0,2.0/)),ty((/3.0,2.0/))/)
real :: res1 = BESSEL_Y0(obj2(2)%cc1(2))
if(.not.(res1> 0.50 .and. res1<0.53)) print *,101
print *, "pass"
end

