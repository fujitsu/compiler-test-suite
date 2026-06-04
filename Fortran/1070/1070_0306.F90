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

#define TYPEKIND  1
#define TYPEKIND2 2
#define TYPEKIND3 4

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=TYPEKIND),dimension(N) :: a,b,c,res
  integer(kind=TYPEKIND2),dimension(N) :: a2,b2,c2,res2
  integer(kind=TYPEKIND3),dimension(N) :: a3,b3,c3,res3
  call init(a,b,c,res,a2,b2,c2,res2,a3,b3,c3,res3,N)
  do i=1,2
     call test(a,b,c,a2,b2,c2,a3,b3,c3)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
     if(a2(i).ne.res2(i)) then
        PRINT_NG
     end if
     if(a3(i).ne.res3(i)) then
        PRINT_NG
     end if
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,res,a2,b2,c2,res2,a3,b3,c3,res3,n1)
  USE_SIMFUNC
  integer(kind=TYPEKIND),dimension(1:n1) :: a,b,c,res
  integer(kind=TYPEKIND2),dimension(1:n1) :: a2,b2,c2,res2
  integer(kind=TYPEKIND3),dimension(1:n1) :: a3,b3,c3,res3
!ocl nosimd
!ocl loop_nofission
  do i=1,n1
     a(i) = 0_TYPEKIND
     b(i) = mod(i, n1/9)
     c(i) = mod(i, n1/12)+1
     res(i) = mod(b(i),c(i))
     a2(i) = 0_TYPEKIND2
     b2(i) = mod(i, n1/5)
     c2(i) = mod(i, n1/8)+1
     res2(i) = mod(b2(i),c2(i))
     a3(i) = 0_TYPEKIND3
     b3(i) = mod(i, n1/3)
     c3(i) = mod(i, n1/4)+1
     res3(i) = mod(b3(i),c3(i))
  enddo
end subroutine init
#endif

subroutine test(a,b,c,a2,b2,c2,a3,b3,c3)
  USE_SIMFUNC
  integer(kind=TYPEKIND), dimension(N) :: a,b,c
  integer(kind=TYPEKIND2), dimension(N) :: a2,b2,c2
  integer(kind=TYPEKIND3), dimension(N) :: a3,b3,c3
!ocl simd(unaligned)
!ocl loop_nofission  
  do i=1,N
     a(i)  = mod(b(i), c(i))
     a2(i) = mod(b2(i), c2(i))
     a3(i) = mod(b3(i), c3(i))
  enddo
end subroutine test
