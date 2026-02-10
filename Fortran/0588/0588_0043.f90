module m
type  ty
 character(len=2),pointer::ccptr
 procedure(real) ,nopass,pointer ::p5
end type
character(len=5),target::ctrg(2,2)=transpose(reshape(["111","222","333","444"],shape(ctrg)))
character(len=2),target::ctrg2= "11"
contains
 function ifun()
        entry ised()
        real::ifun
        real::ised
        ifun=1
        ised =1
        return
      end function
end module
use m
type(ty)::obj2  = ty(ctrg2(1:2),ised)
if(obj2%ccptr.ne."11")print*,"101"
if(obj2%p5().ne.1)print*,"201"
print *,"Pass"
end

