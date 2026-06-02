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

#define INDX 1

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=8),dimension(N) :: a,b,res
  common //a,b

  call init(res,2,1)

  do i=1,2
     call test(2,1)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res,k,indx)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: a,b,res
  integer :: k,indx
  common //a,b

  !ocl nosimd
  do i=1,N
     a(i) = 0._8
     b(i) = 0._8
     res(i) = 0._8
  enddo
  !ocl nosimd
  do i=1,N-1,k
     b(i+indx) = i * 2._8
     res(i+indx) = i * 2._8
  enddo
end subroutine init
#endif

subroutine test(k,indx)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: a,b
  integer :: k,indx
  common //a,b

  !ocl simd(unaligned)
  do i=1,N-1,k
     a(i+indx) = b(i+indx)
  enddo

end subroutine test
