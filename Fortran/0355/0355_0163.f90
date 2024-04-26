subroutine sub(a,b,c,d,e,m,n)
  integer(8),dimension(1:n) :: a,b,c,d,e
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
  integer(8),dimension(1:n) :: a,b,c,d,e
  logical(8),dimension(1:n) :: m
  integer(8) :: res
  integer(8),parameter :: ans =112112775
  a = 0._8
  do i=1,n
     b(i) = i + 1
     c(i) = i + 2
     d(i) = i + 3
     e(i) = i + 4
  end do
  m = (/(mod(i,3).eq.0,i=1,n)/)
  call sub(a,b,c,d,e,m,n)
  res = sum(a)
  if (res .eq. ans) then
     print *,"ok"
  else
     print *,"ng"
     print *,res,"!=",ans
  endif
end program main
