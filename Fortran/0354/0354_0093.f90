program main
  complex :: a(10,10)
  complex :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = cmplx(real(j),real(j))
     end do
  end do
  b = ifun(a)
  if ((real(b(5,5)) .eq. 5) .and. (aimag(b(5,5)) .eq. 5)) then
     print *,"OK"
  else
     print *,"NG",b(5,5)
  end if
contains
  elemental function ifun(i) result(ia)
    complex :: i
    complex :: ia
    intent(in) :: i
    ia=i
  end function ifun
end program main
