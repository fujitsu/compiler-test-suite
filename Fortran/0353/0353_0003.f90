subroutine f (n, a, b, index1)
  real(4) :: a(2, n), b(11, n)
  integer :: index1(n)

  do i = 1, n
     ii = index1(i)
     a(2, ii) = a(2, ii) * 2
     b(6, ii) = b(6, ii) * 3
  end do
end subroutine f

program test
  
  real(4) :: a(2, 8), b(11, 8)
  integer :: index1(8) = (/ (i, i=1,8) /)
  a = 3
  b = 2

  call f (8, a, b, index1)

  success=1

  do i = 1, 8
     if (.not. (((a(2, 8) < 6 + 0.1) .and. (6 - 0.1 < a(2, 8))))) then
        success=0
     end if
  end do

  if (success .eq. 1) then
     print *, "OK"
  else
     print *, "NG"
  end if
end program test

