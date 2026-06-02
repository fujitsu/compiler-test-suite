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

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=4),dimension(N) :: a,b,res
  call init(a,b,res,N)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,res,n1)
  USE_SIMFUNC
  complex(kind=4),dimension(1:n1) :: a,b,res
  !ocl nosimd
  do i=1,n1
     a(i) = cmplx(0,0,kind=4)
     b(i) = cmplx(0,0,kind=4)
     res(i) = cmplx(0,0,kind=4)
  enddo
  !ocl nosimd
  do i=1,n1,2
     b(i) = cmplx(i,i,kind=4)
     res(i) = cmplx(i,i,kind=4)
  enddo
end subroutine init
#endif

subroutine test(a,b)
  USE_SIMFUNC
  complex(kind=4), dimension(N) :: a,b
  !ocl simd(unaligned)
  do i=1,N,2
     a(i) = b(i)
  enddo
end subroutine test
