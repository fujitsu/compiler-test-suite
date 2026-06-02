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

#define EQUAL_CHECK(a, b) ((abs(a - b)/abs(a)) .gt. 1.0E-6)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(1:N) :: a,b,res
  real(kind=4),dimension(1:N) :: x,y
  interface
     subroutine init(a,b,res,f,x,y)
       USE_SIMFUNC
       real(kind=4),dimension(1:N) :: a,b,res
       real(kind=4),dimension(1:N) :: x,y
       external f
       real(kind=4) :: f
     end subroutine init
  end interface
  intrinsic cos
  call init(a,b,res,cos,x,y)
  do i=1,2
     call test(a,b,x,y)
  enddo
  do i=1,N
     if(EQUAL_CHECK(a(i), res(i))) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,res,f,x,y)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: a,b,res
  real(kind=4),dimension(1:N) :: x,y
  external f
  real(kind=4) :: f
  !ocl nosimd
  do i=1,N
     a(i) = 0._4
     b(i) = real(i,kind=4)
     res(i) = 0._4
     x(i) = real(i,kind=4)
     y(i) = 0._4
  enddo
  do i=1,N,2
     y(i) = real(i,kind=4)
     res(i) = f(real(i,kind=4))
  enddo
end subroutine init
#endif

subroutine test(a,b,x,y)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: a,b,x,y
  !ocl simd(unaligned)
  do i=1,N
     if (x(i) == y(i)) then 
        a(i) = cos(b(i))
     endif
  enddo
end subroutine test
