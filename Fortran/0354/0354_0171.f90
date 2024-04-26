program main
  integer :: a(10)
  integer :: b(10)
  a=(/1,2,3,4,5,6,7,8,9,10/)
  b = ifun()

  do i=1,10
     if (1_4 .ne. b(i)) then
        print *,"NG",i
        stop
     endif
  end do
  print *,"OK"
contains
  elemental impure function ifun() result(ia)
  integer :: ia
  ia=a(1)
  end function ifun
end program main
