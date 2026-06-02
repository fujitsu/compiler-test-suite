module m
implicit none
 integer,target::t=3
 type y
   integer,pointer::x1=>t
 end type
 interface
 module subroutine wform(dtv)
    class(y), intent(in) :: dtv
  end 
 end interface
end

submodule (m) xx
 implicit none
contains
 module procedure  wform
integer::k
k=0
select type (dtv)
 typeis(y)
  k=1
end select
if (k/=1) print *,101
  end 
end

use m
  type(y)::xv
call wform(xv)
print *,'sngg230h : pass'
end
