module mod
integer(kind=4), parameter:: c_int=4
end 

module mod1
use mod
integer(kind=c_int)::a
integer(kind=c_int)::b
end 

module mod2
use mod1
private
public::b
end

use mod2,only:b
implicit none
b=100
print *,b
end
