module mod
contains
  elemental function ifun(i) result(ia)
    character*5 :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end module mod

program main
  use mod
  character*5 :: xxx(10,10), yyy(10,10)
  integer*8 :: i,j
  do i=1,10
     do j=1,10
        xxx(j,i) = "abcd"
     end do
  end do
  do i=1,10
     do j=1,10
        yyy(j,i) = ifun(xxx(j,i))
     end do
  end do
  do i=1,10
     do j=1,10
        if (xxx(j,i) .ne. yyy(j,i)) then
           print *,"NG",j,i,xxx(j,i),yyy(j,i)
           stop
        endif
     end do
  end do
  print *,"OK"
end program main
