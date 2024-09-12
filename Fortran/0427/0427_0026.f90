module mod0
real a
real b
namelist /aa/a,b
private
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
use mod
end 

use mod1
implicit none
c=1.0
d=2.0
write(6,bb)
end
