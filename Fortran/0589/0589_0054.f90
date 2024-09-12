interface
       function func_assign(t) result(ret)
        type(double precision),pointer::ret
        double precision,target::t
       end function
end interface  
type ty
integer ::iit
 contains
  procedure,nopass ::  func_assign
end type

type(ty) ::obj(5)
double precision,target::at=3.4
obj(1)%func_assign(at)=111.111
obj(2)%iit=11
if(at /= 111.111) print *,101
if(obj(2)%iit /= 11) print *,102
print *,"Pass"
end

function func_assign(t) result(ret)
type(double precision),pointer::ret
double precision,target::t
ret=>t
end function
