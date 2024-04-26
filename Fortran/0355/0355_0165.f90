subroutine sub(a,b,c,m,n)
  complex(8),dimension(1:n) :: a,b,c
  logical(8),dimension(1:n) :: m
  do i=1,n
     if (m(i)) then
        a(i) = b(i) + c(i)
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  integer(8) :: i
  complex(8),dimension(1:n) :: a,b,c
  logical(8),dimension(1:n) :: m
  real(8) :: res
  real(8),parameter :: ans = 400399.1954314709
  real(8),parameter :: error=   0.1
  a = (0.0,0.0)
  do i=1,n
     b(i) = cmplx(i*1.1, i*1.2)
     c(i) = cmplx(i*1.3, i*1.4)
  end do
  m = (/(mod(i,3).eq.0,i=1,n)/)
  call sub(a,b,c,m,n)
  res = sum(a)
  if (abs(res-ans) .le. error) then
     print *,"ok"
  else
     print *,"ng"
     print *,res,"!=",ans
  endif
end program main
