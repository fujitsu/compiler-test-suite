module data
  integer*8,parameter::zzz=0
end module data

program main
  character*5 :: xxx(10,10), yyy(10,10)
  integer*8 :: i,j
  do i=1,10
     do j=1,10
        xxx(j,i) = "abcd"
     end do
  end do
  yyy = ifun(xxx)
  do i=1,10
     do j=1,10
        if (xxx(j,i) .ne. yyy(j,i)) then
           print *,"NG",j,i,xxx(j,i),yyy(j,i)
           stop
        endif
     end do
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    use data
    character*5 :: ia,i
    intent(in) :: i
    ia=i
  end function ifun
end program main
