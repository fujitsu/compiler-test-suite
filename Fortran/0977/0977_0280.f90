module al_e
type ma
integer,allocatable::v(:)
end type
end module
use al_e
type(ma) b
integer,allocatable::a(:)
integer::ar(3)=1
b=ma(ar)
call move_alloc(b%v,a)
if(allocated(a).neqv..true.) print *,'err1'
if(allocated(b%v).neqv..false.) print *,'err2'
print *,'pass'
end
