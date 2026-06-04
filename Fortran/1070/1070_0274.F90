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
#define N 641
#else
#define N 640
#endif

#define CONST_DISTANCE 20

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(N) :: res

  do i=1,2
     call test(res)
  enddo

  PRINT_OK
end program main

subroutine init(a,b,res)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,res
  !ocl nosimd
  do i=1,N
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo
  !ocl nosimd
  do i=1,N,CONST_DISTANCE
     b(i) = i * 2
     res(i) = i * 2
  enddo
end subroutine init
#endif

subroutine dummy(a)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a
end subroutine dummy

subroutine test(res)
  USE_SIMFUNC
#ifndef SIM_RUN
  integer(kind=4),allocatable,dimension(:) :: a,b
#else
  integer(kind=4),dimension(1:N) :: a,b
#endif
  integer(kind=4),dimension(1:N) :: res

#ifndef SIM_RUN
  allocate(a(N))
  allocate(b(N))
#endif

#ifndef ASM_ONLY
  call init(a,b,res)
#endif

  !ocl simd(unaligned)
  do i=1,N,CONST_DISTANCE
     a(i) = b(i)
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
