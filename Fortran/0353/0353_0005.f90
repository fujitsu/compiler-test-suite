subroutine f (a, index1)
  real(4) :: a(8)
  integer :: index1(8)

  do i = 1, 8
     ii = index1(i)
     a(ii) = sin(a(ii))
  end do
end subroutine f

program test
  
  real(4) :: a(8) = 0
  integer :: index1(8) = (/ (i, i=1,8) /)

  call f (a, index1)
  success=1

  do i = 1, 8
     if (.not. (((a(i) < 0 + 0.1) .and. (0 - 0.1 < a(i))))) then
        success=0
     end if
  end do

  if (success .eq. 1) then
     print *, "OK"
  else
     print *, "NG"
  end if
end program test

