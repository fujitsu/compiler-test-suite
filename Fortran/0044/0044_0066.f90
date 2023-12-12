type ty
  complex :: cc1(2)
  complex*16 :: cc2(2)
  complex*32 :: cc3(2)
end type
type(ty),parameter :: obj2(2) = ty([(3.0,2.0),(0.3,0.5)],[(3.0,2.0),(0.3,0.5)],[(3.0,2.0),(0.3,0.5)])

complex :: res1 = ATANH(obj2(2)%cc1(2))
complex*16 :: res2 = ATANH(obj2(2)%cc2(2))
complex*32 :: res3 = ATANH(obj2(2)%cc3(2))
if(.not.(real(res1)> 0.23 .and. real(res1)<0.25)) print *,101
if(.not.(imag(res1)> 0.48 .and. imag(res1)<0.51)) print *,102

if(.not.(real(res2)> 0.23 .and. real(res2)<0.25)) print *,103
if(.not.(imag(res2)> 0.48 .and. imag(res2)<0.51)) print *,104

if(.not.(real(res3)> 0.23 .and. real(res3)<0.25)) print *,105
if(.not.(imag(res3)> 0.48 .and. imag(res3)<0.51)) print *,106
print *, "pass"
end

