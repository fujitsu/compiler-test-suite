program main
  integer :: a(10)
  integer :: b(10)
  do i=1,10
     a(i) = i
     b(i) = i
  end do
  b = ifun(a,b)
  if (b(5) .eq. 1) then
     print *,"OK"
  else
     print *,"NG",b(5)
  end if
contains
  elemental function ifun(i,j) result(ia)
    real    :: ia
    integer :: i,j
    intent(in) :: i,j
    ia=i/j
  end function ifun
end program main
