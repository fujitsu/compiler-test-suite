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
call move_alloc(b%v,a%v)
if(any(a%v/=(/1,1,1/))) print *,'err1'
if(allocated(a%v).neqv..true.) print *,'err2'
if(allocated(b%v).neqv..false.) print *,'err3'
print *,'pass'
end
