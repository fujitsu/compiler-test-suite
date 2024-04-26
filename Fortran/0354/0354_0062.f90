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
  real :: a(10,10)
  real :: b(10,10)
  complex :: c(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = real(j)
        b(j,i) = real(j)
     end do
  end do
  c = ifun(a,b)
  print *,c(5,5)
end program main
