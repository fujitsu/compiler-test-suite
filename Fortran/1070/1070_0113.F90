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
#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0e-7_4)
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
     call check(a(i), b(i), 2_4)
  enddo
  PRINT_OK
end program main

subroutine init(b)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: b

!ocl nosimd
  do i=1,N
     b(i) = real(i,kind=4)
  enddo
  
end subroutine init

subroutine check(res, inx, iny)
  USE_SIMFUNC
  real(kind=4) :: res, inx, master_res
  integer(kind=4) :: iny
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
     a(i) = b(i)**2_4
  enddo
end subroutine test
