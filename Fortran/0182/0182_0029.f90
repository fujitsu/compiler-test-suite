module m
  implicit none
  integer y
  integer::x=4
  interface
    character(x) module function  f()
    end 
  end interface
contains
  module procedure f
    integer y
    y=10
    if (f%len/=4) print *,100
    if (x/=4) print *,101
    if (y/=10) print *,102
    f='1234567'
  end procedure
end

use m
y=3
if (f()/='1234') print *,201
print *,'pass'
end
