module mod
contains
  elemental function ifun(i,j) result(ia)
    complex :: ia
    integer :: i,j
    intent(in) :: i,j
    ia=cmplx(real(i),real(j))
  end function ifun
end module mod

program main
  use mod
  integer :: a(10,10)
  integer :: b(10,10)
  complex :: c(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = i 
        b(j,i) = j
     end do
  end do
  c = ifun(a,b)
  print *,c(5,5)
end program main
