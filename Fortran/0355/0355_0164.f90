subroutine sub(a,b,m,n)
  logical(8),dimension(1:n) :: a,b
  logical(8),dimension(1:n) :: m
  do i=1,n
     if (m(i)) then
        a(i) = b(i)
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  integer(8) :: i
  logical(8),dimension(1:n) :: a,b
  logical(8),dimension(1:n) :: m
  a = .false.
  b = (/(mod(i,2).eq.0,i=1,n)/)
  m = (/(mod(i,3).eq.0,i=1,n)/)
  call sub(a,b,m,n)
  if (a(6)) then
     print *,"ok"
  else
     print *,"ng",a(6)
  end if
end program main
