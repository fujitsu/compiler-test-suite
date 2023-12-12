program pro
type ty
  real(kind=8) :: cc1(3)
end type
type(ty),parameter :: obj = ty((/2.0,1.0,2.2/))
real :: res1 = BESSEL_Y0(obj%cc1(2))
if (.not.(res1>0.086 .and.  res1<0.089)) print *,101
print *,"pass"
end

