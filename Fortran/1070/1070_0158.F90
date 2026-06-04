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

  complex(kind=8),dimension(1:N) :: src
  complex(kind=4),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  call init(src,dest,mask)
  do i=1,2
     call test(src,dest,mask)
  enddo
  do i=1,N
     if(dest(i) .ne. cmplx(i,i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(src,dest,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: src
  complex(kind=4),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  !ocl nosimd
  do i=1,N
     dest(i) = cmplx(0._8,0._8)
     src(i) = cmplx(real(i,kind=4), real(i,kind=4))
     mask(i) = 1_4
  enddo
end subroutine init
#endif

subroutine test(src,dest,mask)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N) :: src
  complex(kind=4),dimension(1:N) :: dest
  integer,dimension(1:N) :: mask
  !ocl simd(unaligned)
#ifdef HAS_MASK
  do i=1,N
     if ( mask(i) .eq. 1_4 ) then
        dest(i) = src(i)
     endif
  enddo
#else
  do i=1,N
     dest(i) = src(i)
  enddo
#endif
end subroutine test
