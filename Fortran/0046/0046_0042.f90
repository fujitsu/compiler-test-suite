program pro
 real,parameter :: xx1 = (1.0)
 real,parameter :: yy1 = (2.0)

 real(kind=8),parameter :: xx2 = (1.0)
 real(kind=8),parameter :: yy2 = (2.0)

 real(kind=16),parameter :: xx3 = (1.0)
 real(kind=16),parameter :: yy3 = (2.0)

 real(kind=4) :: rslt1=BESSEL_Y0(xx1)+BESSEL_Y0(yy1)
 real(kind=8) :: rslt2=BESSEL_Y0(xx2)+BESSEL_Y0(yy2)
 real(kind=16) :: rslt3=BESSEL_Y0(xx3)+BESSEL_Y0(yy3)
    if(.not.(rslt1>0.58 .and. (rslt1)<0.60)) print *,101
    if(.not.(rslt2>0.58 .and. (rslt2)<0.60)) print *,102
    if(.not.(rslt3>0.58 .and. (rslt3)<0.60)) print *,103
    print *,"pass"
end

