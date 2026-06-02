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

#define CONST_DISTANCE 1

module defstruct
  type struct_1
     integer(kind=4) :: a
     integer(kind=4) :: b
     integer(kind=4) :: c
     integer(kind=4) :: d
     integer(kind=4) :: e
     integer(kind=4) :: f
     integer(kind=4) :: g
  end type struct_1
end module defstruct

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  use defstruct
  integer(kind=4),dimension(N) :: res
  type(struct_1) :: st1(N)

  call init(st1,res,N)
  do i=1,2
     call test(st1)
  enddo
  do i=1,N
     if(st1(i)%a .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(st1,res,n1)
  USE_SIMFUNC
  use defstruct
  integer(kind=4),dimension(n1) :: res
  type(struct_1) :: st1(n1)

  !ocl nosimd
  do i=1,n1
     st1(i)%a = 0
     st1(i)%b = 0
     st1(i)%c = 0
     st1(i)%d = 0
     st1(i)%e = 0
     st1(i)%f = 0
     st1(i)%g = 0
     res(i) = 0
  enddo
  !ocl nosimd
  do i=1,n1,CONST_DISTANCE
     st1(i)%b = i
     res(i) = i
  enddo
end subroutine init
#endif

subroutine test(st1)
  USE_SIMFUNC
  use defstruct
  type(struct_1) :: st1(N)

  !ocl simd(unaligned)
  do i=1,N,CONST_DISTANCE
     st1(i)%a = st1(i)%b
  enddo
end subroutine test
