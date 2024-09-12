subroutine sub01(iarg1)
  integer :: iarg01
end subroutine
subroutine sub02(iarg1,iarg2)
  integer :: iarg01,iarg02
end subroutine
subroutine sub03(iarg1,iarg2,iarg3)
  integer :: iarg01,iarg02,iarg03
end subroutine
subroutine sub04(iarg1,iarg2,iarg3,iarg4)
  integer :: iarg01,iarg02,iarg03,iarg04
end subroutine

interface ccc
  subroutine sub01(iarg1)
    integer :: iarg1
  end subroutine
end interface
interface ccc
  subroutine sub02(iarg1,iarg2)
    integer :: iarg1,iarg2
  end subroutine
end interface

interface
  subroutine sub03(iarg1,iarg2,iarg3)
    integer :: iarg1,iarg2,iarg3
  end subroutine
end interface
interface
  subroutine sub04(iarg1,iarg2,iarg3,iarg4)
    integer :: iarg1,iarg2,iarg3,iarg4
  end subroutine
end interface

interface aaa
  procedure sub01,sub02,sub03,sub04
end interface

call aaa(1)
call aaa(1,2)
call aaa(1,2,3)
call aaa(1,2,3,4)
call ccc(1)
call ccc(1,2)
print *,'pass'
end
