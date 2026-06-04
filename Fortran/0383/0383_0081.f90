function iproc04()
  type str
    sequence
    integer :: iii
  end type
  type(str) :: iproc04
  iproc04%iii = 100
end function

module mod
  interface
  function xfunc01()
    type str
      sequence
      integer :: iii
    end type
    type(str) :: xfunc01
  end function
  end interface
end module
module mod01
  use mod
  procedure(xfunc01),pointer :: ppp
  procedure(xfunc01) :: iproc04
end module
use mod01
type str
  sequence
  integer :: iii
end type
type(str) :: sss
ppp=>iproc04
sss = ppp()
if ( sss%iii .ne. 100 ) print *,'fail'
print *,'ok'
end
