program main
  integer :: n,m
  parameter (n=1000, m=1000)		
  real(kind=8),dimension(1:n,1:m) :: a,b,res
  call init(a,b,res)
  do i=1,2
     call test(a,b)
  enddo
  do j=1,m
  do i=1,n
     if(a(i,j) .ne. res(i,j)) then
        print *, "NG"
     endif
  enddo
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res)
  integer :: n,m
  parameter (n=1000, m=1000)		
  real(kind=8),dimension(1:n,1:m) :: a,b,res


  do j=1,m
  do i=1,n
     a(i,j) = 0
     b(i,j) = 0
     res(i,j) = 0
  enddo
  enddo

  do i=1,m
     b(2,i) = i
     res(1,i) = i
  enddo
end subroutine init


subroutine test(a,b)
  integer :: n,m
  parameter (n=1000, m=1000)		
  real(kind=8), dimension(1:n,1:m) :: a,b


  do i=1,m
     a(1,i) = b(2,i)
  enddo
end subroutine

