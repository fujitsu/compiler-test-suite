program main
  integer a, b, c, d, e, error_cnt
  common /aa/ a, b
  common /bb/ c, d

  a = 1; b = 2; c = 3; d = 4; e = 5; error_cnt = 0

!$omp parallel private(e, /aa/) firstprivate(/bb/)
  if(c .ne. 3) then
!$omp atomic
     error_cnt = error_cnt+1
  end if
  if(d .ne. 4) then
!$omp atomic
     error_cnt = error_cnt+1
  end if

  a = c
  b = d
  c = 0
  d = 0
  e = 10
!$omp end parallel

  if((error_cnt .ne. 0) .or. &
       (a.ne.1 .or. b.ne.2 .or. c.ne.3 .or. d.ne.4 .or. e.ne.5)) then
     print *,'NG'
  else
     print *,'ok'
  end if
end program main
