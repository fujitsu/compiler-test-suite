#define N 128

program main
  real(kind=2),dimension(N) :: a
  real(kind=2) :: dest,res
      
  do i=1,2
      call init(a,res,N)
      call test(a,dest)
  enddo
  if(res .ne. dest) then
     print *, "NG"
  endif
  print *, "OK"
end program main

subroutine init(a,res,n1)
  real(kind=2),dimension(1:n1) :: a
  real(kind=2) :: res
  res = 0._8
  do i=1,n1
     a(i) = real(i,kind=2)
     res = res + real(i,kind=2)
  enddo
end subroutine init

subroutine test(a,dest)
  real(kind=2), dimension(N) :: a
  real(kind=2) :: dest,tmp
  tmp = 0._8
  do i=1,N
      tmp = tmp + a(i)
  enddo
  dest = tmp
end subroutine test
