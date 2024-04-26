module mod
contains
  elemental function ifun(i,j) result(ia)
    complex :: ia
    real :: i,j
    intent(in) :: i,j
    ia=cmplx(i,j)
  end function ifun
end module mod

program main
  use mod
  real :: a(10)
  real :: b(10)
  complex :: c(10)
  do i=1,10
     a(i) = real(i)
     b(i) = real(i)
  end do
  c = ifun(a,b)
  print *,c(5)
end program main
