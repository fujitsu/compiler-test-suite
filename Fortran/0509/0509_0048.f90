module mod
interface
 function func() 
 end function
end interface
end module
module m1
  use mod
contains
subroutine s1
     block
type x
     procedure(inn),nopass,pointer::p
end type
type(x)::v
v%p=>inn
if (v%p()/=1)print *,202
     end block
  contains
    function inn() result(inn_res)
      inn_res=1
    end function inn
  end 
  end 
use m1
call s1
print *,'pass'
end
