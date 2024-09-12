module mod1
  integer :: a,b,c
  namelist /cc/a,b,c
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

use mod1
use mod6
a=1;b=2;c=3
write(6,cc)
end
