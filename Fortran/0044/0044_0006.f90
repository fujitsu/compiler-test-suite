program pro
complex,parameter :: xx1 = (0.30,0.50)
real,parameter :: yy1 = (1.20)

complex*16,parameter :: xx2 = (0.30,0.50)
real*8,parameter :: yy2 = (1.20)

complex*32,parameter :: xx3 = (0.30,0.50)
real*16,parameter :: yy3 = (1.20)

complex :: rslt1=ACOSH(xx1)+ACOSH(yy1)
complex*16 :: rslt2=ACOSH(xx2)+ACOSH(yy2)
complex*32 :: rslt3=ACOSH(xx3)+ACOSH(yy3)

    if(.not.(real(rslt1)>1.11 .and. real(rslt1)<1.13)) print *,101
    if(.not.(imag(rslt1)>1.29 .and. imag(rslt1)<1.32)) print *,102
    
    if(.not.(real(rslt2)>1.11 .and. real(rslt2)<1.13)) print *,103
    if(.not.(imag(rslt2)>1.29 .and. imag(rslt2)<1.32)) print *,104

    if(.not.(real(rslt3)>1.11 .and. real(rslt3)<1.13)) print *,105
    if(.not.(imag(rslt3)>1.29 .and. imag(rslt3)<1.32)) print *,106
    print *,"pass"
end

