module inter
  type data
     integer :: data1
     integer :: data2
  end type data
end module inter

program main
  use inter
  type(data) :: a(10,10)
  integer    :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i)%data1 = j
        a(j,i)%data2 = j
     end do
  end do
  b = ifun(a)
  if (b(5,5) .eq. 5) then
     print *,"OK"
  else
     print *,"NG",b(5,5)
  end if
contains
  elemental function ifun(i) result(ia)
    type(data) :: i
    integer    :: ia
    intent(in) :: i
    ia = i%data1
  end function ifun
end program main
