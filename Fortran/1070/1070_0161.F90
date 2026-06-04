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

  integer(kind=8),dimension(1:N) :: a
  integer(kind=4),dimension(1:N) :: bb
  real(kind=4),dimension(1:N) :: b
  call init(a,b,bb)
  do i=1,2
     call test(a,b,bb)
  enddo
  do i=1,N
     if(a(i) .ne. i) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,bb)
  USE_SIMFUNC
  integer(kind=8),dimension(1:N) :: a
  integer(kind=4),dimension(1:N) :: bb
  real(kind=4),dimension(1:N) :: b
  !ocl nosimd
  do i=1,N
     a(i) = 0
     bb(i) = 0
     b(i) = real(i,kind=4)
  enddo
end subroutine init
#endif

subroutine test(a,b,bb)
  USE_SIMFUNC
  integer(kind=8),dimension(1:N) :: a
  integer(kind=4),dimension(1:N) :: bb
  real(kind=4),dimension(1:N) :: b
  !ocl simd(unaligned)
  do i=1,N
     bb(i) = int(b(i),kind=4)
     a(i) = int(bb(i),kind=8)
  enddo
end subroutine test
