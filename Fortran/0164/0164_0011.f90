module mod1
  intrinsic:: sin
end

module mod2
  integer :: aa
end

module mod3
  use mod2,only:aa
  use mod1,only:sin
end module
       
module mod4
  use mod2,only:aa
  use mod1,only:sin
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
if (abs(sin(0.1)-f())>0.001) print *,203
print *,'pass'
end

function f()
f=sin(.1)
end
