! option : -Kocl
! !!! werning !!! enlarge ROLL_TIMES too much.

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
#define N 33
#else
#define N 32
#endif

#if !defined(ASM_ONLY)
program main
USE_SIMFUNC

integer(kind=8),dimension(N) :: a
integer(kind=8) :: dest,res

do i=1,2
call init(a,res,N)
call test(a,dest)
enddo
if(res .ne. dest) then
PRINT_NG
endif
PRINT_OK
end program main

subroutine init(a,res,n1)
USE_SIMFUNC
integer(kind=8),dimension(1:n1) :: a
integer(kind=8) :: res
res = 1._8
!ocl nosimd
do i=1,n1
a(i) = 1.1_8
res = res * 1.1_8
enddo
end subroutine init
#endif

subroutine test(a,dest)
USE_SIMFUNC
integer(kind=8), dimension(N) :: a
integer(kind=8) :: dest,tmp
tmp = 1._8

do i=1,N
tmp = tmp * a(i)
enddo
dest = tmp
end subroutine test
