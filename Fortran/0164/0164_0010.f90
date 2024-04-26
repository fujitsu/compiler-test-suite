module mod1
  integer :: a=1,b=2,c=3
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

use mod6
write(1,cc)
call chk
print *,'pass'
end

subroutine chk
  integer :: a,b,c
  namelist /cc/a,b,c
rewind 1
 read(1,cc) 
if (a/=1) print *,201
if (b/=2) print *,202
if (c/=3) print *,203
end
