module mod
contains
  elemental function ifun(i) result(ia)
    character :: i
    real   :: ia
    intent(in)  :: i
    if (i .eq. "") then
       ia = 1.0
    else
       ia = 0.0
    end if
  end function ifun
end module mod

program main
  use mod
  character :: a(10)
  real      :: b(10)
  do i=1,10
     a(i) = ""
  end do
  b = ifun(a)
  print *,b(5)
end program main
