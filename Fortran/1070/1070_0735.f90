#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

program main
  USE_SIMFUNC
  integer*4 ierr/0/
  integer*8  a,va(10)/10*-858993460/
  integer*8 jj(10)/2,4,6,12,14,16,20,21,22,23/
  real*8 res(10)/51,76,51,76,51,76,76,102,51,25/
  real*8 var(10),var2(10)
  do i=1,10
     var(i) = ibits(va(i), jj(i), 7_8)
  enddo
!ocl nosimd
  do i=1,10
     if (var(i) .ne. res(i)) then
        ierr=1
     endif
  enddo
  if (ierr==0) then
     PRINT_OK
  else
     PRINT_NG
!         write(6,*) var
  endif
end program main
