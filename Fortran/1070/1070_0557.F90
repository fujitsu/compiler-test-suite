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

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0D-13 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0D-13)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=8),dimension(1:N) :: b
  complex(kind=8) :: a,res
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,mask)
  enddo
  if(res .eq. cmplx(0._8, 0._8, kind=8)) then
     if (a .ne. res) then
        PRINT_NG
     endif
  else
     if(EQUAL_CHECK(a, res)) then
        PRINT_NG
     endif
  endif
  PRINT_OK
end program main

subroutine init(a,b,res,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: b
  complex(kind=8) :: a,res
  integer,dimension(1:N) :: mask

  a = cmplx(0._8, 0._8, kind=8)
  if ( mod(N,2_4) == 0) then
     res = cmplx(0._8, 0._8, kind=8)
  else
     res = cmplx(2._8, 2._8, kind=8)
  endif
  !ocl nosimd
  do i=1,N
     if (i .gt. N/2) then
        b(i) = cmplx(1._8,1._8,kind=8)
     else
        b(i) = cmplx(-1._8,-1._8,kind=8)
     endif
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(a,b,mask)
  USE_SIMFUNC
  complex(kind=8), dimension(1:N) :: b
  complex(kind=8) :: a
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        a = a + b(i)
     endif
  enddo
#else
  do i=1,N
     a = a + b(i)
  enddo
#endif
end subroutine test
