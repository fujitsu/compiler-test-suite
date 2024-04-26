program main
  integer :: a(10,10)
  integer :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = i + j
     end do
  end do
  b = ifun(a)
  if (b(2,5) .eq. 7) then
     print *,"OK"
  else
     print *,"NG",b(2,5)
  end if
contains
  elemental function ifun(i) result(ia)
    integer :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
