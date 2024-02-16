#define N 128

program main
  real(kind=2),dimension(N) :: a,dest
  real(kind=2) :: res
  integer(kind=4) :: i
      
  do i=1,2
      call init(a,res,N)
      dest(i) = 0._8
      call test(a,dest,i)
  enddo
  do i=1,2
      if(res .ne. dest(i)) then
         print *, "NG"
      endif
  enddo
  print *, "OK"
end program main

subroutine init(a,res,n1)
  real(kind=2),dimension(1:n1) :: a
  real(kind=2) :: res
  res = 0._8
  do i=1,n1
     a(i) = i
     res = res + i
  enddo
end subroutine init

subroutine test(a,dest,x)
  real(kind=2), dimension(N) :: a,dest
  integer(kind=4) :: x

  do i=1,N
      dest(x) = dest(x) + a(i)
  enddo

end subroutine test
