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
  type(data) :: a(10,10), b(10,10)
  do i=1,10
     do j=1,10
        a(j,i)%data1 = real(j)
        a(j,i)%data2 = real(j)
     end do
  end do
  b = ifun(a)
  print *,b(5,5)
end program main
