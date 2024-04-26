program main
  character :: a(10)
  character*3 :: b(10)
  do i=1,10
     a(i) = ""
  end do
  b = ifun(a)
  print *,b(5)
contains
  elemental function ifun(i) result(ia)
    character :: i
    character*3 :: ia
    intent(in)  :: i
    if (i .eq. "") then
       ia = "OK"
    else
       ia = "NG"
    end if
  end function ifun
end program main
