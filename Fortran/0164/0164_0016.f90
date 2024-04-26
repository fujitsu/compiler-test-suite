module mod1
  integer :: cc=2
end

module mod2
  integer :: aa
end

module mod3
  use mod2,only:aa
  use mod1,only:cc
end module
       
module mod4
  use mod2,only:aa
  use mod1,only:cc
end module
       
module mod5
  use mod3,only:aa
  use mod4,only:aa
  use mod4
  private :: aa
  public
end module

module mod6
  use mod5
end module

use mod6
cc=cc+ 1.0
call sub1
print *,'pass'
end

subroutine sub1
use mod1
if (abs(cc-3)>0.0001) print *,201,cc
end
