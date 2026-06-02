program pro
real, parameter:: x1=20.0
real(kind=8), parameter:: x2=20.0
real(kind=16), parameter:: x3=20.0
real, parameter:: rslt1=ERFC_SCALED(x1)
real(kind=8), parameter:: rslt2=ERFC_SCALED(x2)
real(kind=16), parameter:: rslt3=ERFC_SCALED(x3)
if(.not.(rslt1>0.026 .and. rslt1<0.030)) print*,101
if(.not.(rslt2>0.026 .and. rslt2<0.030)) print*,102
if(.not.(rslt3>0.026 .and. rslt3<0.030)) print*,103

        print *, "pass"

end

