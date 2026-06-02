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
     module procedure    s01
    implicit none
type(q)::e=q(2)
write(7,*)ww(e   )
end
end
use m1
    procedure(type(q))::ww
call s01(ww)
rewind 7
read(7,*) k
if (k/=2) print *,601
print *,'sngg795h : pass'
end
function ww(d) result(r)
use m0
  type(q)::d,r
   r=d
end
