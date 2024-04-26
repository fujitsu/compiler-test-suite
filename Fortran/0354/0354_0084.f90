program main
  complex :: a(10)
  real    :: b(10)
  do i=1,10
     a(i) = cmplx(real(i),real(i))
  end do
  b = ifun(a)
  if (b(5) .eq. 5) then
     print *,"OK"
  else
     print *,"NG",b(5)
  end if
contains
  elemental function ifun(i) result(ia)
    complex :: i
    real    :: ia
    intent(in) :: i
    ia=real(i)
  end function ifun
end program main
