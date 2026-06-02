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

integer(kind=4),dimension(N) :: a
real(kind=8) :: res,m_num

res = 0._8
call init(a,res)
do i=1,2
m_num = 0._8
call test(a,m_num)
enddo
if(m_num .ne. res) then
PRINT_NG
endif
PRINT_OK
end program main

subroutine init(a,res)
USE_SIMFUNC
integer(kind=4),dimension(1:N) :: a
real(kind=8) :: res
!ocl nosimd
do i=1,N
a(i) = i
if ( i .gt. N/2 ) then
res = res + 2._8
endif
enddo
end subroutine init
#endif

subroutine test(a, m_num)
USE_SIMFUNC
integer(kind=4), dimension(N) :: a
real(kind=8) :: m_num
!ocl simd(unaligned)
do i=1,N
if (a(i) .gt. N/2) then
m_num = m_num + 2
endif
enddo
end subroutine test
