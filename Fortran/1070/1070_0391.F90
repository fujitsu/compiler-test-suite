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

#define CONST_DISTANCE 1

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(N) :: a,b,res
  call init(a,b,res,N)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,res,n1)
  USE_SIMFUNC
  real(kind=4),dimension(1:n1) :: a,b,res
  !ocl nosimd
  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo
  !ocl nosimd
  do i=1,n1,CONST_DISTANCE
     b(i) = i
     res(i) = i
  enddo
end subroutine init
#endif

subroutine test(a,b)
  USE_SIMFUNC
  real(kind=4), dimension(N) :: a,b
  do i=1,N,CONST_DISTANCE
     !ocl prefetch_read(b(i+16))
     a(i) = b(i)
  enddo
end subroutine test
