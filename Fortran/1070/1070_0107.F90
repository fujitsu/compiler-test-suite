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

  integer(kind=4),dimension(1:N) :: a,b,c
  integer(kind=4),dimension(1:N) :: x,y
  call init(a,b,c,x,y)
  do i=1,2
     call test(a,b,c,x,y)
  enddo
  do i=1,N
     if (x(i) == y(i)) then
        call check(a(i), b(i), c(i))
     else
        if (a(i) .ne. 0) then
           PRINT_NG
        endif
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,x,y)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,c
  integer(kind=4),dimension(1:N) :: x,y

!ocl nosimd
  do i=1,N
     a(i) = 0
     b(i) = i
     c(i) = 2_4
     x(i) = i
     y(i) = 0
  enddo
!ocl nosimd
  do i=2,N,2
     y(i) = i
  enddo
  
end subroutine init

subroutine check(res, inx, iny)
  USE_SIMFUNC
  integer(kind=4) :: res, inx, iny,master_res
  master_res = inx ** iny
  if (EQUAL_CHECK(res, master_res)) then
     PRINT_NG
  endif
end subroutine check

#endif

subroutine test(a,b,c,x,y)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,c
  integer(kind=4),dimension(1:N) :: x,y
  !ocl simd(unaligned)
  do i=1,N
     if (x(i) == y(i)) then
        a(i) = b(i)**c(i)
     endif
  enddo
end subroutine test
