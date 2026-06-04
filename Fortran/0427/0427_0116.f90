function iproc04()
  type str
    sequence
    integer :: iii
  end type
  type(str) :: iproc04
  iproc04%iii = 100
end function

module mod00
    type str
      sequence
      integer :: iii
    end type
end 

module mod
  procedure(func01),pointer :: ppp 
  procedure(func01) :: iproc04
  contains
  function func01()
   use mod00
    type(str) :: func01
  end function
end module
module mod01
  use mod
private:: ppp,str
end module
module mod02
  use mod,only:ppp
end module

module mod03
use mod01
use mod02
end module

use mod03
type str
  sequence
  integer :: iii
end type
type(str) :: sss
ppp=>iproc04
sss = ppp()
if ( sss%iii .ne. 100 ) print *,'fail'
print *,'pass'
end
