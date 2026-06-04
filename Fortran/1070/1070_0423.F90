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

  logical(kind=4),dimension(N) :: a,b,res
  interface
     subroutine test(a,b,c,res)
       USE_SIMFUNC
       logical(kind=4), dimension(N) :: a,b,res
       logical(kind=4),value :: c
     end subroutine test
  end interface

  call init(a,b)
  do i=1,2
     call test(a,b,.FALSE._4, res)
  enddo
  do i=1,N
     if(.TRUE._4 .neqv. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b)
  USE_SIMFUNC
  logical(kind=4),dimension(N) :: a,b
  !ocl nosimd
  do i=1,N
     a(i) = .FALSE._4
     b(i) = .TRUE._4
  enddo
end subroutine init
#endif

subroutine test(a,b,c,res)
  USE_SIMFUNC
  logical(kind=4), dimension(N) :: a,b,res
  logical(kind=4) :: tmp
  logical(kind=4),value :: c
  !ocl simd(unaligned)
  do i=1,N
     if(a(i) .neqv. b(i)) then
        tmp = .TRUE._4
     else
        tmp = c
     endif
     res(i) = tmp
  enddo
end subroutine test
