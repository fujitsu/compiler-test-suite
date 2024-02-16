! LOG_GAMMA passed as argument
program pro
real(kind=4),parameter :: xx1 = 5.0
real(kind=8),parameter :: xx2 = 5.0
real(kind=16),parameter :: xx3 = 5.0

real(kind=4) :: rslt1=LOG_GAMMA(LOG_GAMMA(xx1))
real(kind=8) :: rslt2=LOG_GAMMA(LOG_GAMMA(xx2))
real(kind=16) :: rslt3=LOG_GAMMA(LOG_GAMMA(xx3))

if(.not.(rslt1>0.86 .and. rslt1<0.89)) print *,101,rslt1
if(.not.(rslt2>0.86 .and. rslt2<0.89)) print *,102
if(.not.(rslt3>0.86 .and. rslt3<0.89)) print *,103
print *, "pass"
end

