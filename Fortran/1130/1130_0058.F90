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

  integer(kind=4),dimension(1:N) :: a,b,c,d,f,res
  integer(kind=8),dimension(1:N) :: e
  integer(kind=4),dimension(1:N) :: a2,b2,c2,d2,e2,f2,res2
  integer(kind=4),dimension(1:N) :: a3,b3,c3,d3,e3,f3,res3
  common //a,b,c,d,e,f,a2,b2,c2,d2,e2,f2,a3,b3,c3,d3,e3,f3
  call init(res,res2,res3,3)
  do i=1,2
     call test(3)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a2(i) .ne. res2(i)) then
        PRINT_NG
     endif
     if(a3(i) .ne. res3(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res,res2,res3,k)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,c,d,f,res
  integer(kind=8),dimension(1:N) :: e
  integer(kind=4),dimension(1:N) :: a2,b2,c2,d2,e2,f2,res2
  integer(kind=4),dimension(1:N) :: a3,b3,c3,d3,e3,f3,res3
  integer :: k
  common //a,b,c,d,e,f,a2,b2,c2,d2,e2,f2,a3,b3,c3,d3,e3,f3

!ocl nosimd
  do i=1,N
     a(i) = 0_8
     b(i) = i
     c(i) = i
     d(i) = i
     e(i) = i
     f(i) = i
     res(i) = 0_8
     a2(i) = 0_8
     b2(i) = i
     c2(i) = i
     d2(i) = i
     e2(i) = i
     f2(i) = i
     res2(i) = 0_8
     a3(i) = 0_8
     b3(i) = i
     c3(i) = i
     d3(i) = i
     e3(i) = i
     f3(i) = i
     res3(i) = 0_8
  enddo
!ocl nosimd
  do i=1,N,k
     res(i) = b(i) + c(i) + d(i) + e(i) + f(i)
     res2(i) = b2(i) + c2(i) + d2(i) + e2(i) + f2(i)
     res3(i) = b3(i) + c3(i) + d3(i) + e3(i) + f3(i)
  enddo

end subroutine init
#endif

subroutine test(k)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,c,d,f
  integer(kind=8),dimension(1:N) :: e
  integer(kind=4),dimension(1:N) :: a2,b2,c2,d2,e2,f2
  integer(kind=4),dimension(1:N) :: a3,b3,c3,d3,e3,f3
  integer :: k
  common //a,b,c,d,e,f,a2,b2,c2,d2,e2,f2,a3,b3,c3,d3,e3,f3

!ocl loop_nofission
  do i=1,N,k
     a2(i) = b2(i) + c2(i) + d2(i) + e2(i) + f2(i)
     a(i) = b(i) + c(i) + d(i) + e(i) + f(i)
     a3(i) = b3(i) + c3(i) + d3(i) + e3(i) + f3(i)
  enddo
end subroutine test
