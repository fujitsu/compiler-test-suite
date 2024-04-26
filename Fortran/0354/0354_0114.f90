module inter
  type data
     real :: data1
     real :: data2
  end type data
end module inter

program main
  use inter
  type(data) :: a(10)
  real       :: b(10)
  do i=1,10
     a(i)%data1 = real(i)
     a(i)%data2 = real(i)
  end do
  b = ifun(a)
  if (b(5) .eq. 5) then
     print *,"OK"
  else
     print *,"NG",b(5)
  end if
contains
  elemental function ifun(i) result(ia)
    type(data) :: i
    real       :: ia
    intent(in) :: i
    ia = i%data1
  end function ifun
end program main
