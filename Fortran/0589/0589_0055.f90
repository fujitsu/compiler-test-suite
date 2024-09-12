module m1
type(logical),target::at=.true.

type ty
 contains
  procedure,nopass ::  func_assign
end type
contains
       function func_assign(t) result(ret)
        type(logical),pointer::ret
        type(logical),target::t
        ret=>t
       end function
end module

use m1
type(ty) ::obj
obj%func_assign(at)=.false.
if(at .neqv. .false.) print *,101
print *,"Pass"
end 
