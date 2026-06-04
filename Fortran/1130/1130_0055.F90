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
#define N 255
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#define POS 5

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex(kind=8),dimension(1:N,1:N,1:N) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b,N)
  enddo

  do i=1,N
  do j=1,N
  do k=1,N
     if(a(k,j,i) .ne. res(k,j,i)) then
        PRINT_NG
     endif
  enddo
  enddo
  enddo

  PRINT_OK
end program main

subroutine init(a,b,res)
  USE_SIMFUNC
  complex(kind=8),dimension(1:N,1:N,1:N) :: a,b,res

!ocl nosimd
  do i=1,N
  do j=1,N
  do k=1,N
     a(k,j,i) = cmplx(0,0,kind=8)
     b(k,j,i) = cmplx(0,0,kind=8)
     res(k,j,i) = cmplx(0,0,kind=8)
  enddo
  enddo
  enddo
!ocl nosimd
  do i=1,N
     b(POS,POS,i) = cmplx(i,i,kind=8)
     res(POS,POS,i) = cmplx(i,i,kind=8)
  enddo

end subroutine init
#endif

subroutine test(a,b,nnn)
  USE_SIMFUNC
  complex(kind=8),dimension(1:nnn,1:nnn,1:N) :: a,b
  integer(kind=4) :: i

  do i=1,N
     a(POS,POS,i) = b(POS,POS,i)
  enddo
end subroutine test
