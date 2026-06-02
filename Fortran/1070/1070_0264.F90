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

  real(kind=8),dimension(N) :: res
  integer(kind=4),dimension(N) :: c,d,e

  do i=1,2
     call test(c,d,res,e)
  enddo

  PRINT_OK
end program main

subroutine init(a,b,c,d,res,e)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: a,b,res
  integer(kind=4),dimension(1:N) :: c,d,e
  !ocl nosimd
  do i=1,N
     a(i) = 0_8
     b(i) = i * 2
     c(i) = i
     d(i) = i
     if (i .gt. N/2) then
        res(i) = b(i)
        e(i) = 1
     else
        res(i) = 0_8
        e(i) = 0_8
     endif
  enddo
end subroutine init
#endif

subroutine dummy(a)
  USE_SIMFUNC
  real(kind=8),dimension(1:N) :: a
end subroutine dummy

subroutine test(c,d,res,e)
  USE_SIMFUNC
#ifdef SIM_RUN
  real(kind=8),dimension(1:N) :: a,b
#else
  real(kind=8),allocatable,dimension(:) :: a,b
#endif
  real(kind=8),dimension(1:N) :: res
  integer(kind=4),dimension(1:N) :: c,d,e

#ifndef SIM_RUN
  allocate(a(N))
  allocate(b(N))
#endif

#ifndef ASM_ONLY
  call init(a,b,c,d,res,e)
#endif

  !ocl simd(unaligned)
  do i=1,N
     if (e(i) .eq. 1) then
        a(c(i)) = b(d(i))
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

#ifndef SIM_RUN
  deallocate(a)
  deallocate(b)
#endif

end subroutine test
