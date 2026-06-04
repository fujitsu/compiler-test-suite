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

  complex(kind=8),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask

  call init(dest,mask)

  do i=1,2
     call test(dest,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i),cmplx(1._8, 2._8, kind=8))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK

end program main

subroutine init(dest,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N
     dest(i) = cmplx(0._8, 0._8, kind=8)
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(dest,mask)
  USE_SIMFUNC
  complex(kind=8), dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        dest(i) = cmplx(1._8, 2._8, kind=8)
     endif
  enddo
#else
  do i=1,N
     dest(i) = cmplx(1._8, 2._8, kind=8)
  enddo
#endif
end subroutine test
