#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

program main
  USE_SIMFUNC
  integer*4 ierr/0/
  integer*8  a,va(10)/10*-858993460/
  integer*8 jj,kk(1)/2/
  real*8 res(10)/10*3/
  real*8 var(10)
  jj = kk(1)
  do i=1,10
     var(i) = ibits(va(i), 2_8, jj)
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
