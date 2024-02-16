#define N 512

program main
  real(kind=2),dimension(N) :: a,b,res
  call init(a,b,res,N,30_2)
  do i=1,2
     call test(a,b,30_2)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1,k)
  real(kind=2),dimension(1:n1) :: a,b,res
  integer(kind=2) :: k
  do i=1,n1
     a(i) = 0
     b(i) = 0
     res(i) = 0
  enddo
  do i=1,n1-2,k
     b(i) = i
     b(i+1) = i
     b(i+2) = i
     res(i) = i
     res(i+1) = i
     res(i+2) = i
  enddo
end subroutine init

subroutine test(a,b,k)
  real(kind=2), dimension(N) :: a,b
  integer(kind=2) :: k
  do i=1,N-2,k
     a(i) = b(i)
     a(i+1) = b(i+1)
     a(i+2) = b(i+2)
  enddo
end subroutine
