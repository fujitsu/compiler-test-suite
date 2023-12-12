program pro
real(kind=4),parameter :: xx1 = 3.4
real(kind=8),parameter :: xx2 = 3.4
real(kind=16),parameter :: xx3 = 3.4

real(kind=4) :: rslt1=BESSEL_Y1(BESSEL_Y1(xx1))
real(kind=8) :: rslt2=BESSEL_Y1(BESSEL_Y1(xx2))
real(kind=16) :: rslt3=BESSEL_Y1(BESSEL_Y1(xx3))

if(.not.(rslt1<-1.75 .and. rslt1>-1.79)) print *,101
if(.not.(rslt2<-1.75 .and. rslt2>-1.79)) print *,102
if(.not.(rslt3<-1.75 .and. rslt3>-1.79)) print *,103
print *, "pass"
end

