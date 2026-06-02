#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#else
#define USE_SIMFUNC
#endif

program main
  USE_SIMFUNC
  real a(150),b(150),right(150)
  equivalence (a,b)
  integer i,l,n
  logical nogood/.false./
  data a/50*-1,100*1/
  data right/-1,1,-1,1,-1,1,44*-1, 50*1, 5 *-1, 45*1/

  l=int(cos(0.0))*5
  n=5
  do i=1,l
     a(n-3) = -a(n-4)
     n=n+1
     b(n+95) = -b(n+95)  ! from 95
  end do

  do i=1,150
     if (a(i) .ne. right(i)) nogood = .true.
  end do
  if (nogood) then
#if defined(SIM_RUN)
     PRINT_NG
#else
     write (6,*) '?????? mnkfg38 ng ??????'
     write (6,*) '< actual result >   ',a
     write (6,*) '< right  result >   ',right
     write (6,*) '?????? mnkfg38 ng ??????'
#endif     
  else
#if defined(SIM_RUN)
     call simprintl("OK")
#else     
     print *, "OK"
#endif     
  endif

end program main
