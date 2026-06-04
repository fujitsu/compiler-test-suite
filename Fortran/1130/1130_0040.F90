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
#define NN 65
#elif defined(MOD)
#define N 65
#define NN 65
#else
#define N 64
#define NN 64
#endif

#define POS 5

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(1:NN,1:NN,1:NN) :: a,b,res
  integer(kind=4) :: n
  common //a,b
  call get_n(n)
  call init(n,res)
  do i=1,2
     call test(n)
  enddo

  do i=1,NN
  do j=1,NN
  do k=1,NN
     if(a(k,j,i) .ne. res(k,j,i)) then
        PRINT_NG
     endif
  enddo
  enddo
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

subroutine init(n,res)
  USE_SIMFUNC
  integer(kind=4),dimension(1:NN,1:NN,1:NN) :: a,b,res
  integer :: n,k
  common //a,b

!ocl nosimd
  do i=1,NN
  do j=1,NN
  do k=1,NN
     a(k,j,i) = 0_8
     b(k,j,i) = 0_8
     res(k,j,i) = 0_8
  enddo
  enddo
  enddo
!ocl nosimd
  do i=1,n
     b(POS,POS,i) = i * 2_8
     res(POS,POS,i) = i * 2_8
  enddo

end subroutine init
#endif

subroutine test(n)
  USE_SIMFUNC
  integer(kind=4),dimension(1:NN,1:NN,1:NN) :: a,b
  integer(kind=4) :: i,n
  common //a,b
  
  do i=1,n
     a(POS,POS,i) = b(POS,POS,i)
  enddo
end subroutine test
