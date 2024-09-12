module mod0
real a
end

module mod
real b
end module

module mod1
use mod0
use mod
private a
end 

module mod2
use mod0
use mod
private b
end 

use mod1
use mod2
implicit none
a=1.0
b=2.0
print *,'pass'
end
