#define N 256

program main
  real(kind=2),dimension(N) :: a,b,res
  integer(kind=2),dimension(N) :: c
  call init(a,b,c,res,N)
  do i=1,2
     call test(a,b,c)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,res,n1)
  real(kind=2),dimension(1:n1) :: a,b,res
  integer(kind=2),dimension(1:n1) :: c
  do i=1,n1
     a(i) = 0._8
     b(i) = real(i,kind=2)
     c(i) = i
     res(i) = b(i)
  enddo
end subroutine init

subroutine test(a,b,c)
real(kind=2),dimension(1:N) :: a,b
integer(kind=2),dimension(1:N) :: c
do i=1,N
  a(i) = b(c(i))
enddo
end subroutine test
