program pro
 real(kind=4),parameter :: xx1 = (3.0)
 real(kind=4),parameter :: yy1 = (4.0)
 real(kind=8),parameter :: xx2 = (3.0)
 real(kind=8),parameter :: yy2 = (4.0)
 real(kind=16),parameter :: xx3 = (3.0)
 real(kind=16),parameter :: yy3 = (4.0)
 
 real(kind=4) :: rslt1=BESSEL_Y1(xx1)+BESSEL_Y1(yy1)
 real(kind=8) :: rslt2=BESSEL_Y1(xx2)+BESSEL_Y1(yy2)
 real(kind=16) :: rslt3=BESSEL_Y1(xx3)+BESSEL_Y1(yy3)
 
    if(.not.(rslt1>0.70 .and. (rslt1)<0.74)) print *,101
    if(.not.(rslt2>0.70 .and. (rslt2)<0.74)) print *,102
    if(.not.(rslt3>0.70 .and. (rslt3)<0.74)) print *,103
    print *,"pass"
end

