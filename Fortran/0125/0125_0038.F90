#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"

#define N 8192

program main
  real(kind=8),dimension(1:N) :: a1,b1,res
  call init(a1,b1,res)
  do i=1,2
     call test(a1,b1)
  enddo
  do i=1,N
     if(a1(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(a1,b1,res)
  real(kind=8),dimension(1:N) :: a1,b1,res
  a1 = 0.
  res = 0.
  do i=1,N
     b1(i) = real(i,kind=8)
  enddo
  do i=N,100,-40
     res(i) = b1(i-17) + b1(i-4) + b1(i-2) + b1(i-22)
  enddo
end subroutine init

subroutine test(a1,b1)
  real(kind=8),dimension(1:N) :: a1,b1
  do i=N,100,-40
     a1(i) = b1(i-17) + b1(i-4) + b1(i-2) + b1(i-22)
  enddo
end subroutine test
