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

  real(kind=8),dimension(N) :: a,b,c,res
  call init(a,b,c)
  do i=1,2
     call test(a,b,c,res)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c)
  USE_SIMFUNC
  real(kind=8),dimension(N) :: a,b,c
  !ocl nosimd
  do i=1,N
     a(i) = i+1.0_8
     b(i) = i
     c(i) = 2.0_8
  enddo
end subroutine init
#endif

subroutine test(a,b,c,res)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: a,b,c,res
  real(kind=8)::n
  n = 2.0_8
  !ocl simd(unaligned)
  do i=1,N
     if(c(i).eq. n) then
        res(i) = a(i)
     else
        res(i) = b(i)
     endif
  enddo
end subroutine test
