type ty
  real :: cc1(3)
end type
type(ty),parameter :: obj = ty((/2.0,1.0,2.0/))
real :: res1 = HYPOT(obj%cc1(2),obj%cc1(1))
if (.not.((res1)>2.22 .and.  (res1)<2.24)) print *,101,res1
print *,"pass"

end
