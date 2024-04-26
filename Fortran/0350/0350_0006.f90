module type_mod
  type tt1
     integer(kind=4) :: tt1a = 2_4
  end type tt1
end module type_mod
subroutine f1(f1a, f1b)
  use type_mod
  integer(kind=4),dimension(1:100) :: f1a
  type(tt1) :: f1b

  do i=1,100
     f1a(i) = f1a(i) + f1b%tt1a
  enddo

  do i=1,100
     if ( f1a(i) .ne. 3_4 ) then
        print *, "NG"
     endif
  end do
end subroutine f1

program main
  use type_mod
  integer(kind=4),dimension(1:100) :: m1a
  type(tt1) :: m1b
  m1a = 1_4
  call f1(m1a, m1b)
  print *, "OK"
end program main
