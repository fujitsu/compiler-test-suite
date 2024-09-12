module m0
contains
    function inn() result(inn_res)
      integer, pointer:: inn_res
      allocate(inn_res)
    inn_res=1
    end 
end
module m1
use m0
contains
subroutine ss
     block
type x
     procedure(inn),nopass,pointer::p
end type
type(x)::v
v%p=>inn
k=  v%p()
if (k    /=1) print *,k  
     end block
end
  end 
use m1
call ss
print *,'pass'
end
