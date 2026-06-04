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
       procedure(type(ty)),pointer::proc
     end  subroutine 
    end interface 
end 

submodule (m1) smod
contains 
     module procedure   s01
       implicit none
     end  
end
use m1
print *,'sngg188o : pass'
end
function proc(d) result(r)
use m0
  type(ty)::d,r
   r=d
end
