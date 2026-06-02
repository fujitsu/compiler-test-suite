module m
implicit none
 integer,target::t=13
 type y
   integer,pointer::x1=>t
 end type
 interface
 module subroutine f(dvt)
    type (y):: dvt
  end 
 end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  f
if (dvt%x1/=13) print *,101
  end 
end

use m
  type(y)::xv
call f (xv)
if (xv%x1/=13) print *,2011
print *,'sngg238h : pass'
end
