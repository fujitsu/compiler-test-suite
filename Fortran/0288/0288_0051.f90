call test()
print *,'pass'
end
subroutine test()
integer :: dt(8)
character (len=10) :: time, date, zone
call date_and_time (date, time, zone, dt)
if (.false.) then
  if (date.ne."20030620"   )print *,'err'
  if (time.ne."222002.500"   )print *,'err'
  if (dt(1).ne.2003     )print *,'err'
end if
if (zone.ne."+0900"   )print *,'err'
end
