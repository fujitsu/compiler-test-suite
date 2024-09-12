module mod
interface
 function func() 
 end function
end interface
end module
module m1
  use mod
contains
subroutine ss
type x
     procedure(inn),nopass,pointer::p
end type
     block
type(x)::v
v%p=>inn
k=  v%p()
if (k    /=1) print *,k  
     end block
end
    function inn() result(inn_res)
      integer, pointer:: inn_res
      allocate(inn_res)
    inn_res=1
    end function inn
  end 
use m1
call ss
print *,'pass'
end
