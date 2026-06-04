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

#define CONST_DISTANCE 9

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(N) :: a,b,res
  real(kind=8),dimension(N) :: a2,b2,res2
  common //a,b,a2,b2
  call init(res,res2,9)
  do i=1,2
     call test(9)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a2(i) .ne. res2(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res,res2,k)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,res
  real(kind=8),dimension(1:N) :: a2,b2,res2
  integer :: k
  common //a,b,a2,b2

!ocl nosimd
  do i=1,N
     a(i) = 0_8
     b(i) = 0_8
     res(i) = 0_8
     a2(i) = 0_8
     b2(i) = 0_8
     res2(i) = 0_8
  enddo
!ocl nosimd
  do i=1,N,k
     b(i) = i * 2_8
     res(i) = i * 2_8
     b2(i) = i * 2_8
     res2(i) = i * 2_8
  enddo

end subroutine init
#endif

subroutine test(k)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b
  real(kind=8),dimension(1:N) :: a2,b2
  integer :: k
  common //a,b,a2,b2

  do i=0,N,k
     a(i+1) = b(i+1)
     a2(i+1) = b2(i+1)
  enddo
end subroutine test
