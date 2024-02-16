#define N 1000
program main
  real(kind=8),dimension(1:N) :: a,b,res
  integer(kind=8), dimension(1:N) :: c
  call init(a,b,c,N,res)
  call test(a,b,c)
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *,"ng"
     endif
  enddo
  print *,"ok"
end program main

subroutine init(a,b,c,n,res)
  integer :: n
  real(kind=8),dimension(1:n) :: a,b,res
  integer(kind=8), dimension(1:n) :: c

  do i=1,n
     a(i) = 0
     b(i) = i+1
     c(i) = i
     res(i) = b(i)
  enddo
end subroutine init

subroutine test(a,b,c)
  real(kind=8), dimension(1:N) :: a,b
  integer(kind=8), dimension(1:N) :: c

  do i=1,N
     a(i) = b(c(i))
  enddo

end subroutine test

