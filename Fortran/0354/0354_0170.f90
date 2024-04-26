program main
  character*5 :: xxx(10)
  type str
     character*5 :: zzz
  end type str
  type (str) :: yyy(10)
  integer*8 :: i

  do i=1,10
     xxx(i) = "abcd"
  end do
  yyy = ifun(xxx)
  do i=1,10
     if (xxx(i) .ne. yyy(i)%zzz) then
        print *,"NG",i,xxx(i),yyy(i)%zzz
        stop
     endif
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    character*5 :: i
    type(str)   :: ia
    intent(in) :: i
    ia%zzz=i
  end function ifun
end program main
