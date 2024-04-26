subroutine sub(a,b,c,m,n)
  real(8),dimension(1:n) :: a,b,c
  logical(8),dimension(1:n) :: m
  do i=1,n
     if (m(i)) then
        a(i) = b(i) / c(i)
     endif
  enddo
end subroutine sub

program main
  integer,parameter :: n=1000
  integer(8) :: i
  real(8),dimension(1:n) :: a,b,c
  logical(8),dimension(1:n) :: m
  a = 0._8
  c = 0._8
  do i=1,n
     b(i) = i * 1.2_8
  end do
  m = (/(mod(i,3).eq.0,i=1,n)/)
  call sub(a,b,c,m,n)
  print *,"ok"
end program main
