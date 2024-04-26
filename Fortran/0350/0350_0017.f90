module test_mod
contains
  subroutine f1(f1a)
    integer(kind=4),value :: f1a

    call f2(1)
    if ( f1a .ne. 11_4 ) then
       print *, "NG"
    endif
  contains
    recursive subroutine f2(num)
      integer(kind=4) :: num
      f1a = f1a + 2_4
      if (num .le. 4) then
         call f2(num+1)
      endif
    end subroutine f2
  end subroutine f1

  subroutine f3(f1a)
    integer(kind=4) :: f1a

    call f2(1)
    if ( f1a .ne. 11_4 ) then
       print *, "NG"
    endif
  contains
    recursive subroutine f2(num)
      integer(kind=4) :: num
      f1a = f1a + 2_4
      if (num .le. 4) then
         call f2(num+1)
      endif
    end subroutine f2
  end subroutine f3
end module test_mod

program main
  use test_mod

  integer(kind=4) :: f1a/1_4/
  call f1(f1a)
  call f3(f1a)
  print *, "OK"
end program main
