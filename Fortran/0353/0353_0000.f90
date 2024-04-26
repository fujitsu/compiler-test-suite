subroutine f (n, a, b, m, index1)
  real(4), dimension(8, n) :: a
  real(4), dimension(n, n) :: b
  integer :: m
  integer :: index1(n)

  do i = 1, n
     ii = index1(i)
     a(ii, m) = a(ii, m) * 2
     b(ii, m) = b(ii, m) * 3
  end do
end subroutine f

program test
  
  real(4), dimension(8, 8) :: a, b
  integer :: index1(8)
  a = 2
  b = 3
  index1 = 1

  call f (8, a, b, 2, index1)
  
  if ((a(1, 2) < 2 ** (8 + 1) + 0.1) .and. (2 ** (8 + 1) - 0.1 < a(1, 2))) then
     print *, "OK"
  else
     print *, "NG"
  end if
end program test

