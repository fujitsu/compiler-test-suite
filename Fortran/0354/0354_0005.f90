program main
  integer :: a(10)
  integer :: b(10)
  integer*8 :: i
  a=(/1,2,3,4,5,6,7,8,9,10/)
  do i=1,10
     b(i) = ifun(a(i))
  end do
  do i=1,10
     if (a(i) .ne. b(i)) then
        print *,"NG",i,a(i),b(i)
        stop
     endif
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    integer :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
