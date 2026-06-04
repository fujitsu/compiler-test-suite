module m1
implicit none
 integer,target::t=3
 type y
   integer,pointer::x1=>t
 end type
end
module m2
use m1
 interface
    module function   w()
    class(y),allocatable  :: w
  end 
 end interface
end

submodule (m2) xx
 implicit none
  type(y):: z
contains
 module procedure  w
  allocate(w)
  if (w%x1/=3) print *,201
  if (z%x1/=3) print *,202
end
end

use m2
  type(y)::xv
xv=w()
if (xv%x1/=3) print *,201
print *,'sngg288h : pass'
end
