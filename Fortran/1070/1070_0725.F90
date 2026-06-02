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

real(kind=4),dimension(N) :: a,b,c,res
integer(kind=4),parameter :: k=2

do i=1,2
call init(a,b,c,N,res,k)
call test(a,b,c,k)
enddo

do i=1,N
if(a(i) .ne. res(i)) then
PRINT_NG
endif
enddo

PRINT_OK
end program main

subroutine init(a,b,c,n1,res,k)
USE_SIMFUNC
real(kind=4),dimension(1:n1) :: a,b,c,res
integer(kind=4) :: k

!ocl nosimd
do i=1,n1
a(i) = 0.
b(i) = i
c(i) = i+1
res(i) = 0.
enddo
!ocl nosimd
do i=1,n1,k
res(i) = b(i) + c(i) 
enddo
end subroutine init

#endif

subroutine test(a,b,c,k)
USE_SIMFUNC
real(kind=4), dimension(N) :: a,b,c
integer(kind=4) :: k
!ocl simd(unaligned)
do i=1,N,k
a(i) = b(i) + c(i)
enddo
end subroutine test
