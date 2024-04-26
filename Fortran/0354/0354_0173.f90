program main
  integer :: a(10)
  integer :: b(10)
  a=(/1,2,3,4,5,6,7,8,9,10/)
  b = ifun(a) + ifun2(a)
  do i=1,10
     if (a(i)*2 .ne. b(i)) then
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
  elemental function ifun2(i) result(ia)
    integer :: ia,i
    intent(in) :: i
    ia=i
  end function ifun2
end program main
