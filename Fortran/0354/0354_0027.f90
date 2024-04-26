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
  type(str) :: xxx(10,10),yyy(10,10)
  integer*8 :: i,j
  do i=1,10
     do j=1,10
        xxx(j,i)%value = j+i
     end do
  end do
  do i=1,10
     do j=1,10
        yyy(j,i) = ifun(xxx(j,i))
     end do
  end do
  do i=1,10
     do j=1,10
        if (xxx(j,i)%value .ne. yyy(j,i)%value) then
           print *,"NG",j,i,xxx(j,i),yyy(j,i)
           stop
        endif
     end do
  end do
  print *,"OK"
end program main
