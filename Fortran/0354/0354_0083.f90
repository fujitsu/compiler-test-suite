module mod
contains
  elemental function ifun(i) result(ia)
    complex :: i
    real    :: ia
    intent(in) :: i
    ia=real(i)
  end function ifun
end module mod

program main
  use mod
  complex :: a(10)
  real    :: b(10)
  do i=1,10
     a(i) = cmplx(real(i),real(i))
  end do
  b = ifun(a)
  print *,b(5)
end program main
