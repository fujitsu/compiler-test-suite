! option : -Kocl

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

#define CONST_DISTANCE 2

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real(kind=4),dimension(N) :: a,res
  integer(kind=4),dimension(N) :: b
  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo

  dist = 1
  do i=1,N
     if(i .eq. dist) then
        if(i .gt. N/2) then
           if(i+1._4 .ne. res(i)) then
              PRINT_NG
           endif
        else
           if(0._4 .ne. res(i)) then
              PRINT_NG
           endif
        endif
        dist = dist + CONST_DISTANCE
     else
        if(0._4 .ne. res(i)) then
           PRINT_NG
        endif
     endif
  enddo

  PRINT_OK
end program main

subroutine init(a,b,res)
  USE_SIMFUNC
  real(kind=4),dimension(N) :: a,res
  integer(kind=4),dimension(N) :: b
  !ocl nosimd
  do i=1,N
     a(i) = i+1._4
     res(i) = 0._4
     if(i .gt. N/2) then
        b(i) = 1
     else
        b(i) = 0
     endif
  enddo
end subroutine init
#endif

subroutine test(a,b,res)
  USE_SIMFUNC
  real(kind=4),dimension(N) :: a,res
  integer(kind=4),dimension(N) :: b
  !ocl simd(unaligned)
  do i=1,N,CONST_DISTANCE
     if(b(i) .eq. 1) then
        res(i) = a(i)
     endif
  enddo
end subroutine test
