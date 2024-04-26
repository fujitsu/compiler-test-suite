program main
  real :: a(10)
  real :: b(10)
  complex :: c(10)
  do i=1,10
     a(i) = real(i)
     b(i) = real(i)
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
    real :: i,j
    intent(in) :: i,j
    ia=cmplx(i,j)
  end function ifun
end program main
