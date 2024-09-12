module mod1
  integer :: cc
contains
  real function  fun()
     fun=1.0
  end function
end

module mod2
  integer :: aa
end

module mod3
  use mod2,only:aa
  use mod1,only:fun
end module

module mod4
  use mod2,only:aa
  use mod1,only:fun
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
print *,fun()
end

real function fun()
fun=2.0
end  function
