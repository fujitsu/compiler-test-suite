module inter 
  type data
     real :: data1
     real :: data2
  end type data
end module inter

module mod
  use inter
contains
  elemental function ifun(i,j) result(ia)
    type(data) :: ia
    real    :: i,j
    intent(in) :: i,j
    ia%data1 = i
    ia%data2 = j
  end function ifun
end module mod

program main
  use mod
  real    :: a(10)
  real    :: b(10)
  type(data) :: c(10)
  do i=1,10
     a(i) = real(i) 
     b(i) = real(i)
  end do
  c = ifun(a,b)
  print *,c(5)
end program main
