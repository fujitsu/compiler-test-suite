module m0
  type q
    integer::v
  end type
end
module m1
use m0
    implicit none
    interface 
     module function   s01(ww)
    procedure(type(q))::ww
    integer::s01
end 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure  s01
    implicit none
type(q)::e=q(2)
s01=2
write(9,*)ww(e   )
end
end
use m1
    procedure(type(q))::ww
if( s01(ww) /=2) print *,2001
print *,'sngg801h : pass'
end
function ww(d) result(r)
use m0
  type(q)::d,r
   r=d
end
