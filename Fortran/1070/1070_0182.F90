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
#define N 257
#else
#define N 256
#endif

#define TYPEKIND  2
#define TYPEKIND2 4

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=TYPEKIND),dimension(N) :: a,b,c,res
  integer(kind=TYPEKIND2),dimension(N) :: a2,b2,c2,res2
  call init(a,b,c,res,a2,b2,c2,res2,N)
  do i=1,2
     call test(a,b,c,a2,b2,c2)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a2(i).ne.res2(i)) then
        PRINT_NG
     end if
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,res,a2,b2,c2,res2,n1)
  USE_SIMFUNC
  integer(kind=TYPEKIND),dimension(1:n1) :: a,b,c,res
  integer(kind=TYPEKIND2),dimension(1:n1) :: a2,b2,c2,res2
!ocl nosimd
!ocl loop_nofission
  do i=1,n1
     a(i) = 0_TYPEKIND
     b(i) = mod(i, n1/13)
     c(i) = mod(i, n1/15)+1
     res(i) = b(i)/c(i)
     a2(i) = 0_TYPEKIND2
     b2(i) = mod(i, n1/6)
     c2(i) = mod(i, n1/10)+1
     res2(i) = b2(i)/c2(i)
  enddo
end subroutine init
#endif

subroutine test(a,b,c,a2,b2,c2)
  USE_SIMFUNC
  integer(kind=TYPEKIND), dimension(N) :: a,b,c
  integer(kind=TYPEKIND2), dimension(N) :: a2,b2,c2
!ocl simd(unaligned)
!ocl loop_nofission  
  do i=1,N
     a(i)  = b(i)  / c(i)
     a2(i) = b2(i) / c2(i)
  enddo
end subroutine test
