module m
  implicit none
  integer y
  integer,parameter::x=8
  interface
    module integer(x) function  f()
    end 
  end interface
contains
  module procedure f
    integer y
    y=10
    if (kind(f)/=8) print *,100
    if (x/=8) print *,101
    if (y/=10) print *,102
    f=10
  end procedure
end

use m
y=3
if (f()/=10) print *,201
print *,'pass'
end
