type ty
  real :: cc1(2)
  real*8 :: cc2(2)
  real*16 :: cc3(2)
end type
type(ty),parameter :: obj2(2) = ty([3.0,5.1],[3.0,5.1],[3.0,5.1])

real :: res1 = ACOSH(obj2(2)%cc1(2))
real*8 :: res2 = ACOSH(obj2(2)%cc2(2))
real*16 :: res3 = ACOSH(obj2(2)%cc3(2))
if(.not.((res1)> 2.30 .and. (res1)<2.33)) print *,101
if(.not.((res2)> 2.30 .and. (res2)<2.33)) print *,102
if(.not.((res3)> 2.30 .and. (res3)<2.33)) print *,103
print *, "pass"
end

