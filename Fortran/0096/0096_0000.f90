! Specification Example
program pro
real, parameter:: x1=3.0
real(kind=8), parameter:: x2=3.0
real(kind=16), parameter:: x3=3.0
real, parameter:: rslt1=LOG_GAMMA(x1)
real(kind=8), parameter:: rslt2=LOG_GAMMA(x2)
real(kind=16), parameter:: rslt3=LOG_GAMMA(x3)
if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101,rslt1
if(.not.(rslt2>0.68 .and. rslt2<0.70)) print*,102,rslt2
if(.not.(rslt3>0.68 .and. rslt3<0.70)) print*,103,rslt3
        print *, "pass"

end

