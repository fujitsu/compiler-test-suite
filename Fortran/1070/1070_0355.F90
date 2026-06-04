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

  real(kind=8),dimension(N) :: dest,a,b
  call init(dest,a,b)
  do i=1,2
     call test(dest,a,b)
  enddo
  if(dest(1) .ne. b(1)) then
     PRINT_NG
  endif
  do i=2,N/2
     if(b(i) .ne. dest(i)) then
        PRINT_NG
     endif
  enddo
  do i=N/2+1,N
     if(a(i) .ne. dest(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(dest,a,b)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: dest,a,b
  dest(1) = 0
  a(1) = 1
  b(1) = 1

  !ocl nosimd
  do i=2,N/2
     dest(i) = 0
     a(i) = i+1
     b(i) = i
  enddo
  !ocl nosimd
  do i=N/2+1,N
     dest(i) = 0
     a(i) = i
     b(i) = i+1
  enddo
end subroutine init
#endif

subroutine test(dest,a,b)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: dest,a,b
  !ocl simd(unaligned)
  do i=1,N
     if(.not.(a(i) .ge. b(i))) then
        dest(i) = a(i)
     else
        dest(i) = b(i)
     endif
  enddo
end subroutine test
