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
#define N 1024
#else
#define N 1025
#endif

#if !defined(ASM_ONLY)
program main
USE_SIMFUNC

real(kind=8),dimension(N) :: a,b
integer(kind=8), dimension(N) :: x

do i=1,2
call init(a,b,x,N)
call test(a,b,x)
enddo

do i=1,N
if(a(i) .ne. b(i)) then
PRINT_NG
endif
enddo

PRINT_OK
end program main

subroutine init(a,b,x,n1)
USE_SIMFUNC
real(kind=8),dimension(1:n1) :: a,b
integer(kind=8), dimension(1:n1) :: x

!ocl nosimd
do i=1,n1
a(i) = 0.
b(i) = real(i,kind=8)
x(i) = i
enddo
end subroutine init

#endif

subroutine test(a,b,x)
USE_SIMFUNC
real(kind=8), dimension(N) :: a,b
integer(kind=8), dimension(N) :: x
!ocl simd(unaligned)
do i=1,N
a(x(i)) = b(x(i))
enddo
end subroutine test
