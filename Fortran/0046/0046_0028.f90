program pro
real(kind=4),parameter :: xx1 = 1.0
real(kind=8),parameter :: xx2 = 1.0
real(kind=16),parameter :: xx3 = 1.0
real(kind=4) :: rslt1=BESSEL_J1(BESSEL_J1(xx1))
real(kind=8) :: rslt2=BESSEL_J1(BESSEL_J1(xx2))
real(kind=16) :: rslt3=BESSEL_J1(BESSEL_J1(xx3))
if(.not.(rslt1>0.19 .and. rslt1<0.22)) print *,101
if(.not.(rslt2>0.19 .and. rslt2<0.22)) print *,102
if(.not.(rslt3>0.19 .and. rslt3<0.22)) print *,103
print *, "pass"
end

