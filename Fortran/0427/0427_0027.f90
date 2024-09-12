module mod0
real a
real b
namelist /aa/a,b
end

module mod
real c
real d
namelist /bb/c,d
private
public:: bb,c,d
end module

module mod1
use mod0
private
end 

module mod2
use mod0
end 

module mod3
use mod2
private
end 

use mod
use mod1
use mod3
implicit none
c=1.0
d=2.0
write(6,bb)
end
