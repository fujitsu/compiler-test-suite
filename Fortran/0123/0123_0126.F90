#define N 64

program main
  real(kind=2),dimension(N) :: a
  real(kind=2) :: dest,res
  integer(kind=4),dimension(N) :: b
      
  do i=1,2
      call init(a,b,res,N)
      call test(a,b,dest)
  enddo
  if(res .ne. dest) then
     print *, "NG"
  endif

  print *, "OK"
end program main

subroutine init(a,b,res,n1)
  real(kind=2),dimension(1:n1) :: a
  real(kind=2) :: res
  integer(kind=4),dimension(1:n1) :: b
  res = 0._8
  do i=1,n1
    a(i) = i
    b(i) = i
    if (i .gt. N/2) then
      res = res + i
    endif 
  enddo
end subroutine init

subroutine test(a,b,dest)
  real(kind=2), dimension(N) :: a
  real(kind=2) :: dest,tmp
  integer(kind=4), dimension(N) :: b

  tmp = 0._8
  do i=1,N
    if (b(i) .gt. N/2) then 
      tmp = tmp + a(i)
    endif
  enddo
  dest = tmp
end subroutine test
