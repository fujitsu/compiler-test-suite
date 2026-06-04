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
    procedure(type(q))::ww
end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
    implicit none
write(15,*)ww(   )
end
end
print *,'sngg850h : pass'
end
function ww() result(r)
use m0
  type(q)::r
   r=q(1)
end
