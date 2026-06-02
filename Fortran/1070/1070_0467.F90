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

  complex(kind=8),dimension(1:N) :: a,res
  logical(kind=4),dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  call init(a,b,res,mask)
  do i=1,2
     call test(a,b,res,mask)
  enddo
  do i=1,N
     if(i .gt. N/2) then
        if(EQUAL_CHECK(cmplx(real(i,kind=8),real(i,kind=8),kind=8), res(i))) then
           PRINT_NG
        endif
     else
        if(cmplx(0._8,0._8,kind=8) .ne. res(i)) then
           PRINT_NG
        endif
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,res,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: a,res
  logical(kind=4),dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N
     a(i) = cmplx(real(i,kind=8),real(i,kind=8),kind=8)
     res(i) = cmplx(0._8,0._8,kind=8)
     if(i .gt. N/2) then
        b(i) = .TRUE.
     else
        b(i) = .FALSE.
     endif
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(a,b,res,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: a,res
  logical(kind=4),dimension(1:N) :: b
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        if(b(i) .eqv. .TRUE.) then
           res(i) = a(i)
        endif
     endif
  enddo
#else
  do i=1,N
     if(b(i) .eqv. .TRUE.) then
        res(i) = a(i)
     endif
  enddo
#endif
end subroutine test
