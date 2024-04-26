type ty
  real :: cc1(2)
end type
type(ty),parameter :: obj2(2) = (/ty((/3.0,4.0/)),ty((/3.0,4.0/))/)
real :: res1 = LOG_GAMMA(obj2(2)%cc1(2))
if(.not.(res1> 1.78 .and. res1<1.80)) print *,101,res1
print *, "pass"
end
