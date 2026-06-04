! option : -Kocl
! distance : k
! access   : multi :a(i) a(i+1) a(i+2)
!!! stride prefetch !!!
! -Kprefetch_stride
!   output indirect prefetch
!

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
#define N 513
#else
#define N 512
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=8),dimension(N) :: a,b,res
  call init(a,b,res,N,30_8)
  do i=1,2
     call test(a,b,30_8)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,res,n1,k)
  USE_SIMFUNC
  real(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=8) :: k
  !ocl nosimd
  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo
  !ocl nosimd
  do i=1,n1-2,k
     b(i) = i
     b(i+1) = i
     b(i+2) = i
     res(i) = i
     res(i+1) = i
     res(i+2) = i
  enddo
end subroutine init
#endif

subroutine test(a,b,k)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: a,b
  integer(kind=8) :: k
  !ocl prefetch_cache_level(2)
  do i=1,N-2,k
     a(i) = b(i)
     a(i+1) = b(i+1)
     a(i+2) = b(i+2)
  enddo
end subroutine test
