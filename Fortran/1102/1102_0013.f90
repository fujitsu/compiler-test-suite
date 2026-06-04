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
     module subroutine   s01(proc)
       implicit none
       procedure(type(ty))::proc
     end  subroutine 
end
use m1
print *,'sngg180o : pass'
end
function proc(d) result(r)
use m0
  type(ty)::d,r
   r=d
end
