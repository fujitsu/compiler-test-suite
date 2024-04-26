subroutine sub(n)
  integer n
  real(8),dimension(1:10) :: a

  do i=1,n
    a(i) = i
  enddo

  print *,a
end subroutine

program main
  integer n
  n = 10
  call sub(n)
end
