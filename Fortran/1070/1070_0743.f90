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

subroutine scalar(a,z)
  USE_SIMFUNC
  integer*1  a
  real*4 z
  z = ibits(a,2_1,5_1)
  return
end subroutine scalar

subroutine simd(va,vz,n)
  USE_SIMFUNC
  integer*1  va(n)
  real*4 vz(n)
  do i=1,n
     vz(i) = ibits(va(i),2_1,5_1)
  enddo
  return
end subroutine simd

#if !defined(ASM_ONLY)
program main
    USE_SIMFUNC
  integer*4 ierr/0/
  integer*1  a, va(N)
  real*4 z, vz(N)
  a = 102
  z = 0
  do i=1,N
     va(i) = a
     vz(i) = 0
  enddo

  call scalar(a,z)
  call simd(va,vz,N)

  do i=1,N
     if (vz(i) .ne. 25.0) then
        ierr=1
        goto 10
     endif
  enddo
10 continue
  if (z .eq. 25.0 .and. ierr .eq. 0) then
     PRINT_OK
  else
     PRINT_NG
!     write(6,*) z
  endif

end program main
#endif
