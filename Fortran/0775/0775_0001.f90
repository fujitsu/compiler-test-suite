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
use mod
public:: aa,bb
end 

use mod1
implicit none
a=1.0
b=2.0
c=3.0
d=4.0
write(6,aa)
write(6,bb)
end
