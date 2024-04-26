module inter
  type data
     real :: data1
     real :: data2
  end type data
end module inter

program main
  use inter
  real    :: a(10)
  real    :: b(10)
  type(data) :: c(10)
  do i=1,10
     a(i) = real(i)
     b(i) = real(i)
  end do
  c = ifun(a,b)
  if ((c(5)%data1 .eq. 5) .and. (c(5)%data2 .eq. 5)) then
     print *,"OK"
  else
     print *,"NG",c(5)
  end if
contains
  elemental function ifun(i,j) result(ia)
    type(data) :: ia
    real    :: i,j
    intent(in) :: i,j
    ia%data1 = i
    ia%data2 = j
  end function ifun
end program main
