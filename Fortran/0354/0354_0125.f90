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
    type(data) :: i,ia
    intent(in) :: i
    ia%data1 = i%data1
    ia%data2 = i%data2 
  end function ifun
end module mod

program main
  use mod
  type(data) :: a(10), b(10)
  do i=1,10
     a(i)%data1 = real(i)
     a(i)%data2 = real(i)
  end do
  b = ifun(a)
  print *,b(5)
end program main
