interface
       function func_assign(t) result(ret)
        type(real),pointer::ret
        real,target::t
       end function
end interface  
type ty
integer ::iit
 contains
  procedure,nopass ::  func_assign
end type

type(ty) ::obj
real,target::at=3.4
obj%func_assign(at)=111.111
obj%iit=11
if(at /= 111.111) print *,101
if(obj%iit /= 11) print *,102
print *,"Pass"
end

function func_assign(t) result(ret)
type(real),pointer::ret
real,target::t
ret=>t
end function
