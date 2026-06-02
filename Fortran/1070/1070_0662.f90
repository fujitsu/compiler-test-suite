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
subroutine sub(a,z)
  USE_SIMFUNC
  integer*8   :: a
  real*4      :: z
  
  z = real(ibits(a, 13, 1))
end subroutine sub
#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  integer*8   :: a
  real*4      :: z
  
  a = 8192_8

  call sub(a,z)

  if(z .eq. 1.0) then
        PRINT_OK
     else
        PRINT_NG
  end if
end program main
#endif
