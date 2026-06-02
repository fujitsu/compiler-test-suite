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

#define EQUAL_CHECK(a, b) (abs(real(a)) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=4),dimension(N) :: a,b,c,res
  integer,dimension(1:N) :: mask
  call init(a,b,c,res,mask)
  do i=1,2
     call test(a,b,c,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i),res(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,res,mask)
  USE_SIMFUNC
  complex(kind=4),dimension(1:N) :: a,b,c,res
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N
     a(i) = cmplx(0,0,kind=4)
     b(i) = cmplx(i,-i,kind=4)
     c(i) = cmplx(i,i,kind=4)
     res(i) = cmplx(0,-1,kind=4)
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(a,b,c,mask)
  USE_SIMFUNC
  complex(kind=4), dimension(1:N) :: a, b, c
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        a(i) = b(i) / c(i)
     endif
  enddo
#else
  do i=1,N
     a(i) = b(i) / c(i)
  enddo
#endif
end subroutine test
