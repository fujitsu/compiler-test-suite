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

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(N) :: a,b,res
  integer(kind=4),dimension(N) :: c,d
  common //a,b
  call init(c,d,res)
  do i=1,2
     call test(c,d)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(c,d,res)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,res
  integer(kind=4),dimension(1:N) :: c,d
  common //a,b

  !ocl nosimd
  do i=1,N
     a(i) = 0_4
     b(i) = 0_4
     c(i) = i
     d(i) = i
     res(i) = 0_4
  enddo
  do i=1,N-1,CONST_DISTANCE
     b(i+1) = i * 2_4
     res(i+1) = i * 2_4
  enddo

end subroutine init
#endif

subroutine test(c,d)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b
  integer(kind=4),dimension(1:N) :: c,d
  common //a,b

  !ocl simd(unaligned)
  do i=1,N-1,CONST_DISTANCE
     a(c(i)+1) = b(d(i)+1)
  enddo
end subroutine test
