module mod1
  integer :: cc
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
cc= 1.0
call sub()
end

subroutine sub
use mod6
implicit none
cc= 1.0
print *,'pass'
end
