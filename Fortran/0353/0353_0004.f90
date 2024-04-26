subroutine f (n, m, a, index1)
  real(4), dimension(n, n) :: a
  integer :: index1(n)

  do i = 1, n
     ii = index1(i)
     a (ii, m) = 3
  end do
end subroutine f

program test
  
  real(4) :: a(9, 9)
  integer :: index1(9) = (/ (i, i=1,9) /)
  a = -100

  call f (9, 2, a, index1)

  success=1

  do i = 1, 9
     if (.not. (((a(i, 2) < 3 + 0.1) .and. (3 - 0.1 < a(i, 2))))) then
        success=0
     end if
  end do

  if (success .eq. 1) then
     print *, "OK"
  else
     print *, "NG"
  end if
end program test

