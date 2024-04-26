module mod
contains
  elemental function ifun(i) result(ia)
    complex :: i
    complex :: ia
    intent(in) :: i
    ia=i
  end function ifun
end module mod

program main
  use mod
  complex :: a(10,10)
  complex :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = cmplx(real(j),real(j))
     end do
  end do
  b = ifun(a)
  print *,b(5,5)
end program main
