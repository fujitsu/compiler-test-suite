module m
implicit none
 integer,target::t=13
 type y
   integer,pointer::x1=>t
 end type
 interface
 module function dvt(d)
    type (y):: dvt,d
  end 
 end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  dvt
if (dvt%x1/=13) print *,101
if (d%x1/=13) print *,102
  end 
end

use m
  type(y)::xv,xx
xv=  dvt(xx)
if (xv%x1/=13) print *,2011
if (xx%x1/=13) print *,2012
print *,'sngg235h : pass'
end
