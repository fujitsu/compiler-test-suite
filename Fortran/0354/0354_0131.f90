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
    type(data)  :: i,j
    character*3 :: ia
    intent(in)  :: i,j
    if (i%data1 .eq. j%data1) then
       ia = "OK"
    else
       ia = "NG"
    end if
  end function ifun
end module mod

program main
  use mod
  type(data)  :: a(10), b(10)
  character*3 :: c(10)
  do i=1,10
     a(i)%data1 = real(i)
     a(i)%data2 = real(i)
     b(i)%data1 = real(i)
     b(i)%data2 = real(i)
  end do
  c = ifun(a,b)
  print *,c(5)
end program main
