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

#define CONST_DISTANCE 8
#define INDX 1

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=8),dimension(N) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(1,2,3,4,5,6,a,b)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(a,b,res)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: a,b,res
  !ocl nosimd
  do i=1,N
     a(i) = 0._8
     b(i) = 0._8
     res(i) = 0._8
  enddo
  !ocl nosimd
  do i=1,N-1,CONST_DISTANCE
     b(i+INDX) = real(i,kind=8)
     res(i+INDX) = real(i,kind=8)
  enddo
end subroutine init
#endif

subroutine test(dummy1,dummy2,dummy3,dummy4,dummy5,dummy6,a,b)
  USE_SIMFUNC
  integer(kind=4)::dummy1,dummy2,dummy3
  integer(kind=4)::dummy4,dummy5,dummy6
  real(kind=8),dimension(1:N) :: a,b
  !ocl simd(unaligned)
  do i=1,N-1,CONST_DISTANCE
     a(i+INDX) = b(i+INDX)
  enddo
end subroutine test
