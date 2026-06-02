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

#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0D-13)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=8),dimension(1:N) :: a
  real(kind=8),dimension(1:N) :: res,dest
  integer,dimension(1:N) :: mask
  call init(a,res,mask)
  do i=1,2
     call test(dest,a,mask)
  enddo
  do i=1,N
     if(EQUAL_CHECK(dest(i),res(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,res,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: a
  real(kind=8),dimension(1:N) :: res
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N
     if (i .gt. N/2) then
        a(i) = cmplx(i,i,kind=8)
        res(i) = real(2*i,kind=8)
     else
        a(i) = cmplx(-i,-i,kind=8)
        res(i) = real(-2*i,kind=8)
     endif
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(dest,a,mask)
  USE_SIMFUNC
  complex(kind=8), dimension(1:N) :: a
  real(kind=8), dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        dest(i) = real(a(i) + a(i))
     endif
  enddo
#else
  do i=1,N
     dest(i) = real(a(i) + a(i))
  enddo
#endif
end subroutine test
