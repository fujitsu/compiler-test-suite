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
#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-15)
#else
#define EQUAL_CHECK(a, b) (a .ne. b)
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=8),dimension(1:N) :: a,b
  real(kind=8), dimension(1:N) :: x,y
  call init(a,b,x,y)
  do i=1,2
     call test(a,b,x,y)
  enddo
  do i=1,N
     if (x(i) == y(i)) then
        call check(a(i), b(i), 2._8)
     else
        if (a(i) .ne. 0._8) then
           PRINT_NG
        endif
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a, b, x, y)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: a, b, x, y
  real(kind=8),parameter :: xmax=1000000.0_8
  real(kind=8) :: xval, xtmp

  xval = xmax/(N-1)
  xtmp = 1.000001_8
  !ocl nosimd
  do i=1,N
     x(i) = real(i,kind=8)
     a(i) = 0._8
     y(i) = 0._8
     select case (mod(i,4_8))
     case(0)
        b(i) = xtmp
     case(1)
        b(i) = -xtmp
        y(i) = real(i,kind=8)
     case(2)
        b(i) = xtmp
     case(3)
        b(i) = -xtmp
        y(i) = real(i,kind=8)
     end select
     xtmp = xtmp + xval
  enddo
end subroutine init

subroutine check(res, inx, iny)
  USE_SIMFUNC
  real(kind=8) :: res, inx, iny, master_res
  master_res = inx ** iny
  if (EQUAL_CHECK(res, master_res)) then
     PRINT_NG
  endif
end subroutine check

#endif

subroutine test(a,b,x,y)
  USE_SIMFUNC
  real(kind=8), dimension(1:N) :: a,b
  real(kind=8), dimension(1:N) :: x,y
  !ocl simd(unaligned)
  do i=1,N
     if (x(i) == y(i)) then
        a(i) = b(i)**2._8
     endif
  enddo
end subroutine test
