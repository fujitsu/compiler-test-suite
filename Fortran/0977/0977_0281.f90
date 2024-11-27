module al_e
type ma
integer,allocatable::v(:)
end type
end module
use al_e
type(ma) a
integer,allocatable::b(:)
allocate(b(3))
b=(/1,2,3/)
call move_alloc(b,a%v)
if(allocated(a%v).neqv..true.) print *,'err1'
if(allocated(b).neqv..false.) print *,'err2'
print *,'pass'
end
