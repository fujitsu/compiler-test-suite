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
! ibitsの第1引数がadd(load,callpe以外)
subroutine sub(a, z)
  USE_SIMFUNC
  integer*8,dimension(1:10) :: a
  real*8,dimension(1:10)    :: z
  
  do i = 1, 10
     z(i) = real(ibits(a(i)+3, 3, 1))
  end do
end subroutine sub
#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  integer*8,dimension(1:10) :: a = 8_8
  real*8,dimension(1:10)    :: z = 0.0
  
  call sub(a, z)
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        PRINT_OK
     else
        PRINT_NG
     end if
  end do
end program main
#endif
