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
! ibits,第一引数の定義が複数のoudにある
! mp3の入力時、違うoudに、callpe"simd_bcastv2i8i8", add
subroutine sub(a, b, z, f)
  USE_SIMFUNC
  integer*8,dimension(1:10) :: a,b
  real*8,dimension(1:10)    :: z
  real*8 f
  integer*8 tmp
  do i = 1, 10
     tmp = 0
     if (f .eq. 1.0) then
        tmp = a(i) + b(i)
     end if
     z(i) = real(ibits(tmp, 3, 1))
  end do
end subroutine sub

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  integer*8,dimension(1:10) :: a = 4_8
  integer*8,dimension(1:10) :: b = 4_8
  real*8,dimension(1:10)    :: z = 0.0
  real*8 f
  f = 1.0
  call sub(a, b, z, f)
  do i = 1, 10
     if(z(i) .eq. 1.0_8) then
        PRINT_OK
     else
        PRINT_NG
!        write(6, *) z(i)
     end if
  end do
end program main
#endif
