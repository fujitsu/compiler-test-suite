type ty
  real :: cc1(2)
  real*8 :: cc2(2)
  real*16 :: cc3(2)
end type
type(ty),parameter :: obj2(2) = ty([3.0,0.5],[3.0,0.5],[3.0,0.5])

real :: res1 = ASINH(obj2(2)%cc1(2))
real*8 :: res2 = ASINH(obj2(2)%cc2(2))
real*16 :: res3 = ASINH(obj2(2)%cc3(2))
if(.not.((res1)> 0.47 .and. (res1)<0.49)) print *,101
if(.not.((res2)> 0.47 .and. (res2)<0.49)) print *,102
if(.not.((res3)> 0.47 .and. (res3)<0.49)) print *,103
print *, "pass"
end

