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

#ifndef SAME_CHECK
#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0e-6_4)
#else
#define EQUAL_CHECK(a, b) (a .ne. b)
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(1:N) :: a,b
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     call check(a(i), b(i), 2._4)
  enddo
  PRINT_OK
end program main

subroutine init(b)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: b
  real(kind=4),parameter :: xmax=1000000.0_4
  real(kind=4) :: xval, xtmp

  xval = xmax/(N-1)
  xtmp = 1.000001_4
  !ocl nosimd
  do i=1,N
     select case (mod(i,4_4))
     case(0)
        b(i) = xtmp
     case(1)
        b(i) = -xtmp
     case(2)
        b(i) = xtmp
     case(3)
        b(i) = -xtmp
     end select
     xtmp = xtmp + xval
  enddo
end subroutine init

subroutine check(res, inx, iny)
  USE_SIMFUNC
  real(kind=4) :: res, inx, iny, master_res
  master_res = inx ** iny
  if (EQUAL_CHECK(res, master_res)) then
     PRINT_NG
  endif
end subroutine check

#endif

subroutine test(a,b)
  USE_SIMFUNC
  real(kind=4), dimension(1:N) :: a,b
  !ocl simd(unaligned)
  do i=1,N
     a(i) = b(i)**2._4
  enddo
end subroutine test
