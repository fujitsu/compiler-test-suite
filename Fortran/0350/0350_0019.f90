module test_mod
contains
  recursive subroutine f1(num)
    integer(kind=4) :: num
    real(kind=8) :: f1a, f2a
    real(kind=8),save :: f3a/0._8/
    equivalence(f1a, f2a)

    f1a = 1._8
    call f2(num)
    if ( num .eq. 1_4 ) then
       if ( f2a .eq. 3.0_8 .and. f3a .eq. 15.0_8 ) then
          print *, "OK"
       else
          print *, "NG"
       endif
    endif
  contains
    subroutine f2(num)
      integer(kind=4) :: num
      f1a = f1a + 2._8
      f3a = f3a + f1a
      if (num .le. 4_4) then
         call f1(num+1)
      endif
    end subroutine f2
  end subroutine f1
end module test_mod

program main
  use test_mod
  call f1(1_4)
end program main
