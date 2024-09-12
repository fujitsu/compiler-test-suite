type t
integer(1)::i1
end type
class(t),pointer::a(:)
class(t),pointer::b(:)
type(t),pointer::c(:)
type(t),pointer::d(:)
allocate(a(2),c(2))
b=>a
d=>c
if(.not.associated(a,b)) print *,'err1'
if(.not.associated(c,d)) print *,'err2'
print *,'pass'
end
