#define N 256

program main
  real(kind=2) :: a
  real(kind=2),dimension(N) :: b,res
  call init(a,b,res,N)
  do i=1,2
     call test(a,b)
  enddo
  do i=1,N
     if(a .ne. res(i)) then
        print *, "NG"
     endif
  enddo
  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=2) :: a
  real(kind=2),dimension(1:n1) :: b,res
  do i=1,n1
     a = 0._8
     b(i) = real(i,kind=2)
     res(i) = real(n1,kind=2)
  enddo
end subroutine init

subroutine test(a,b)
  real(kind=2) :: a
  real(kind=2), dimension(N) :: b
  do i=1,N
     a = b(i)
  enddo
end subroutine test
