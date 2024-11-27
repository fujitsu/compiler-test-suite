module al_e
type ma
integer,allocatable::v(:)
end type
end module
use al_e
type(ma) a,b
integer::ar(3)=1
a=ma(null())
b=ma(ar)
call move_alloc(a%v,b%v)
if(allocated(a%v).neqv..false.) print *,'err1'
if(allocated(b%v).neqv..false.) print *,'err2'
print *,'pass'
end
