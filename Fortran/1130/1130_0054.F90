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

#define CONST_DISTANCE 5

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=8),dimension(N) :: a,b,c,res
  common //a,b,c
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
  complex(kind=8),dimension(1:N) :: a,b,c,res
  integer :: k
  common //a,b,c

!ocl nosimd
  do i=1,N
     a(i) = cmplx(0,0,kind=8)
     b(i) = cmplx(0,0,kind=8)
     c(i) = cmplx(0,0,kind=8)
     res(i) = cmplx(0,0,kind=8)
  enddo
!ocl nosimd
  do i=1,N,CONST_DISTANCE
     b(i) = cmplx(i,i,kind=8)
     c(i) = cmplx(1,1,kind=8)
     res(i) = cmplx(i,i,kind=8)
     res(i) = res(i) * c(i)
  enddo

end subroutine init
#endif

subroutine test()
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: a,b,c
  integer :: k
  common //a,b,c

  do i=1,N,CONST_DISTANCE
     a(i) = b(i) * c(i)
  enddo
end subroutine test
