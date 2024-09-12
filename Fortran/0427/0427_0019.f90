module mod0
real a
end

module mod
real b
end module

module mod1
use mod0
use mod
end 

module mod2
use mod0
use mod
public::a,b
end 

use mod2
implicit none
a=1.0
b=2.0
print *,'pass'
end
