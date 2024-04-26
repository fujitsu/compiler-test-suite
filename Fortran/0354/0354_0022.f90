module mod
  type str
     integer*8 :: value
  end type str
contains
  elemental function ifun(i) result(ia)
    type(str) :: ia,i
    intent(in) :: i
    ia%value =i%value
  end function ifun
end module mod

program main
  use mod
  type(str) :: xxx(10),yyy(10)
  integer*8 :: i
  do i=1,10
     xxx(i)%value = i
  end do
  do i=1,10
     yyy(i) = ifun(xxx(i))
  end do
  do i=1,10
     if (xxx(i)%value .ne. yyy(i)%value) then
        print *,"NG",i,xxx(i),yyy(i)
        stop
     endif
  end do
  print *,"OK"
end program main
