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

  integer(kind=4),dimension(1:N) :: src
  complex(kind=4),dimension(1:N) :: dest
  call init(src,dest)
  do i=1,2
     call test(src,dest)
  enddo
  do i=1,N
     if(dest(i) .ne. cmplx(i,0._4)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(src,dest)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: src
  complex(kind=4),dimension(1:N) :: dest
  !ocl nosimd
  do i=1,N
     dest(i) = cmplx(0._4,0._4)
     src(i) = i
  enddo
end subroutine init
#endif

subroutine test(src,dest)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: src
  complex(kind=4),dimension(1:N) :: dest
  !ocl simd(unaligned)
  do i=1,N
     dest(i) = src(i)
  enddo
end subroutine test
