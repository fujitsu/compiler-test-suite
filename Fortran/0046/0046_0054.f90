program pro
real(kind=4), parameter:: x1=1.0
real(kind=8), parameter:: x2=1.0
real(kind=16), parameter:: x3=1.0

real(kind=4), parameter:: rslt1=BESSEL_Y1(x1)
real(kind=8), parameter:: rslt2=BESSEL_Y1(x2)
real(kind=16), parameter:: rslt3=BESSEL_Y1(x3)
    if(.not.(rslt1<-0.780 .and. rslt1>-0.784)) print*,101
    if(.not.(rslt2<-0.780 .and. rslt2>-0.784)) print*,102
    if(.not.(rslt3<-0.780 .and. rslt3>-0.784)) print*,103
    print *, "pass"

end

