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

  integer(kind=8),dimension(N) :: a,b,res
  integer(kind=4),dimension(N) :: c,d
  call init(a,b,c,d,res,N)
  do i=1,2
     call test(0_8,0_8,0_8,0_8,0_8,0_8,a,b,c,d)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(a,b,c,d,res,n1)
  USE_SIMFUNC
  integer(kind=8),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d
  !ocl nosimd
  do i=1,n1
     a(i) = 0_8
     b(i) = i * 2
     c(i) = i
     d(i) = i
     res(i) = i * 2
  enddo
  res(1) = 0_8
end subroutine init
#endif

subroutine test(dummy1,dummy2,dummy3,dummy4,dummy5,dummy6,a,b,c,d)
  USE_SIMFUNC
  integer(kind=8)::dummy1,dummy2,dummy3
  integer(kind=8)::dummy4,dummy5,dummy6
  integer(kind=8),dimension(1:N) :: a,b
  integer(kind=4),dimension(1:N) :: c,d

  !ocl simd(unaligned)
  do i=1,N-1
     a(c(i)+INDX) = b(d(i)+INDX)
  enddo
end subroutine test
