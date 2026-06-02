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

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=8),dimension(N) :: a,res
  logical(kind=4),dimension(N) :: b
  call init(a,b,res)
  do i=1,2
     call test(a,b,res)
  enddo
  do i=1,N
     if(i .gt. N/2) then
        if(i+1_4 .ne. res(i)) then
           PRINT_NG
        endif
     else
        if(0_4 .ne. res(i)) then
           PRINT_NG
        endif
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,res)
  USE_SIMFUNC
  integer(kind=8),dimension(N) :: a,res
  logical(kind=4),dimension(N) :: b
  !ocl nosimd
  do i=1,N
     a(i) = i+1_4
     res(i) = 0_4
     if(i .gt. N/2) then
        b(i) = .TRUE.
     else
        b(i) = .FALSE.
     endif
  enddo
end subroutine init
#endif

subroutine test(a,b,res)
  USE_SIMFUNC
  integer(kind=8),dimension(N) :: a,res
  logical(kind=4),dimension(N) :: b
  !ocl simd(unaligned)
  do i=1,N
     if(b(i) .eqv. .TRUE.) then
        res(i) = a(i)
     endif
  enddo
end subroutine test
