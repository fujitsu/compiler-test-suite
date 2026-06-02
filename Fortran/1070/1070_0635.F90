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
#define N 513
#else
#define N 512
#endif


#if !defined(ASM_ONLY)
program main
USE_SIMFUNC

real(kind=8),dimension(N) :: a
do i=1,2
call test(a)
enddo
do i=1,N
if(a(i) .ne. 1._8) then
PRINT_NG
endif
enddo
PRINT_OK
end program main

#endif

subroutine test(a)
USE_SIMFUNC
real(kind=8), dimension(N) :: a
!ocl simd(unaligned)
!ocl xfill
do i=1,N
a(i) = 1._8
enddo
end subroutine test
