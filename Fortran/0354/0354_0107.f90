module inter 
  type data
     integer :: data1
     integer :: data2
  end type data
end module inter

module mod
  use inter
contains
  elemental function ifun(i) result(ia)
    type(data) :: i
    integer    :: ia
    intent(in) :: i
    ia = i%data1
  end function ifun
end module mod

program main
  use mod
  type(data) :: a(10)
  integer    :: b(10)
  do i=1,10
     a(i)%data1 = i
     a(i)%data2 = i
  end do
  b = ifun(a)
  print *,b(5)
end program main
