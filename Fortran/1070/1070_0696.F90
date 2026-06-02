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

#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0E-6)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(N) :: a,b,c,res
  call init(a,b,c,res,N)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i), res(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,res,n1)
  USE_SIMFUNC
  real(kind=4),dimension(1:n1) :: a,b,c,res
  !ocl nosimd
  do i=1,n1
     a(i) = 0._4
     b(i) = real(i,kind=4)
     c(i) = 2._4
     res(i) = 1 / b(i)
  enddo
end subroutine init
#endif

subroutine test(a,b,c)
  USE_SIMFUNC
  real(kind=4), dimension(N) :: a,b,c
  !ocl simd(unaligned)
  do i=1,N
     a(i) = 1 / b(i)
  enddo
end subroutine test
