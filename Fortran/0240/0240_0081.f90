integer :: dt(8)
character (len=10) :: time, date, zone
call date_and_time (date, time, zone, dt)
if (1.eq.2) print *,date, time, zone, dt

print *,'pass'
end
