program pro
 real,parameter :: xx1 = (1.0)
 real,parameter :: yy1 = (2.0)
 real(kind=8),parameter :: xx2 = (1.0)
 real(kind=8),parameter :: yy2 = (2.0)
 real(kind=16),parameter :: xx3 = (1.0)
 real(kind=16),parameter :: yy3 = (2.0)
 real :: rslt1=BESSEL_J0(xx1)+BESSEL_J0(yy1)
 real :: rslt2=BESSEL_J0(xx2)+BESSEL_J0(yy2)
 real :: rslt3=BESSEL_J0(xx3)+BESSEL_J0(yy3)
    if(.not.(rslt1>0.97 .and. (rslt1)<0.99)) print *,101
    if(.not.(rslt2>0.97 .and. (rslt2)<0.99)) print *,102
    if(.not.(rslt3>0.97 .and. (rslt3)<0.99)) print *,103
    print *,"pass"
end

