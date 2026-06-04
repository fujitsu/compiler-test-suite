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

  real(kind=4),dimension(N) :: a
  real(kind=4)::res

  call init(a,res)
  do i=1,2
     call test(a,res)
  enddo
  if(a(N) .ne. res) then
     PRINT_NG
  endif
  PRINT_OK
end program main

subroutine init(a,res)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: a
  real(kind=4)::res

  res  = real(min(10,N),kind=4)

  !ocl nosimd
  do i=1,N
     a(i) = real(i,kind=4)
  enddo
end subroutine init
#endif

subroutine test(a,res)
  USE_SIMFUNC
  real(kind=4), dimension(1:N) :: a
  real(kind=4)::res
  !ocl simd(unaligned)
  do i=1,N
     if (res .lt. a(i)) then
        res = a(i)
     endif
  enddo
end subroutine test

