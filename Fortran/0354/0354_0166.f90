module funcs
contains
  subroutine sub()
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
end subroutine sub
elemental impure function ifun(i) result(ia)
  integer :: ia,i
  intent(in) :: i
  print *,i
  entry ifunc_entry(i) result(ia)
  ia=i
end function ifun
end module funcs

program main
  use funcs
  call sub()
end program main
