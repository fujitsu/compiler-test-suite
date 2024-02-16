#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 259
#else
#define N 256
#endif

program main
  real(kind=4),dimension(N) :: a,b,c,res
  call init(a,b,c,res,N)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a,b,c,res,n1)
  real(kind=4),dimension(1:n1) :: a,b,c,res
  do i=1,n1
     a(i) = 0._4
     b(i) = real(i,kind=4)
     c(i) = real(i,kind=4)
     res(i) = real(i*2,kind=4)
  enddo
end subroutine init

subroutine test(a,b,c)
  real(kind=4), dimension(N) :: a,b,c
  do i=N,1,-1
     a(i) = b(i) + c(i)
  enddo
end subroutine test
