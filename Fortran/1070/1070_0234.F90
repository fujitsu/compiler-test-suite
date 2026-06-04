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
#define EQUAL_CHECK_WITH_MARGIN(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-15)
#else
#define EQUAL_CHECK(a, b) (a .ne. b)
#define EQUAL_CHECK_WITH_MARGIN(a, b) (a .ne. b)
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=8),dimension(1:N) :: a,b,c
  intrinsic datan2
  call init(b,c)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,N
     call check(a(i), b(i), c(i), datan2)
  enddo
  PRINT_OK
end program main

subroutine init(b,c)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: b,c
  real(kind=8),parameter :: max=5.0_8
  real(kind=8) :: val, xtmp, ytmp
  val = max/(N-1)
  xtmp = 0.000001
  ytmp = -max
  !ocl nosimd
  do i=1,N
     select case (mod(i,4_4))
     case(0)
        b(i) = xtmp
        c(i) = ytmp
     case(1)
        b(i) = -xtmp
        c(i) = ytmp
     case(2)
        b(i) = xtmp
        c(i) = -ytmp
     case(3)
        b(i) = -xtmp
        c(i) = -ytmp
     end select
     xtmp = xtmp + val
     ytmp = ytmp + val
  enddo
end subroutine init

subroutine check(res, inx, iny, fs)
  USE_SIMFUNC
  real(kind=8) :: res, inx, iny, fs, fsres
  external :: fs
  fsres = fs(inx, iny)
  if (fsres .eq. 0.0_8) then
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

subroutine test(a,b,c)
  USE_SIMFUNC
  real(kind=8), dimension(1:N) :: a,b,c
  !ocl simd(unaligned)
  do i=1,N
     a(i) = datan2(b(i), c(i))
  enddo
end subroutine test
