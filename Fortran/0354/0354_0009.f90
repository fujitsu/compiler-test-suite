module data
  integer*8,parameter :: xxx = 0
end module data

program main
  integer :: a(10)
  integer :: b(10)
  a=(/1,2,3,4,5,6,7,8,9,10/)
  b = ifun(a)

  do i=1,10
     if (a(i) .ne. b(i)) then
        print *,"NG",i,a(i),b(i)
        stop
     endif
  end do
  print *,"OK"
contains
  elemental function ifun(i) result(ia)
    use data
    integer :: ia,i
    intent(in) :: i
    ia=i+xxx
  end function ifun
end program main
