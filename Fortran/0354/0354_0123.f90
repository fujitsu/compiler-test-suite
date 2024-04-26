module inter
  type data
     real :: data1
     real :: data2
  end type data
end module inter

program main
  use inter
  type(data) :: a(10,10)
  complex    :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i)%data1 = real(j)
        a(j,i)%data2 = real(j)
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
    type(data) :: i
    complex    :: ia
    intent(in) :: i
    ia = cmplx(i%data1,i%data2)
  end function ifun
end program main
