module m0
type x
 integer::x1
end type
end
module m1
use m0
interface
 function func() 
 end function
end interface
contains
subroutine s1
     block
      type y
     procedure(inn),nopass,pointer::p
      end type
     type(y)::w
     type(x)::v
     w%p=>inn
     v=w%p()
     if (v%x1/=1) print *,101
     end block
  contains
    function inn() result(inn_res)
      type(x)         :: inn_res
     inn_res=x(1)
    end function inn
  end 
  end 
use m1
call s1
print *,'pass'
end
