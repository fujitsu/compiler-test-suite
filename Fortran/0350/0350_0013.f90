module type_mod
  type tt1
     real(kind=8) :: tr1 = 0._8, tr2 = 1._8
     integer(kind=8) :: ti1 = 0_8, ti2 = 1_8
  end type tt1
end module type_mod

module test_mod
contains
  subroutine f1(f1a)
    integer(kind=4),value :: f1a

    call f2()
    if ( f1a .ne. 3_4 ) then
       print *, "NG"
    endif
  contains
    subroutine f2()
      f1a = f1a + 2_4
    end subroutine f2
  end subroutine f1
  subroutine f3(f3a)
    use type_mod
    type(tt1),value :: f3a

    call f4()
    if ( f3a%tr1 .ne. 3._8 .or. f3a%ti1 .ne. 3_8 ) then
       print *, "NG"
    endif
  contains
    subroutine f4()
      f3a%tr1 = f3a%tr2 + 2._8
      f3a%ti1 = f3a%ti2 + 2_8
    end subroutine f4
  end subroutine f3
end module test_mod

program main
  use type_mod
  use test_mod
  integer(kind=4) :: m1a/1_4/
  type(tt1) :: m2a
  call f1(m1a)
  call f3(m2a)
  print *, "OK"
end program main
