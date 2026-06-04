#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#define PRINT_ARG(x) call simprintl(x)
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#define PRINT_ARG(x) print *,x
#endif

#if defined(ROLL_TIMES)
#define M ROLL_TIMES
#else
#define M 1024
#endif

subroutine test(A,B,C,N)
  implicit none
  real(kind=4),dimension(N)::A,B,C
  integer::N

!ocl simd_listv
  where(a>0)
     c = a + b
  elsewhere
     c = a - b
  end where
end subroutine test


#ifndef ASM_ONLY

subroutine init(A,B,C,res,N)
  implicit none
  integer::I,N
  real(kind=4)::A(M),B(M),C(M),res(M)
  real(kind=4)::tmp, tmp2

  tmp=-1
  tmp2 = tmp
!ocl nosimd  
  DO I=1,N
     A(I) = MOD(I,101)*SIGN(1.0,SIN(-I*2.2))
     B(I) = tmp2
     C(I) = MOD(I,23)*SIGN(1.0,COS(I*1.332))
     res(I) = C(I)
     tmp2 = tmp2 * tmp
  enddo

!ocl nosimd
  where(a>0)
     res = a + b
  elsewhere
     res = a - b
  end where
end subroutine init

subroutine check(C,res,N)
  USE_SIMFUNC
  integer::I,N
  real(kind=4)::res(M),C(M)
!ocl nosimd  
  do i=1,N
     if(res(i).ne.C(i)) then
#if defined(SIM_RUN)        
        call simprint("i:")
        call simprint(i)
        call simprint(" res(i):")
        call simprint(res(i))
        call simprint(" C(i):")
        call simprintl(C(i))
#else
        print *,"i:",i," res(i):", res(i), " C(i):", C(i)
#endif        
     end if
  end do
  PRINT_OK
end subroutine check
  
program main
  integer::N
  real(kind=4)::A(M),B(M),C(M),res(M)
  N = M
  call init(A,B,C,res,N)
  call test(A,B,C,N)
  call check(C,res,N)
end program main
#endif
