module mod
contains
  elemental function ifun(i) result(ia)
    real :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end module mod

program main
  use mod
  real :: a(10)
  real :: b(10)
  do i=1,10
     a(i) = real(i)
  end do
  b = ifun(a)
  print *,b
end program main
