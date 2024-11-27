use iso_c_binding
type t
end type
type(t)::ttt
class(t),pointer::ooo
class(*),pointer::ppp
print *,c_sizeof(ttt)
print *,c_sizeof(ooo)
print *,c_sizeof(ppp)
end
