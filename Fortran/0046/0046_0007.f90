program pro
type ty
  real(kind=4) :: cc1(3)
end type
type(ty),parameter :: obj = ty((/2.0,1.0,2.2/))
real(kind=4) :: res1 = BESSEL_J0(obj%cc1(2))
if (.not.(res1>0.75 .and.  res1<0.78)) print *,101
print *,"pass"
end

