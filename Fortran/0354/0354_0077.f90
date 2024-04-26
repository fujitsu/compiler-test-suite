module mod
contains
  elemental function ifun(i) result(ia)
    complex :: i
    integer :: ia
    intent(in) :: i
    ia=int(real(i))
  end function ifun
end module mod

program main
  use mod
  complex :: a(10)
  integer :: b(10)
  do i=1,10
     a(i) = cmplx(real(i),real(i))
  end do
  b = ifun(a)
  print *,b(5)
end program main
