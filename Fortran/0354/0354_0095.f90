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
    type(data) :: ia
    complex    :: i
    intent(in) :: i
    ia%data1 = real(i)
    ia%data2 = aimag(i)
  end function ifun
end module mod

program main
  use mod
  complex    :: a(10)
  type(data) :: b(10)
  do i=1,10
     a(i) = cmplx(real(i),real(i)) 
  end do
  b = ifun(a)
  print *,b(5)
end program main
