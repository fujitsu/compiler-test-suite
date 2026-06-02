function xxx(arg1) result(ret)
  real :: arg1,ret
  ret = arg1
end function
function yyy(arg1) result(ret)
  real :: arg1,ret
  ret = arg1*2
end function
use mod2
intrinsic:: sin
procedure(sin):: xxx
if ( 1.0 .ne. xxx(1.0)) print *,'fail'
if ( 2.0 .ne. yyy(1.0)) print *,'fail'
call sub01()
call sub02()
print *,'pass '
end

module mod
  intrinsic:: sin
  procedure(sin):: xxx
end

subroutine sub01
  use mod
  procedure(sin):: yyy
  if ( 2.0 .ne. yyy(1.0)) print *,'fail'
end

subroutine sub02
use mod,only: ddd=>sin
procedure(ddd):: xxx
if ( 1.0 .ne. xxx(1.0)) print *,'fail'
end

module mod1
use mod,only: ssss=>sin
end module

module mod2
use mod1
procedure(ssss):: yyy
end module
