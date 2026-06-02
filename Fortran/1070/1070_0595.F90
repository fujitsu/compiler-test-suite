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

  integer(kind=8),dimension(N) :: dest
  integer(kind=8) :: b

  interface
     subroutine test41(dest, b)
       USE_SIMFUNC
       integer(kind=8),dimension(N) :: dest
       integer(kind=8),value :: b
     end subroutine test41
  end interface

  call init(b,dest)

  do i=1,2
     call test41(dest, b)
  enddo
  do i=1,N
     if(dest(i) .ne. b) then
        PRINT_NG
     endif
  enddo

  PRINT_OK

end program main

subroutine init(b,dest)
  USE_SIMFUNC
  integer(kind=8),dimension(1:N) :: dest
  integer(kind=8) :: b
  !ocl nosimd
  do i=1,N
     b = i
     dest(i) = 0_8
  enddo
end subroutine init
#endif

subroutine test41(dest,b)
  USE_SIMFUNC
  integer(kind=8),dimension(N) :: dest
  integer(kind=8),value :: b
  !ocl simd(unaligned)
  do i=1,N
     dest(i) = b
  enddo
end subroutine test41

