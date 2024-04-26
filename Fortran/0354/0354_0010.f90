program main
  integer :: a(10,10)
  integer :: b(10,10)
  integer*8 :: i,j
  do i=1,10
     do j=1,10
        a(j,i) = j+i
     end do
  end do
  do i=1,10
     do j=1,10
        b(j,i) = ifun(a(j,i))
     end do
  end do
  do i=1,10
     do j=1,10
        if (a(j,i) .ne. b(j,i)) then
           print *,"NG",j,i,a(j,i),b(j,i)
           stop
        endif
     end do
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    integer :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
