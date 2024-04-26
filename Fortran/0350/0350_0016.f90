module test_mod
contains
  subroutine f1()
    integer(kind=4) :: f1a, f2a
    equivalence(f1a, f2a)

    f1a = 1_4
    call f2(1)
    if ( f2a .eq. 11_4 ) then
       print *, "OK"
    else
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
end module test_mod

program main
  use test_mod
  call f1()
end program main
