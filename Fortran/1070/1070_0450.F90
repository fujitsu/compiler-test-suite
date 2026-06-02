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

  real(kind=8),dimension(N) :: a,b,res
  call init(a,b)
  do i=1,2
     call test(a,b,res)
  enddo
  do i=1,N
     if(1._8 .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b)
  USE_SIMFUNC
  real(kind=8),dimension(N) :: a,b
  !ocl nosimd
  do i=1,N
     a(i) = real(i+1_4,kind=8)
     b(i) = real(i,kind=8)
  enddo
end subroutine init
#endif

subroutine test(a,b,res)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: a,b,res
  real(kind=8) :: tmp
  !ocl simd(unaligned)
  do i=1,N
     if(a(i) .eq. b(i)) then
        tmp = 0.0_8
     else
        tmp = 1.0_8
     endif
     res(i) = tmp
  enddo
end subroutine test
