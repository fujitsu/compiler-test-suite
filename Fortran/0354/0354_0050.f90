module mod
contains
  elemental function ifun(i) result(ia)
    real     :: i
    integer  :: ia
    intent(in) :: i
    ia=int(i)
  end function ifun
end module mod

program main
  use mod
  real    :: a(10,10)
  integer :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = j * 1.1
     end do
  end do
  b = ifun(a)
  print *,b(5,5)
end program main
