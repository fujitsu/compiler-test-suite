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

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=4),dimension(N) :: a,b,res
  integer,dimension(1:N) :: mask
  call init(a,b,mask)
  do i=1,2
     call test(a,b,res,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(cmplx(i,i,kind=4), res(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,mask)
  USE_SIMFUNC
  complex(kind=4),dimension(N) :: a,b
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N
     a(i) = cmplx(i,0,kind=4)
     b(i) = cmplx(0,i,kind=4)
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(a,b,res,mask)
  USE_SIMFUNC
  complex(kind=4), dimension(1:N) :: a, b, res
  complex(kind=4) :: tmp
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        if(a(i) .eq. b(i)) then
           tmp = cmplx(0,0,kind=8)
        else
           tmp = cmplx(i,i,kind=8)
        endif
        res(i) = tmp
     endif
  enddo
#else
  do i=1,N
     if(a(i) .eq. b(i)) then
        tmp = cmplx(0,0,kind=8)
     else
        tmp = cmplx(i,i,kind=8)
     endif
     res(i) = tmp
  enddo
#endif
end subroutine test
