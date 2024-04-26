subroutine sub(a,b,m,n)
  real(8),dimension(1:n) :: a
  real(4),dimension(1:n) :: b
  logical(8),dimension(1:n) :: m
  do i=1,n
     if (m(i)) then
        a(i) = dble(b(i))
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  integer(8) :: i
  real(8),dimension(1:n) :: a
  real(4),dimension(1:n) :: b
  logical(8),dimension(1:n) :: m
  real(8) :: res
  real(8),parameter :: ans =-200199.6000000000_8
  real(8),parameter :: error=  0.01_8
  a = 0._8
  do i=1,n
     b(i) = i * (-1.2_4)
  end do
  m = (/(mod(i,3).eq.0,i=1,n)/)
  call sub(a,b,m,n)
  res = sum(a)
  if (abs(res-ans) .le. error) then
     print *,"ok"
  else
     print *,"ng"
     print *,res,"!=",ans
  endif
end program main
