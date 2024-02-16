#define N 10
program main
  real(kind=8),dimension(1:N,1:N) :: a,b,res
  integer(kind=8), dimension(1:N) :: c
  call init(a,b,c,res)
  call sub(a,b,c,N)
  do j=1,N
  do i=1,N
     if(a(i,j) .ne. res(i,j)) then
        print *,"ng"
     endif
  enddo
  enddo
  print *,"ok"
end program main

subroutine init(a,b,c,res)
  real(kind=8),dimension(1:N,1:N) :: a,b,res
  integer(kind=8), dimension(1:N) :: c

  a = 0.
  c = (/(i,i=1,N)/)

  do j=1,N
  do i=1,N
     b(i,j) = i+j
     res(i,j) = b(i,j)
  enddo
  enddo
end subroutine init

subroutine sub(a,b,c,n)
  real(8),dimension(1:n,1:n) :: a,b
  integer(8),dimension(1:n) :: c

   do j=1,n
     do i=1,n
        a(i,j) = b(c(i),j)
     enddo
  enddo
end subroutine sub

