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

  integer(kind=1),dimension(1:N) :: a,b,res
  integer(kind=4),dimension(1:N) :: x,y,res2
  common //a,b,x,y
  call init(res,res2)
  do i=1,2
     call test()
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(x(i) .ne. res2(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res,res2)
  USE_SIMFUNC
  integer(kind=1),dimension(1:N) :: a,b
  integer(kind=4),dimension(1:N) :: x,y
  common //a,b,x,y
  integer(kind=1),dimension(1:N) :: res
  integer(kind=4),dimension(1:N) :: res2

!ocl nosimd
  do i=1,N
     a(i) = 0_1
     b(i) = i
     res(i) = i + 1_1
     x(i) = 0_4
     y(i) = i
     res2(i) = i + 1_4
  enddo
end subroutine init
#endif

subroutine test()
  USE_SIMFUNC
  integer(kind=1),dimension(1:N) :: a,b
  integer(kind=4),dimension(1:N) :: x,y
  common //a,b,x,y

  do i=1,N
     a(i) = b(i) + 1_1
     x(i) = y(i) + 1_4
  enddo
end subroutine test
