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

  real(kind=4),dimension(N) :: a,b,c
  call init(a,b,c,N)
  do i=1,2
     call test(a,b,c)
  enddo
  !ocl nofp_relaxed
  do i=1,N
     if(a(i) .ne. amod(b(i), c(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,n1)
  USE_SIMFUNC
  real(kind=4),dimension(1:n1) :: a,b,c
  !ocl nosimd
  do i=1,n1
     a(i) = 0._4
     b(i) = 2._4*(real(i,kind=4)+1.0_4)+1.0_4
     c(i) = real(i,kind=4)+1.0_4
  enddo
end subroutine init
#endif

subroutine test(a,b,c)
  USE_SIMFUNC
  real(kind=4), dimension(1:N) :: a,b,c
  !ocl simd(unaligned)
  do i=1,N
     a(i) = amod(b(i), c(i))
  enddo
end subroutine test
