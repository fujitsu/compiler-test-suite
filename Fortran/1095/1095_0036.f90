module m
implicit none
 integer,target::t=3
 type y
   integer,pointer::x1=>t
 end type
 interface
 module subroutine w1(dtv)
    type(y), intent(in) :: dtv
  end 
 end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  w1
if (dtv%x1/=3) print *,201
end
end

use m
  type(y)::xv
call w1(xv)
print *,'sngg241h : pass'
end
