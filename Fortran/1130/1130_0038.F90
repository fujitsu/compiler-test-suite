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
#define NN 256
#elif defined(MOD)
#define N 65
#define NN 65
#else
#define N 64
#define NN 64
#endif

#define CONST_DISTANCE 10

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(NN) :: a,b,res
  integer(kind=4) :: n
  common //a,b
  call get_n(n)
  call init(res,n)
  do i=1,2
     call test(n)
  enddo

  do i=1,n
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine get_n(n)
  integer(kind=4) :: n
  if (N > 256) then
     n = NN
  else
     n = N
  endif
end subroutine get_n

subroutine init(res,n)
  USE_SIMFUNC
  integer(kind=4),dimension(1:NN) :: a,b,res
  integer :: n,k
  common //a,b

!ocl nosimd
  do i=1,n
     a(i) = 0_8
     b(i) = 0_8
     res(i) = 0_8
  enddo
!ocl nosimd
  do i=1,n,CONST_DISTANCE
     b(i) = i * 2_8
     res(i) = i * 2_8
  enddo

end subroutine init
#endif

subroutine test(n)
  USE_SIMFUNC
  integer(kind=4),dimension(1:NN) :: a,b
  common //a,b

  do i=1,n,CONST_DISTANCE
     a(i) = b(i)
  enddo
end subroutine test
