module test_mod
contains
  recursive subroutine f1(f1a, num)
    integer(kind=4),intent(in) :: num
    real(kind=8),value :: f1a
    real(kind=8),save :: f3a/0._8/

    call f2(num)
    if ( num .eq. 1_4 ) then
       if ( f1a .ne. 3.0_8 .or. f3a .ne. 35.0_8 ) then
          print *, "NG"
       endif
    endif
  contains
    subroutine f2(num)
      integer(kind=4) :: num
      f1a = f1a + 2._8
      f3a = f3a + f1a
      if (num .le. 4_4) then
         call f1(f1a, num+1_4)
      endif
    end subroutine f2
  end subroutine f1

  recursive subroutine f3(f1a, num)
    integer(kind=4),intent(in) :: num
    real(kind=8) :: f1a
    real(kind=8),save :: f3a/0._8/

    call f2(num)
    if ( num .eq. 1_4 ) then
       if ( f1a .ne. 11.0_8 .or. f3a .ne. 35.0_8 ) then
          print *, "NG"
       endif
    endif
  contains
    subroutine f2(num)
      integer(kind=4) :: num
      f1a = f1a + 2._8
      f3a = f3a + f1a
      if (num .le. 4_4) then
         call f3(f1a, num+1_4)
      endif
    end subroutine f2
  end subroutine f3
end module test_mod

program main
  use test_mod
  real(kind=8) :: f1a/1._8/
  call f1(f1a, 1_4)
  call f3(f1a, 1_4)
  print *, "OK"
end program main
