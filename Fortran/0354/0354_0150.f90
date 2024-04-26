program main
  character :: a(10)
  complex   :: b(10)
  do i=1,10
     a(i) = ""
  end do
  b = ifun(a)
  if ((real(b(5)) .eq. 1) .and. (aimag(b(5)) .eq. 1)) then
     print *,"OK"
  else
     print *,"NG",b(5)
  end if
contains
  elemental function ifun(i) result(ia)
    character :: i
    complex   :: ia
    intent(in)  :: i
    if (i .eq. "") then
       ia = cmplx(1.0,1.0)
    else
       ia = cmplx(0.0,0.0)
    end if
  end function ifun
end program main
