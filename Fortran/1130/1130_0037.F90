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

  integer(kind=1),dimension(N) :: a,b,res
  common //a,b
  call init(res)
  do i=1,2
     call test()
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res)
  USE_SIMFUNC
  integer(kind=1),dimension(1:N) :: a,b,res
  common //a,b

!ocl nosimd
  do i=1,N
     a(i) = 0_1
     b(i) = i
     res(i) = i + 1_1
  enddo
end subroutine init
#endif

subroutine test()
  USE_SIMFUNC
  integer(kind=1),dimension(1:N) :: a,b
  common //a,b

  do i=1,N
     a(i) = b(i) + 1_1
  enddo
end subroutine test
