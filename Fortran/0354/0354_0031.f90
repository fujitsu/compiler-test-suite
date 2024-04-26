module inter 
  type data
     integer :: data1
     integer :: data2
  end type data
end module inter

module mod
  use inter
contains
  elemental function ifun(i,j) result(ia)
    type(data) :: ia
    integer    :: i,j
    intent(in) :: i,j
    ia%data1 = i
    ia%data2 = j
  end function ifun
end module mod

program main
  use mod
  integer    :: a(10)
  integer    :: b(10)
  type(data) :: c(10)
  do i=1,10
     a(i) = i 
     b(i) = i
  end do
  c = ifun(a,b)
  print *,c(5)
end program main
