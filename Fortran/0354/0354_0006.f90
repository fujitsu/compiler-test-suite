module mod
contains
  elemental function ifun(i) result(ia)
    integer :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end module mod

program main
  use mod
  integer :: a(10,10)
  integer :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = i + j
     end do
  end do
  b = ifun(a)
  print *,b(2,5)
end program main
