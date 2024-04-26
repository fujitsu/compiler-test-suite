subroutine sub(a,b,c,m1,m2,m3,n)
  real(8),dimension(1:n) :: a,b,c
  logical(8),dimension(1:n) :: m1,m2,m3
  do i=1,n
     if (m1(i)) then
        if (m2(i)) then
           if (m3(i)) then
              a(i) = b(i) + c(i)
           end if
        endif
     end if
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  integer(8) :: i
  real(8),dimension(1:n) :: a,b,c
  logical(8),dimension(1:n) :: m1,m2,m3
  real(8) :: res
  real(8),parameter :: ans =18768.00000000000_8
  real(8),parameter :: error=   0.000000000001_8
  a = 0._8
  do i=1,n
     b(i) = i * 1.1_8
     c(i) = i * 1.2_8
  end do
  m1 = (/(mod(i,3).eq.0,i=1,n)/)
  m2 = (/(mod(i,4).eq.0,i=1,n)/)
  m3 = (/(mod(i,5).eq.0,i=1,n)/)
  call sub(a,b,c,m1,m2,m3,n)
  res = sum(a)
  if (abs(res-ans) .le. error) then
     print *,"ok"
  else
     print *,"ng"
     print *,res,"!=",ans
  endif
end program main
