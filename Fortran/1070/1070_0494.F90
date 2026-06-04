! ISHFT

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

#if defined(SHIFT_AMOUNT)
#define SA -8
#else
#define SA -2
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=8),dimension(N) :: src1,dest
  call init(src1,dest)
  do i=1,2
     call test(src1,dest)
  enddo
  do i=1,N
     if(dest(i) .ne. i) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(src1,dest)
  USE_SIMFUNC
  integer(kind=8),dimension(1:N) :: src1,dest
  !ocl nosimd
  do i=1,N
     dest(i) = 0
     src1(i) = i*4
  enddo
end subroutine init
#endif

subroutine test(src1,dest)
  USE_SIMFUNC
  integer(kind=8), dimension(N) :: src1,dest
  !ocl simd(unaligned)
  do i=1,N
     dest(i) = ISHFT(src1(i),SA)
  enddo
end subroutine test
