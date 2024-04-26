type ty
  real :: cc1(2)
  real :: cc2(2)
end type
type(ty),parameter :: obj(2) = ty((/2.0,1.0/),(/4.0,9.0/))
real :: res1(2)=HYPOT(obj(1)%cc1,obj(2)%cc2)
if (.not.((res1(1))>4.46 .and.  (res1(1))<4.48)) print *,101,res1
if (.not.((res1(2))>9.04 .and.  (res1(2))<9.06)) print *,102
print *,"pass"
end
