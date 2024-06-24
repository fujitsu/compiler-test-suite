module inter 
  type data
     real :: data1
     real :: data2
  end type data
end module inter

program main
  use inter
  type(data)  :: a(10,10), b(10,10)
  character*3 :: c(10,10)
  do i=1,10
     do j=1,10
        a(j,i)%data1 = real(j)
        a(j,i)%data2 = real(j)
        b(j,i)%data1 = real(j)
        b(j,i)%data2 = real(j)
     end do
  end do
  c = ifun(a,b)
  print *,c(5,5)
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
end program main