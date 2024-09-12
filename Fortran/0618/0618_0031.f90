module mod
integer operator
end module

module mod1
type operator
  real a
end type
end module

module mod2
real,external:: operator
end module

module mod3
contains
function operator()
end function
end module

module mod4
use mod1,only:operator
end module

module mod5
use mod2,only:operator
end module

module mod6
use mod3,only:op1=>operator
end module

use mod,only:operator
print *,'pass'
end

real function operator()
end function

