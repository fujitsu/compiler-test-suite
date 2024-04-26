program main
  character*5 :: xxx(10), yyy(10)
  integer*8 :: i
  do i=1,10
     xxx(i) = "abcd"
  end do
  yyy = ifun(xxx)
  do i=1,10
     if (xxx(i) .ne. yyy(i)) then
        print *,"NG",i,xxx(i),yyy(i)
        stop
     endif
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    character*5 :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
