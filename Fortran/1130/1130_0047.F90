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

#define CONST_DISTANCE 5

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=4),dimension(NN) :: a,b,c,res
  common //a,b,c
  call get_n(n)
  call init(n,res,CONST_DISTANCE)
  do i=1,2
     call test(n,CONST_DISTANCE)
  enddo

  do i=1,NN
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine get_n(n)
  integer(kind=4) :: n
  if (N > NN) then
     n = NN
  else
     n = N
  endif
end subroutine get_n

subroutine init(n,res,k)
  USE_SIMFUNC
  complex(kind=4),dimension(1:NN) :: a,b,c,res
  integer :: k,n
  common //a,b,c

!ocl nosimd
  do i=1,NN
     a(i) = cmplx(0,0,kind=4)
     b(i) = cmplx(0,0,kind=4)
     c(i) = cmplx(0,0,kind=4)
     res(i) = cmplx(0,0,kind=4)
  enddo
!ocl nosimd
  do i=1,n,k
     b(i) = cmplx(i,i,kind=4)
     c(i) = cmplx(1,1,kind=4)
     res(i) = cmplx(i,i,kind=4)
     res(i) = res(i) * c(i)
  enddo

end subroutine init
#endif

subroutine test(n,k)
  USE_SIMFUNC
  complex(kind=4),dimension(1:NN) :: a,b,c
  integer :: n,k
  common //a,b,c

  do i=1,n,k
     a(i) = b(i) * c(i)
  enddo
end subroutine test
