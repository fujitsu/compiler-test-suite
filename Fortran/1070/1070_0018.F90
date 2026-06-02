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

  integer(kind=8),dimension(N) :: a,dest
  call init(a,dest,N)
  do i=1,2
     call test(a,dest)
  enddo
  do i=1,N
     if(NOT(mod(i,2)) .ne. dest(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,dest,n1)
  USE_SIMFUNC
  integer(kind=8),dimension(1:n1) :: a,dest
  !ocl nosimd
  do i=1,n1
     !     a(i) = mod(i-1,2)
     a(i) = mod(i,2)
     dest(i) = 0
  enddo
end subroutine init
#endif

subroutine test(a,dest)
  USE_SIMFUNC
  integer(kind=8), dimension(1:N) :: a,dest
  !ocl simd(unaligned)
  do i=1,N
     dest(i) = NOT(a(i))
  enddo
end subroutine test
