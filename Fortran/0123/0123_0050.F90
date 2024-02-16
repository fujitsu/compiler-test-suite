#define N 256

program main
  real(kind=2),dimension(N) :: a,b,res
  integer(kind=2),dimension(N) :: c,x
  call init(a,b,c,x,res,N)
  do i=1,2
     call test(a,b,c,x)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo

  print *, "OK"
end program main

subroutine init(a,b,c,x,res,n1)
  real(kind=2),dimension(1:n1) :: a,b,res
  integer(kind=2),dimension(1:n1) :: c,x
  do i=1,n1
     a(i) = 0._8
     b(i) = real(i,kind=2)
     c(i) = i
     res(i) = b(i)
     x(i) = 1
  enddo
end subroutine init

subroutine test(a,b,c,x)
real(kind=2),dimension(1:N) :: a,b
integer(kind=2),dimension(1:N) :: c,x
do i=1,N
  if (x(i) == 1) then
    a(c(i)) = b(i)
  endif
enddo
end subroutine test
