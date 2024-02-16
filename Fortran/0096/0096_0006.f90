! Consecutive calling
program pro
Intrinsic :: LOG_GAMMA
 real,parameter :: xx1 = (10.0)
 real,parameter :: yy1 = (20.0)
 real(kind=8),parameter :: xx2 = (10.0)
 real(kind=8),parameter :: yy2 = (20.0)
 real(kind=16),parameter :: xx3 = (10.0)
 real(kind=16),parameter :: yy3 = (20.0)
 real :: rslt1=LOG_GAMMA(xx1)+LOG_GAMMA(yy1)
 real :: rslt2=LOG_GAMMA(xx2)+LOG_GAMMA(yy2)
 real :: rslt3=LOG_GAMMA(xx3)+LOG_GAMMA(yy3)
    if(.not.(rslt1>52.13 .and. (rslt1)<52.15)) print *,101,rslt1
    if(.not.(rslt2>52.13 .and. (rslt2)<52.15)) print *,102,rslt2
    if(.not.(rslt3>52.13 .and. (rslt3)<52.15)) print *,103,rslt3
    print *,"pass"
end

