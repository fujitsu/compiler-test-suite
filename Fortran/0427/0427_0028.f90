module mod0
real a
real b
namelist /aa/a,b
end

module mod
real c
real d
namelist /bb/c,d
end module

module mod1
use mod0
private
end 

module mod2
use mod
private
end 

module mod3
use mod0,xxx=>aa
end 

module mod4
use mod,yyy=>bb
end 

use mod1
use mod2
use mod3
use mod4
implicit none
a=1.0
b=2.0
c=3.0
d=4.0
write(6,xxx)
write(6,yyy)
end
