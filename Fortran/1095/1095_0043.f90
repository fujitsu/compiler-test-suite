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
    module subroutine  w()
  end 
 end interface
end

submodule (m2) xx
 implicit none
  type(y):: z1,z2
contains
 module procedure  w
  type(y):: z3
  if (z1%x1/=3) print *,201
  if (z2%x1/=3) print *,202
  if (z3%x1/=3) print *,203
 end
end

use m2
call w
print *,'sngg289h : pass'
end
