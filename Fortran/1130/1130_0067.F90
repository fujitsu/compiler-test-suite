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

#define POS 7

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(1:N,1:N,1:N) :: a,b,a2,b2,a3,b3,res,res2,res3
  call init(a,b,a2,b2,a3,b3,res,res2,res3)
  do i=1,2
     call test(a,b,a2,b2,a3,b3,N,POS)
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

subroutine init(a,b,a2,b2,a3,b3,res,res2,res3)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N,1:N,1:N) :: a,b,a2,b2,a3,b3,res,res2,res3

!ocl nosimd
  do i=1,N
  do j=1,N
  do k=1,N
     a(k,j,i) = 0_4
     a2(k,j,i) = 0_4
     a3(k,j,i) = 0_4
     b(k,j,i) = 1_4
     b2(k,j,i) = 1_4
     b3(k,j,i) = 1_4
     res(k,j,i) = 0_4
     res2(k,j,i) = 0_4
     res3(k,j,i) = 0_4
  enddo
  enddo
  enddo
!ocl nosimd
  do i=1,N
     res(POS,POS,i) = b(POS,POS,i) * b(POS-1,POS-1,i) * b(POS-2,POS-2,i)
     res2(POS,POS,i) = b2(POS,POS,i) * b2(POS-1,POS-1,i) * b2(POS-2,POS-2,i)
     res3(POS,POS,i) = b3(POS,POS,i) * b3(POS-1,POS-1,i) * b3(POS-2,POS-2,i)
  enddo

end subroutine init
#endif

subroutine test(a,b,a2,b2,a3,b3,nnn,pos)
  USE_SIMFUNC
  integer(kind=4),dimension(1:nnn,1:nnn,1:N) :: a,b,a2,b2,a3,b3
  integer(kind=4) :: i,pos

!ocl loop_nofission
  do i=1,N
     a(pos,pos,i) = b(pos,pos,i) * b(pos-1,pos-1,i) * b(pos-2,pos-2,i)
     a2(pos,pos,i) = b2(pos,pos,i) * b2(pos-1,pos-1,i) * b2(pos-2,pos-2,i)
     a3(pos,pos,i) = b3(pos,pos,i) * b3(pos-1,pos-1,i) * b3(pos-2,pos-2,i)
  enddo
end subroutine test
