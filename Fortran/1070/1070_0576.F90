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

  real(kind=8),dimension(N) :: dest,src,res
  call init(dest,src,res,N)
  do i=1,2
     call test(dest,src,i-1)
  enddo
  do i=1,N
     if(dest(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(dest,src,res,n1)
  USE_SIMFUNC
  real(kind=8),dimension(1:n1) :: dest,src,res
  !ocl nosimd
  do i=1,n1
     dest(i) = 0._4
     src(i) = real(i,kind=8)
     res(i) = real(i+i,kind=8)
  enddo
end subroutine init
#endif

subroutine test(dest, src, idx)
  USE_SIMFUNC
  real(kind=8), dimension(N) :: dest,src
  integer(kind=4)::idx
  !ocl simd(unaligned)
  do i=1,N
     dest(i) = src(i) + real(i*idx,kind=8)
  enddo
end subroutine test
