type t
real::real
end type
class(t),pointer::a
type(t),pointer::b
allocate(a)
b=>a
if(.not.associated(a,b)) print *,'err'
print *,'pass'
end
