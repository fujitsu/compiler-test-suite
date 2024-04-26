module data
  integer*8 :: zzz=0
end module data

program main
  type str
     integer*8 :: value
  end type str
  type(str) :: xxx(10,10),yyy(10,10)
  integer*8 :: i,j

  do i=1,10
     do j=1,10
        xxx(j,i)%value = j+i
     end do
  end do

  yyy = ifun(xxx)

  do i=1,10
     do j=1,10
        if (xxx(j,i)%value .ne. yyy(j,i)%value) then
           print *,"NG",i,xxx(j,i),yyy(j,i)
           stop
        endif
     end do
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    use data
    type(str) :: ia,i
    intent(in) :: i
    ia%value =i%value+zzz
  end function ifun
end program main
