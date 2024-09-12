module mod0
type TY1
 integer:: i
end type
end module

module mod
use mod0
type(TY1):: a
type(TY1):: b
namelist /aa/a,b
end

module mod1
use mod0
type(TY1):: c
type(TY1):: d
namelist /bb/c,d
end module

module mod2
use mod
private
end 

module mod3
use mod1
private
end 

module mod4
use mod2
end 

module mod5
use mod3
end 

use mod,only:a,b
use mod1,only:c,d
use mod4
use mod5
implicit none
namelist /xxx/a,b
namelist /yyy/c,d
a%i=1.0
b%i=2.0
c%i=3.0
d%i=4.0
write(6,xxx)
write(6,yyy)
end
