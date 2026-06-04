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

real(kind=8),dimension(N) :: dest

call init(dest)

do i=1,2
call test1(dest)
enddo
do i=1,N
if(dest(i) .ne. 1) then
PRINT_NG
endif
enddo
PRINT_OK

end program main

subroutine init(dest)
USE_SIMFUNC
real(kind=8),dimension(1:N) :: dest
!ocl nosimd
do i=1,N
dest(i) = 0_8
enddo
end subroutine init
#endif

subroutine test1(dest)
USE_SIMFUNC
real(kind=8), dimension(N) :: dest
!ocl simd(unaligned)
do i=1,N
dest(i) = 1
enddo
end subroutine test1


