module m0
  type q
    integer::v
  end type
end
module m1
use m0
    implicit none
    interface 
     module subroutine    s01(ww)
  !  type(q)::ww
  !  external::ww
    procedure(type(q)),pointer,intent(in)::ww
end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
    implicit none
    !type(q)::ww
    !external::ww
    !!procedure(type(q)),pointer,intent(in)::ww
type(q)::e=q(2)
write(13,*)ww(e   )
end
end
use m1
    procedure(type(q))::ww
call s01(ww)
rewind 13
read(13,*)nn
if (nn/=2) print *,6001
print *,'sngg848h : pass'
end
function ww(d) result(r)
use m0
  type(q)::d,r
   r=d
end
