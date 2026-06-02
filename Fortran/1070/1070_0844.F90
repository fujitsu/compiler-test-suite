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
  real(kind=4),dimension(M)::A
  real(kind=8),dimension(M)::B,C
  real(kind=8)::tmp
  integer::i, N

  do I=1,N
!ocl simd_listv
     if (A(I)  > 10) then
        tmp = B(I)
     else
        tmp = 1
     end if
     C(I) = tmp
  end do
end subroutine test


#ifndef ASM_ONLY

subroutine init(A,B,C,res,N)
  implicit none
  integer::I,N
  real(kind=4)::A(M)
  real(kind=8)::B(M),C(M),res(M)
  real(kind=8)::tmp, tmp2

  tmp=-1
  tmp2 = tmp
!ocl nosimd  
  DO I=1,N
     A(I) = MOD(I,150)*SIGN(1.0,SIN(I*0.31))
     B(I) = tmp2
     C(I) = MOD(I,19)*SIGN(1.0,COS(-I*1.233))
     res(I) = C(I)
     tmp2 = tmp2 * tmp
  enddo

!ocl nosimd(aligned)
  do I=1,N
     if (A(I)  > 10 ) then
        tmp = B(I)
     else
        tmp = 1
     end if
     res(I) = tmp
  end do
end subroutine init

subroutine check(C,res,N)
  USE_SIMFUNC
  integer::I,N
  real(kind=8)::res(M),C(M)
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
  real(kind=4)::A(M)
  real(kind=8)::B(M),C(M),res(M)
  N = M
  call init(A,B,C,res,N)
  call test(A,B,C,N)
  call check(C,res,N)
end program main
#endif
