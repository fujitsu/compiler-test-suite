#define N 1000
program main
  real(kind=8),dimension(1:N) :: a,b,res
  call init(a,b,N,res,2)
  call test(a,b,N,2)
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *,"ng"
     endif
  enddo
  print *,"ok"
end program main

subroutine init(a,b,n,res,k)
  integer :: n,k
  real(kind=8),dimension(1:n) :: a,b,res

  a = 0.
  b = 0.
  res = 0.

  do i=1,n,k
     b(i) = i
     res(i) = i
  enddo
end subroutine init

subroutine test(a,b,n,k)
  integer :: n,k
  real(kind=8), dimension(1:n) :: a,b

  do i=1,n,k
     a(i) = b(i)
  enddo

end subroutine test

