module inter
  type data
     real :: data1
     real :: data2
  end type data
end module inter

module mod
  use inter
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
end module mod

program main
  use mod
  character :: a(10)
  character*3 :: b(10)
  do i=1,10
     a(i) = ""
  end do
  b = ifun(a)
  print *,b(5)
end program main
