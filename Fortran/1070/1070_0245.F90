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
#define EQUAL_CHECK(a, b) (a .ne. b)
#define EQUAL_CHECK_WITH_MARGIN(a, b) ((abs(a - b)/abs(a)) .gt. 1.0E-6)
#else
#define EQUAL_CHECK(a, b) (a .ne. b)
#define EQUAL_CHECK_WITH_MARGIN(a, b) (a .ne. b)
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(1:N) :: a,b
  intrinsic log10
  call init(b)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     call check(a(i), b(i), log10)
  enddo
  PRINT_OK
end program main

subroutine init(b)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: b
  real(kind=4),parameter :: inmax=2.0_4
  real(kind=4),parameter :: inmin=0.0_4
  real(kind=4) :: val, tmp
  val = (inmax - inmin)/(N-1)
  tmp = inmin
  !ocl nosimd
  do i=1,N
     b(i) = tmp
     tmp = tmp + val
  enddo
end subroutine init

subroutine check(res, in, fs)
  USE_SIMFUNC
  real(kind=4) :: res, in, fs, fsres
  external :: fs
  fsres = fs(in)
  if (fsres .eq. 0.0_4) then
     if (EQUAL_CHECK(res, fsres)) then
        PRINT_NG
     endif
  else
     if (EQUAL_CHECK_WITH_MARGIN(res, fsres)) then
        PRINT_NG
     endif
  endif
end subroutine check

#endif

subroutine test(a,b)
  USE_SIMFUNC
  real(kind=4), dimension(1:N) :: a,b
  !ocl simd(unaligned)
  do i=1,N
     a(i) = log10(b(i))
  enddo
end subroutine test
