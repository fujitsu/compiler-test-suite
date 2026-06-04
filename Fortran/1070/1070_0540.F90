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

#define CONST_DISTANCE 5

module defstruct
  type struct_1
     integer(kind=4),dimension(N) :: a
  end type struct_1
  type struct_2
     integer(kind=4),dimension(N) :: b
  endtype struct_2
end module defstruct

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  use defstruct
  integer(kind=4),dimension(N) :: res
  type(struct_1) :: st1
  type(struct_2) :: st2

  call init(st1,st2,res,N)
  do i=1,2
     call test(st1,st2)
  enddo
  do i=1,N
     if(st1%a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(st1,st2,res,n1)
  USE_SIMFUNC
  use defstruct
  integer(kind=4),dimension(n1) :: res
  type(struct_1) :: st1
  type(struct_2) :: st2

  !ocl nosimd
  do i=1,n1
     st1%a(i) = 0
     st2%b(i) = 0
     res(i) = 0
  enddo
  !ocl nosimd
  do i=1,n1,CONST_DISTANCE
     st2%b(i) = i
     res(i) = i
  enddo
end subroutine init
#endif

subroutine test(st1,st2)
  USE_SIMFUNC
  use defstruct
  type(struct_1) :: st1
  type(struct_2) :: st2

  !ocl simd(unaligned)
  do i=1,N,CONST_DISTANCE
     st1%a(i) = st2%b(i)
  enddo
end subroutine test
