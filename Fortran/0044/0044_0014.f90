type ty
  complex :: cc1(2)
  complex*16 :: cc2(2)
  complex*32 :: cc3(2)
end type
type(ty),parameter :: obj2(2) = ty([(3.0,2.0),(0.3,0.5)],[(3.0,2.0),(0.3,0.5)],[(3.0,2.0),(0.3,0.5)])

complex :: res1 = ACOSH(obj2(2)%cc1(2))
complex*16 :: res2 = ACOSH(obj2(2)%cc2(2))
complex*32 :: res3 = ACOSH(obj2(2)%cc3(2))
if(.not.(real(res1)> 0.48 .and. real(res1)<0.50)) print *,101
if(.not.(imag(res1)> 1.29 .and. imag(res1)<1.31)) print *,102

if(.not.(real(res2)> 0.48 .and. real(res2)<0.50)) print *,103
if(.not.(imag(res2)> 1.29 .and. imag(res2)<1.31)) print *,104

if(.not.(real(res3)> 0.48 .and. real(res3)<0.50)) print *,105
if(.not.(imag(res3)> 1.29 .and. imag(res3)<1.31)) print *,106
print *, "pass"
end

