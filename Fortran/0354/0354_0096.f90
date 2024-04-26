module inter
  type data
     real :: data1
     real :: data2
  end type data
end module inter

program main
  use inter
  complex    :: a(10)
  type(data) :: b(10)
  do i=1,10
     a(i) = cmplx(real(i),real(i))
  end do
  b = ifun(a)
  if ((b(5)%data1 .eq. 5) .and. (b(5)%data2 .eq. 5)) then
     print *,"OK"
  else
     print *,"NG",b(5)
  end if
contains
  elemental function ifun(i) result(ia)
    type(data) :: ia
    complex    :: i
    intent(in) :: i
    ia%data1 = real(i)
    ia%data2 = aimag(i)
  end function ifun
end program main
