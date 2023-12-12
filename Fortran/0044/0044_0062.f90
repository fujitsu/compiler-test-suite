program pro
complex,parameter :: xx1 = (0.2744,0.4383)
complex*16,parameter :: xx2 = (0.2744,0.4383)
complex*32,parameter :: xx3 = (0.2744,0.4383)

complex :: rslt1=ATANH(ATANH(xx1))
complex*16 :: rslt2=ATANH(ATANH(xx2))
complex*32 :: rslt3=ATANH(ATANH(xx3))
if(.not.(real(rslt1)>0.18 .and. real(rslt1)<0.20)) print *,101
if(.not.(imag(rslt1)>0.41 .and. imag(rslt1)<0.43)) print *,102
if(.not.(real(rslt2)>0.18 .and. real(rslt2)<0.20)) print *,201
if(.not.(imag(rslt2)>0.41 .and. imag(rslt2)<0.43)) print *,202
if(.not.(real(rslt3)>0.18 .and. real(rslt3)<0.20)) print *,301
if(.not.(imag(rslt3)>0.41 .and. imag(rslt3)<0.43)) print *,302
print *, "pass"
end

