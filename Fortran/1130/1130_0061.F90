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
#define N 255
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define CONST_DISTANCE 3

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(N) :: a,b,res
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
  real(kind=4),dimension(1:N) :: a,b,res
  integer :: k
  common //a,b

!ocl nosimd
  do i=1,N
     a(i) = 0_8
     b(i) = 0_8
     res(i) = 0_8
  enddo
!ocl nosimd
  do i=1,N,CONST_DISTANCE
     b(i) = i * 2_8
     res(i) = i * 2_8
  enddo

end subroutine init
#endif

subroutine test()
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: a,b
  common //a,b

  do i=2,N+1,CONST_DISTANCE
     a(i-1) = b(i-1)
  enddo
end subroutine test
