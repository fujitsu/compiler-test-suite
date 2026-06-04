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
#define N 10
#endif

#define INDX 1

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(N) :: res
  integer(kind=4),dimension(N) :: c,d,e

  do i=1,2
     call test(c,d,res,1,e)
  enddo

  PRINT_OK
end program main

subroutine init(a,b,c,d,res,n1,e)
  USE_SIMFUNC
  real(kind=4),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d,e
  !ocl nosimd
  do i=1,n1
     a(i) = 0_4
     b(i) = i * 2
     c(i) = i
     d(i) = i
     res(i) = b(i)
     if (i .gt. N/2) then
        e(i) = 1
     else
        e(i) = 0
     endif
     if (i .lt. N/2) then
        res(i) = 0_4
     endif
  enddo
  res(n1) = 0_4
end subroutine init
#endif

subroutine dummy(a)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: a
end subroutine dummy

subroutine test(c,d,res,indx,e)
  USE_SIMFUNC
  real(kind=4),dimension(1:N) :: a,b,res
  integer(kind=4),dimension(1:N) :: c,d,e

#ifndef ASM_ONLY
  call init(a,b,c,d,res,N,e)
#endif

  !ocl simd(unaligned)
  do i=2,N
     if (e(i) .eq. 1) then
        a(c(i)-indx) = b(d(i)-indx)
     endif
  enddo

  call dummy(a)

#ifndef ASM_ONLY
  do i=1,N
     if (a(i) .ne. res(i)) then
        PRINT_NG;
     endif
  enddo
#endif
end subroutine test
