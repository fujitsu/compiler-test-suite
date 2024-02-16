#define N 256

program main
  real(kind=2),dimension(N) :: a,b,res
  integer(kind=2), dimension(N) :: x
  call init(a,b,x,res,N)
  do i=1,2
     call test(a,b,x)
  enddo
  do i=1,N
     if(a(i) .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,x,res,n1)
  real(kind=2),dimension(1:n1) :: a,b,res
  integer(kind=2),dimension(1:n1) :: x
  do i=1,n1
     a(i) = 0._8
     b(i) = 0._8
     res(i) = 0._8
     x(i) = 0
  enddo
  do i=1,n1,2
     b(i) = real(i,kind=2)
     res(i) = real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,b,x)
  real(kind=2), dimension(N) :: a,b
  integer(kind=2), dimension(N) :: x
  do i=1,N,2
   if (x(i) == 0) then
     a(i) = b(i)
   endif
  enddo
end subroutine test
