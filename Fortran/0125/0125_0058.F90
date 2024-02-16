#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 2051
#else
#define N 2048
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
  a = 0._4
  b = 1._4
  c = 2._4
  res = 0._4
  do i=1,n1,70
     if (i <= n1-70) then
       res(i) = b(i) + b(i) + c(i)
     endif
  enddo
end subroutine init

subroutine test(a,b,c)
  real(kind=4), dimension(N) :: a,b,c
  do i=1,N-70,70
     a(i) = b(i) + c(i) + b(i+36)
  enddo
end subroutine test
