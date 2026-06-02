module m
implicit none
 integer,target::t=13
 type y
   integer,pointer::x1=>t
 end type
 interface
 module function f(dvt)
    type (y):: dvt
  end 
 end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  f
if (dvt%x1/=13) print *,101
f=1
  end 
end

use m
  type(y)::xv
if ( f(xv)/=1) print *,201
if (xv%x1/=13) print *,2011
print *,'sngg237h : pass'
end
