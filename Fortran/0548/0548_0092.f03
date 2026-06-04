module m
type t
contains
final :: final
end type
type tt
contains
final :: associate
end type
type t3
contains
final :: integer
end type
contains
subroutine final(x)
type(t)::x
asynchronous x
volatile x
if(storage_size(x)/=0) print *,'err1'
end subroutine
subroutine associate(y)
type(tt)::y(:)
asynchronous y
volatile y
if(storage_size(x)/=32) print *,'err2'
end subroutine
subroutine integer(y)
type(t3)::y
dimension::y(:,:)
if(storage_size(x)/=32) print *,'err3'
end subroutine
end module
use m
type(t)::a
type(tt)::b(1)
type(t3)::c(1,1)
call final(a)
call associate([tt::])
call integer(reshape([t3::c],[1,1]))
print *,'pass'
end
