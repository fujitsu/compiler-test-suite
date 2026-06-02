module m
implicit none
 integer,target::t=3
 type y
   integer::x1=3
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
!xv%x1=>t
call wform(xv)
print *,'sngg233h : pass'
end
