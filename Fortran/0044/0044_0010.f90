program pro
complex,parameter :: xx1 = (0.2744,0.4383)
complex*16,parameter :: xx2 = (0.2744,0.4383)
complex*32,parameter :: xx3 = (0.2744,0.4383)

complex :: rslt1=ACOSH(ACOSH(xx1))
complex*16 :: rslt2=ACOSH(ACOSH(xx2))
complex*32 :: rslt3=ACOSH(ACOSH(xx3))
if(.not.(real(rslt1)>1.10 .and. real(rslt1)<1.12)) print *,101
if(.not.(imag(rslt1)>1.29 .and. imag(rslt1)<1.31)) print *,102
if(.not.(real(rslt2)>1.10 .and. real(rslt2)<1.12)) print *,103
if(.not.(imag(rslt2)>1.29 .and. imag(rslt2)<1.31)) print *,104
if(.not.(real(rslt3)>1.10 .and. real(rslt3)<1.12)) print *,105
if(.not.(imag(rslt3)>1.29 .and. imag(rslt3)<1.31)) print *,106
print *, "pass"
end

