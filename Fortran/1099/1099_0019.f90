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
     external::ww
     integer::ww
end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
    implicit none
if (ww(2   )/=2) print *,202
end
end
use m1
    procedure(integer)::ww
call s01(ww)
print *,'sngg796h : pass'
end
function ww(d) result(r)
  integer::d,r
   r=d
end
