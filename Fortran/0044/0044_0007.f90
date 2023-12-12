program pro
type ty
  complex(kind=8) :: cc1(3)
  complex*16 :: cc2(3)
  complex*32 :: cc3(3)
end type
type(ty),parameter :: obj = ty((0.3508,0.5776),(0.3508,0.5776),(0.3508,0.5776))
complex :: res1 = ACOSH(obj%cc1(2))
complex*16 :: res2 = ACOSH(obj%cc2(2))
complex*32 :: res3 = ACOSH(obj%cc3(2))
if (.not.((real(res1))>0.56 .and.  (real(res1))<0.58)) print *,101
if (.not.((imag(res1))>1.25 .and.  (imag(res1))<1.27)) print *,102
if (.not.((real(res2))>0.56 .and.  (real(res2))<0.58)) print *,201
if (.not.((imag(res2))>1.25 .and.  (imag(res2))<1.27)) print *,202
if (.not.((real(res3))>0.56 .and.  (real(res3))<0.58)) print *,301
if (.not.((imag(res3))>1.25 .and.  (imag(res3))<1.27)) print *,302
print *,"pass"
end

