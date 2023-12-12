type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj2(2) = (/ty((/3.0,2.0/)),ty((/3.0,2.0/))/)
real :: res1 = BESSEL_J0(obj2(2)%cc1(2))
if(.not.(res1> 0.21 .and. res1<0.24)) print *,101
print *, "pass"
end

