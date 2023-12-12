program pro
type ty
  complex(kind=8) :: cc1(3)
  complex*16 :: cc2(3)
  complex*32 :: cc3(3)
end type
type(ty),parameter :: obj = ty((0.3508,0.5776),(0.3508,0.5776),(0.3508,0.5776))
complex :: res1 = ATANH(obj%cc1(2))
complex*16 :: res2 = ATANH(obj%cc2(2))
complex*32 :: res3 = ATANH(obj%cc3(2))
if (.not.((real(res1))>0.25 .and.  (real(res1))<0.27)) print *,101
if (.not.((imag(res1))>0.55 .and.  (imag(res1))<0.57)) print *,102
if (.not.((real(res2))>0.25 .and.  (real(res2))<0.27)) print *,201
if (.not.((imag(res2))>0.55 .and.  (imag(res2))<0.57)) print *,202
if (.not.((real(res3))>0.25.and.  (real(res3))<0.27)) print *,301
if (.not.((imag(res3))>0.55 .and.  (imag(res3))<0.57)) print *,302
print *,"pass"
end

