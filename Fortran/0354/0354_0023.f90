program main
  integer :: a(10)
  integer :: b(10)
  complex :: c(10)
  do i=1,10
     a(i) = i
     b(i) = i
  end do
  c = ifun(a,b)
  if ((real(c(5)) .eq. 5) .and. (aimag(c(5)) .eq. 5)) then
     print *,"OK"
  else
     print *,"NG",c(5)
  end if
contains
  elemental function ifun(i,j) result(ia)
    complex :: ia
    integer :: i,j
    intent(in) :: i,j
    ia=cmplx(real(i),real(j))
  end function ifun
end program main
