program pro
 real,parameter :: xx1 = (1.0)
 real,parameter :: yy1 = (2.0)
 
 real(kind=8),parameter :: xx2 = (1.0)
 real(kind=8),parameter :: yy2 = (2.0)
 
 real(kind=16),parameter :: xx3 = (1.0)
 real(kind=16),parameter :: yy3 = (2.0)

 real :: rslt1=BESSEL_J1(xx1)+BESSEL_J1(yy1)
 real(kind=8) :: rslt2=BESSEL_J1(xx2)+BESSEL_J1(yy2)
 real(kind=16) :: rslt3=BESSEL_J1(xx3)+BESSEL_J1(yy3)
    if(.not.(rslt1>0.99 .and. (rslt1)<1.03)) print *,101
    if(.not.(rslt2>0.99 .and. (rslt2)<1.03)) print *,102
    if(.not.(rslt3>0.99 .and. (rslt3)<1.03)) print *,103
    print *,"pass"
end

