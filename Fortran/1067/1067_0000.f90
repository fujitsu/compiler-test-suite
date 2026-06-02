module m0
  type ty
    integer::v
  end type
end
module m1
use m0
    implicit none
    interface 
     module subroutine    s01(proc)
       procedure(type(ty))::proc
     end  subroutine 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure    s01
       implicit none
       type(ty)::a1,a2=ty(1)
      a1=proc(a2)
if (a1%v/=1) print *,8001
     end  
end
use m1
       procedure(type(ty))::proc
call s01(proc)
print *,'sngg385o : pass'
end
function proc(d) result(r)
use m0
  type(ty)::d,r
   r=d
end
