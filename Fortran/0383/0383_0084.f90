function iproc04(arg1)
  integer:: iproc04
  integer:: arg1
  iproc04 = 100
end function

module mod
  interface
  function xfunc01(arg1)
    integer :: xfunc01
    integer :: arg1
  end function
  end interface
end module
module mod01
  use mod
  procedure(xfunc01),pointer :: ppp
  procedure(xfunc01) :: iproc04
end module
use mod01
integer :: iii
ppp=>iproc04
iii = ppp(11)
if ( iii .ne. 100 ) print *,'fail'
print *,'ok'
end
