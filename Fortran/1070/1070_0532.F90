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

#define CONST_DISTANCE 7

module defstruct
  type struct_1
     integer(kind=4),dimension(N) :: a
  end type struct_1
  type struct_2
     integer(kind=4),dimension(N) :: res
  endtype struct_2
end module defstruct

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  use defstruct
  integer(kind=4),dimension(N) :: b
  type(struct_1) :: st1
  type(struct_2) :: st2

  call init(st1,st2,b)
  do i=1,2
     call test(st1,st2,b)
  enddo

  dist = 1
  do i=1,N
     if(i .eq. dist) then
        if(i .gt. N/2) then
           if(i+1_4 .ne. st2%res(i)) then
              PRINT_NG
           endif
        else
           if(0_4 .ne. st2%res(i)) then
              PRINT_NG
           endif
        endif
        dist = dist + CONST_DISTANCE
     else
        if(0_4 .ne. st2%res(i)) then
           PRINT_NG
        endif
     endif
  enddo

  PRINT_OK
end program main

subroutine init(st1,st2,b)
  USE_SIMFUNC
  use defstruct
  integer(kind=4),dimension(N) :: b
  type(struct_1) :: st1
  type(struct_2) :: st2

  !ocl nosimd
  do i=1,N
     st1%a(i) = i+1_4
     st2%res(i) = 0_4
     if(i .gt. N/2) then
        b(i) = 1
     else
        b(i) = 0
     endif
  enddo
end subroutine init
#endif

subroutine test(st1,st2,b)
  USE_SIMFUNC
  use defstruct
  type(struct_1) :: st1
  type(struct_2) :: st2
  integer(kind=4),dimension(N) :: b
  !ocl simd(unaligned)
  do i=1,N,CONST_DISTANCE
     if(b(i) .eq. 1) then
        st2%res(i) = st1%a(i)
     endif
  enddo
end subroutine test
