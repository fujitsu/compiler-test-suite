program main
  real(kind=8),dimension(1:1000,1:1000) :: a,b,res
  call init(a,b,1000,res)
  call test(a,b,1000)
  do j=1,1000
     do i=1,1000
        if(a(i,j) .ne. res(i,j)) then
           print *,"ng"
        endif
     enddo
  enddo
  print *,"ok"
end program main

subroutine init(a,b,n,res)
  integer :: n
  real(kind=8),dimension(1:n,1:n) :: a,b,res

  a = 0.
  b = 0.
  res = 0.

  do i=1,n
     b(2,i) = i
     res(1,i) = i
  enddo
end subroutine init

subroutine test(a,b,n)
  integer :: n
  real(kind=8), dimension(1:n,1:n) :: a,b

  do i=1,n
     a(1,i) = b(2,i)
  enddo
end subroutine test

