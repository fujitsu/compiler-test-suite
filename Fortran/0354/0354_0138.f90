program main
  character :: a(10)
  integer   :: b(10)
  do i=1,10
     a(i) = ""
  end do
  b = ifun(a)
  if (b(5) .eq. 1) then
     print *,"OK"
  else
     print *,"NG",b(5)
  end if
contains
  elemental function ifun(i) result(ia)
    character :: i
    integer   :: ia
    intent(in)  :: i
    if (i .eq. "") then
       ia = 1
    else
       ia = 0
    end if
  end function ifun
end program main
