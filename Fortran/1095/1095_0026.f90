module m
implicit none
 integer,target::t=3
 type y
   integer,pointer::x1=>t
 end type
 interface
 module subroutine wform(dtv)
    type (y), intent(in) :: dtv
  end 
 end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  wform
if (dtv%x1/=3) print *,101
  end 
end

use m
  type(y)::xv
call wform(xv)
print *,'sngg231h : pass'
end
