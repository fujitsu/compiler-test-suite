type t
real::real
end type
type(t),pointer::a
class(t),pointer::b
allocate(a)
b=>a
if(.not.associated(a,b)) print *,'err'
print *,'pass'
end
