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
subroutine sub(z)
  USE_SIMFUNC
  real*4,dimension(1:10) :: z

  do i = 1, 10
     z(i) = real(ibits(8, 3, 1))
  end do
end subroutine sub

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  real*4,dimension(1:10) :: z = 0.0
  
  call sub(z)
  
  do i = 1, 10
     if(z(i) .eq. 1.0_4) then
        PRINT_OK
     else
        PRINT_NG
     end if
  end do
end program main
#endif
