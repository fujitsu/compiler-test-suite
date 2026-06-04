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
    type(q)::ww
    external::ww
end 
    end interface 
end 

submodule (m1) smod
contains 
     module subroutine   s01(ww)
    implicit none
    type(q)::ww
    external::ww
type(q)::e=q(2)
write(4,*)ww(e   )
end
end
use m1
    procedure(type(q))::ww
call s01(ww)
print *,'sngg794h : pass'
end
function ww(d) result(r)
use m0
  type(q)::d,r
   r=d
end
