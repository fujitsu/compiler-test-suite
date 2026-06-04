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

  real(kind=8),dimension(N) :: dest,a,b
  call init(dest,a,b,N)
  do i=1,2
     call test(dest,a,b)
  enddo
  do i=1,N
     if(b(i) .ne. dest(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(dest,a,b,n1)
  USE_SIMFUNC
  real(kind=8),dimension(1:n1) :: dest,a,b
  !ocl nosimd
  do i=1,n1
     dest(i) = 0
     a(i) = i
     b(i) = -i
  enddo
end subroutine init
#endif

subroutine test(dest,a,b)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: dest,a,b
  !ocl simd(unaligned)
  do i=1,N
     dest(i) = SIGN(a(i),b(i))
  enddo
end subroutine test
