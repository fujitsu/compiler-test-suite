program pro
real(kind=4),parameter :: xx1 = 2.5
real(kind=8),parameter :: xx2 = 2.5
real(kind=16),parameter :: xx3 = 2.5

real(kind=4) :: rslt1=BESSEL_Y0(BESSEL_Y0(xx1))
real(kind=8) :: rslt2=BESSEL_Y0(BESSEL_Y0(xx2))
real(kind=16) :: rslt3=BESSEL_Y0(BESSEL_Y0(xx3))

if(.not.(rslt1<-0.42 .and. rslt1>-0.46)) print *,101
if(.not.(rslt2<-0.42 .and. rslt2>-0.46)) print *,102
if(.not.(rslt3<-0.42 .and. rslt3>-0.46)) print *,103
print *, "pass"
end

