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

  integer(kind=TYPEKIND),dimension(N) :: a,b,c,res,mask
  integer(kind=TYPEKIND2),dimension(N) :: a2,b2,c2,res2
  call init(a,b,c,res,a2,b2,c2,res2,mask,N)
  do i=1,2
     call test(a,b,c,a2,b2,c2,mask)
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

subroutine init(a,b,c,res,a2,b2,c2,res2,mask,n1)
  USE_SIMFUNC
  integer(kind=TYPEKIND),dimension(1:n1) :: a,b,c,res,mask
  integer(kind=TYPEKIND2),dimension(1:n1) :: a2,b2,c2,res2
!ocl nosimd
!ocl loop_nofission
  do i=1,n1
     a(i) = 0_TYPEKIND
     b(i) = mod(i, n1/3)
     c(i) = mod(i, n1/8)+1
     res(i) = mod(b(i),c(i))
     a2(i) = 0_TYPEKIND2
     b2(i) = mod(i, n1/7)
     c2(i) = mod(i, n1/4)+1
     res2(i) = mod(b2(i),c2(i))
     mask(i) = mod(i, n1/3)
     if (mask(i).eq.0) then
        res(i)  = 1_TYPEKIND/c(i)
        res2(i) = 1_TYPEKIND/c2(i)
        a(i)  = res(i)
        a2(i) = res2(i)
        c(i)  = 0
        c2(i) = 0
     else
        res(i)  = mod(b(i),c(i))
        res2(i) = mod(b2(i),c2(i))
     end if
  enddo
end subroutine init
#endif

subroutine test(a,b,c,a2,b2,c2,mask)
  USE_SIMFUNC
  integer(kind=TYPEKIND), dimension(N) :: a,b,c,mask
  integer(kind=TYPEKIND2), dimension(N) :: a2,b2,c2
!ocl simd(unaligned)
!ocl loop_nofission  
  do i=1,N
     if(mask(i).ne.0) then
        a(i)  = mod(b(i), c(i))
        a2(i) = mod(b2(i), c2(i))
     end if
  enddo
end subroutine test
