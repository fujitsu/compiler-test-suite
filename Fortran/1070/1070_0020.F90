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

  real(kind=8),dimension(N) :: a,b,dest
  call init(a,b,dest,N)
  do i=1,2
     call test(a,b,dest)
  enddo
  do i=1,N/2
     if(a(i) .ne. dest(i)) then
        PRINT_NG
     endif
  enddo
  do i=N/2+1,N
     if(b(i) .ne. dest(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,dest,n1)
  USE_SIMFUNC
  real(kind=8),dimension(1:n1) :: a,b,dest
  !ocl nosimd
  do i=1,n1/2
     dest(i) = 0
     a(i) = i
     b(i) = i+1
  enddo
  !ocl nosimd
  do i=(n1/2)+1,n1
     dest(i) = 0
     a(i) = i+1
     b(i) = i
  enddo
end subroutine init
#endif

subroutine test(a,b,dest)
  USE_SIMFUNC
  real(kind=8), dimension(1:N) :: a,b,dest
  !ocl simd(unaligned)
  do i=1,N
     if(.not.(a(i) .lt. b(i))) then
        dest(i) = b(i)
     else
        dest(i) = a(i)
     endif
  enddo
end subroutine test
