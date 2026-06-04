type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj2(2) = (/ty((/30.0,20.0/)),ty((/30.0,20.0/))/)
real :: res1 = ERFC_SCALED(obj2(2)%cc1(2))
if(.not.(res1> 0.026 .and. res1<0.029)) print *,101,res1
print *, "pass"
end

