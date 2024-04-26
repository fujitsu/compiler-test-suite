subroutine sub(a,b,c,d,e,m,n)
  real(8),dimension(1:n) :: a,b,c,d,e
  logical(8),dimension(1:n) :: m
  do i=1,n
     if (m(i)) then
        a(i) = b(i) + c(i) * d(i) - e(i)
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  integer(8) :: i
  real(8),dimension(1:n) :: a,b,c,d,e
  logical(8),dimension(1:n) :: m
  real(8) :: res
  real(8),parameter :: ans =173543023.2599998_8
  real(8),parameter :: error=        0.0000001_8
  a = 0._8
  do i=1,n
     b(i) = i * 1.1_8
     c(i) = i * 1.2_8
     d(i) = i * 1.3_8
     e(i) = i * 1.4_8
  end do
  m = (/(mod(i,3).eq.0,i=1,n)/)
  call sub(a,b,c,d,e,m,n)
  res = sum(a)
  if (abs(res-ans) .le. error) then
     print *,"ok"
  else
     print *,"ng"
     print *,res,"!=",ans
  endif
end program main
