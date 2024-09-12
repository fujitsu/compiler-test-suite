module mod
integer:: a,b,c
end module

module mod1
use mod,only:a
use mod
private:: a
public:: b,c
contains
subroutine sub
a=1; b=2; c=3
end subroutine
end module

module mod2
use mod,only:b
use mod
private:: a,b
public:: c
contains
subroutine sub1
a=1; b=2; c=3
end subroutine
end module

module mod3
use mod1,only:sub
end module

module mod4
use mod2,only:sub1
end module

use mod3
use mod4
call sub()
call sub1()
print *,'pass'
end
