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
  integer :: a
  real    :: z
  
  z = real(ibits(a, 12, 2))
end subroutine sub

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  integer :: a
  real    :: z

  a = 12288_4
  
  call sub(a,z)
  
  if(z .eq. 3.0) then
        PRINT_OK
     else
        PRINT_NG
  end if
end program main
#endif
