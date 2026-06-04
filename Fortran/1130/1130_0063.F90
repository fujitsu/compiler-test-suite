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

  real(kind=4),dimension(N) :: a,b,c,d,e,f,res,res2
  common //a,b,c,d,e,f
  call init(res,res2,2)
  do i=1,2
     call test(2)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res,res2,k)
  USE_SIMFUNC
  real(kind=4),dimension(N) :: a,b,c,d,e,f,res,res2
  common //a,b,c,d,e,f
  integer :: k

!ocl nosimd
  do i=1,N
     a(i) = 0_8
     b(i) = i
     c(i) = 1
     e(i) = i*2
     f(i) = 1
     res(i) = 0_8
     res2(i) = 0_8
  enddo
!ocl nosimd
  do i=1,N,k
     res(i) = b(i) * c(i)
     res2(i) = e(i) * f(i)
  enddo

end subroutine init
#endif

subroutine test(k)
  USE_SIMFUNC
  real(kind=4),dimension(N) :: a,b,c,d,e,f
  common //a,b,c,d,e,f
  integer :: k

  do i=1,N,k
     a(i) = b(i) * c(i)
     d(i) = e(i) * f(i)
  enddo
end subroutine test
