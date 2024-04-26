module mod1
  type T1
    integer:: i
  end type
end

module mod2
  integer :: aa
end

module mod3
  use mod2,only:aa
  use mod1,only:T1
end module
       
module mod4
  use mod2,only:aa
  use mod1,only:T1
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
implicit none
type (T1):: ta
ta%i=1
if (ta%i.ne.1) print *,101
print *,'pass'
end
