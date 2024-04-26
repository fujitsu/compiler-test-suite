  real res(10)
  real rv21(10)/1,2,3,4,5,6,7,8,9,10/
  logical lv21(10)
  data lv21/4*.true.,.false.,3*.true.,.false.,.false./
  data res/10.8414707,10.9092970,10.1411200,49.2431984,49.0410767, &
       9.72058487,10.6569862,50.9893570,9,10/
  integer*8 i
  do i=1,8
     if (lv21(i) .and. lv21(i+1)) then
        rv21(i) = sin(rv21(i)) + 10
     else
        rv21(i) = sin(rv21(i)) + 50
     endif
  enddo
  do i=1,10
     if ( abs(rv21(i)-res(i)) .gt.0.000001) then
        write(6,*) "ng"
        write(6,*) rv21
        stop
     endif
  enddo
  write(6,*) "ok"
end program
