type t
integer(1)::i1
end type
class(t),pointer::a(:)
class(t),pointer::b(:)
type(t),pointer::c(:)
type(t),pointer::d(:)
allocate(a(0),c(0))
b=>a
d=>c
if(associated(a,b)) then
 print *,'err1'
endif
if(associated(c,d)) then
 print *,'err2'
endif
print *,'pass'
end
