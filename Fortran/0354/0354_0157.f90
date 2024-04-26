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
    character   :: i
    type(data) :: ia
    intent(in)  :: i
    if (i .eq. "") then
       ia%data1 = 1.0
       ia%data2 = 1.0
    else
       ia%data1 = 0.0
       ia%data2 = 0.0
    end if
  end function ifun
end module mod

program main
  use mod
  character  :: a(10,10)
  type(data) :: b(10,10)
  do i=1,10
     do j=1,10
        a(j,i) = ""
     end do
  end do
  b = ifun(a)
  print *,b(5,5)
end program main
