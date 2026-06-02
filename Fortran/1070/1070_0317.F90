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

#define TYPEKIND 1

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=TYPEKIND),dimension(N) :: a,b,c,res,mask
  call init(a,b,c,res,mask,N)
  do i=1,2
     call test(a,b,c,mask)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,res,mask,n1)
  USE_SIMFUNC
  integer(kind=TYPEKIND),dimension(1:n1) :: a,b,c,res,mask
  !ocl nosimd
  do i=1,n1
     a(i) = -1_TYPEKIND
     b(i) = mod(i, n1/3)
     c(i) = mod(i, n1/7)+1
     mask(i) = mod(i, n1/4)-1
     if(mask(i).eq.0) then
        res(i) = b(i)
        c(i)   = 0
     else
        res(i) = mod(b(i),c(i))
     end if
  enddo
end subroutine init
#endif

subroutine test(a,b,c,mask)
  USE_SIMFUNC
  integer(kind=TYPEKIND), dimension(N) :: a,b,c,mask
  !ocl simd(unaligned)
  do i=1,N
     if(mask(i).ne.0) then
        a(i) = mod(b(i), c(i))
     else 
        a(i) = b(i)
     endif
  enddo
end subroutine test
