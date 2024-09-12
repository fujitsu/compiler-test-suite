subroutine sub03(iarg1,iarg2,iarg3)
  integer :: iarg1,iarg2,iarg3
end subroutine
subroutine sub04(iarg1,iarg2,iarg3,iarg4)
  integer :: iarg1,iarg2,iarg3,iarg4
end subroutine

module mod
interface
  subroutine sub03(iarg1,iarg2,iarg3)
    integer :: iarg1,iarg2,iarg3
  end subroutine
  subroutine sub04(iarg1,iarg2,iarg3,iarg4)
    integer :: iarg1,iarg2,iarg3,iarg4
  end subroutine
end interface
interface bbb
  procedure sub03,sub04
end interface bbb
end module

use mod
call bbb(1,2,3)
call bbb(1,2,3,4)
print *,'pass'
end
