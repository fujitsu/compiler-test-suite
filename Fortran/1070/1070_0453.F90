! option : -Kocl

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

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(N) :: res,a,b
  call init(res,a,b)
  do i=1,2
     call test(res,a,b)
  enddo
  do i=1,N
     if(1.0_4 .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(res,a,b)
  USE_SIMFUNC
  real(kind=4),dimension(N) :: res,a,b
  !ocl nosimd
  do i=1,N
     res(i) = 0
     a(i) = real(i+1_4, kind=4)
     b(i) = real(i, kind=4)
  enddo
end subroutine init
#endif

subroutine test(res,a,b)
  USE_SIMFUNC
  real(kind=4), dimension(N) :: res,a,b
  real(kind=4) :: tmp
  !ocl simd(unaligned)
  do i=1,N
     if(a(i) .ge. b(i)) then
        tmp = 1.0_4
     else
        tmp = 0.0_4
     endif
     res(i) = tmp
  enddo
end subroutine test
