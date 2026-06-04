! option : -Kocl
! distance : k
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
  call init(a,b,res,N,20_8)
  do i=1,2
     call test1(a,b,20_8)
  enddo
  do i=1,2
     call test2(a,b,20_8)
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
  do i=1,n1,k
     b(i) = i
     res(i) = i
  enddo
end subroutine init
#endif

subroutine test1(a,b,k)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: a,b
  integer(kind=8) :: k
  !ocl prefetch_cache_level(1)
  do i=1,N,k
     a(i) = b(i)
  enddo
end subroutine test1

subroutine test2(a,b,k)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: a,b
  integer(kind=8) :: k
  !ocl prefetch_cache_level(2)
  do i=1,N,k
     a(i) = b(i)
  enddo
end subroutine test2
