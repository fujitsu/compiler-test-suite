interface
       function func_assign(t) result(ret)
        type(integer),pointer::ret
        integer,target::t
       end function
end interface  
type ty
 contains
  procedure,nopass ::  func_assign
end type

type(ty) ::obj
integer,target::at=2.0
obj%func_assign(at)=3.0
if(obj%func_assign(at) .ne. 3.0)print*,"101",obj%func_assign(at)
open(newunit=obj%func_assign(at),status='scratch')
if(at .eq. 3.0)print*,"102"
if(at >= -1)print*,"103"

print *,"Pass"
end

function func_assign(t) result(ret)
type(integer),pointer::ret
integer,target::t
ret=>t
end function
