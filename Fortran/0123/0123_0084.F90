#define N 512

program main
  real(kind=2),dimension(N) :: a,b,res
  call init(a,b,res,N,20_2)
  do i=1,2
     call test1(a,b,20_2)
  enddo
  do i=1,2
     call test2(a,b,20_2)
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
  do i=1,n1,k
     b(i) = i
     res(i) = i
  enddo
end subroutine init

subroutine test1(a,b,k)
  real(kind=2), dimension(N) :: a,b
  integer(kind=2) :: k
  do i=1,N,k
     a(i) = b(i)
  enddo
end subroutine

subroutine test2(a,b,k)
  real(kind=2), dimension(N) :: a,b
  integer(kind=2) :: k
  do i=1,N,k
     a(i) = b(i)
  enddo
end subroutine
