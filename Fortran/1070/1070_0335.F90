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

  integer(kind=4),dimension(N) :: a,b,c,d,res
  call init(a,b,c,d,res)
  do i=1,2
     call test(a,b,c,d)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,d,res)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,c,d,res
  !ocl nosimd
  do i=1,N
     a(i) = 0_4
     b(i) = 1_4
     c(i) = i
     d(i) = i
     res(i) = 0_4
  enddo
end subroutine init
#endif

subroutine test(a,b,c,d)
  USE_SIMFUNC
  integer(kind=4), dimension(1:N) :: a,b,c,d
  !ocl simd(unaligned)
  do i=1,N
     a(i) = b(i) * c(i) - d(i)
  enddo
end subroutine test
