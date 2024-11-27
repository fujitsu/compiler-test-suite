type t
end type
class(t),pointer::c(:)
type(t),target::d(2,2,2)

c(0:1)=>d(::1,::1,::1)
end
