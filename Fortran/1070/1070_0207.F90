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

  complex(kind=8),dimension(1:N) :: dest,a,b
  integer,dimension(1:N) :: mask
  call init(dest,a,b,mask)
  do i=1,2
     call test(dest,a,b,mask)
  enddo
  do i=1,N/2
     if(EQUAL_CHECK(a(i), dest(i))) then
        PRINT_NG
     endif
  enddo
  do i=N/2+1,N
     if(EQUAL_CHECK(b(i), dest(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(dest,a,b,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: dest,a,b
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N/2
     dest(i) = (1.0d0, 1.0d0)
     a(i) = (1.0d0, 1.0d0)
     b(i) = (1.0d0, 1.0d0)
     mask(i) = 1_4
  enddo
  !ocl nosimd
  do i=N/2+1,N
     dest(i) = (-1.0d0, -1.0d0)
     a(i) = (1.0d0, 1.0d0)
     b(i) = (-1.0d0, -1.0d0)
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(dest,a,b,mask)
  USE_SIMFUNC
  complex(kind=8), dimension(N) :: dest,a,b
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        if(a(i) .eq. b(i)) then
           dest(i) = a(i)
        else
           dest(i) = b(i)
        endif
     endif
  enddo
#else
  do i=1,N
     if(a(i) .eq. b(i)) then
        dest(i) = a(i)
     else
        dest(i) = b(i)
     endif
  enddo
#endif
end subroutine test
