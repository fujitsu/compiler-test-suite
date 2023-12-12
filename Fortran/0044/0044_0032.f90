program pro
complex,parameter :: xx1 = (0.30,0.50)
real,parameter :: yy1 = (0.20)

complex*16,parameter :: xx2 = (0.30,0.50)
real*8,parameter :: yy2 = (0.20)

complex*32,parameter :: xx3 = (0.30,0.50)
real*16,parameter :: yy3 = (0.20)

complex :: rslt1=ASINH(xx1)+ASINH(yy1)
complex*16 :: rslt2=ASINH(xx2)+ASINH(yy2)
complex*32 :: rslt3=ASINH(xx3)+ASINH(yy3)

    if(.not.(real(rslt1)>0.52 .and. real(rslt1)<0.54)) print *,101
    if(.not.(imag(rslt1)>0.48 .and. imag(rslt1)<0.50)) print *,102

    if(.not.(real(rslt2)>0.52 .and. real(rslt2)<0.54)) print *,103
    if(.not.(imag(rslt2)>0.48 .and. imag(rslt2)<0.50)) print *,104

    if(.not.(real(rslt3)>0.52 .and. real(rslt3)<0.54)) print *,105
    if(.not.(imag(rslt3)>0.48 .and. imag(rslt3)<0.50)) print *,106
    print *,"pass"
end

