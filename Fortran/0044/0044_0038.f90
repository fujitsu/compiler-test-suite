type ty
  complex :: cc1(2)
end type
type(ty),parameter :: obj = ty((/(0.2,1.0),(1.0,0.3)/))
complex :: res1(2)=ASINH(obj%cc1)
complex*16 :: res2(2)=ASINH(obj%cc1)
complex*32 :: res3(2)=ASINH(obj%cc1)
if (.not.((real(res1(1)))>0.44 .and.  (real(res1(1)))<0.46)) print *,101
if (.not.((imag(res1(1)))>1.12 .and.  (imag(res1(1)))<1.14)) print *,102
if (.not.((real(res1(2)))>0.88 .and.  (real(res1(2)))<0.90)) print *,103
if (.not.((imag(res1(2)))>0.20 .and.  (imag(res1(2)))<0.22)) print *,104
if (.not.((real(res2(1)))>0.44 .and.  (real(res2(1)))<0.46)) print *,201
if (.not.((imag(res2(1)))>1.12 .and.  (imag(res2(1)))<1.14)) print *,202
if (.not.((real(res2(2)))>0.88 .and.  (real(res2(2)))<0.90)) print *,203
if (.not.((imag(res2(2)))>0.20 .and.  (imag(res2(2)))<0.22)) print *,204
if (.not.((real(res3(1)))>0.44 .and.  (real(res3(1)))<0.46)) print *,301
if (.not.((imag(res3(1)))>1.12 .and.  (imag(res3(1)))<1.14)) print *,302
if (.not.((real(res3(2)))>0.88 .and.  (real(res3(2)))<0.90)) print *,303
if (.not.((imag(res3(2)))>0.20 .and.  (imag(res3(2)))<0.22)) print *,304
print *,"pass"
end

