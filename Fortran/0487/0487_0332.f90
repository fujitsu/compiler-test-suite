subroutine s(y)
use     iso_c_binding
integer,target::y(:)
pointer::a(:)
type(c_ptr)::x
x=c_loc(a)
x=c_loc(y)
end
print *,'pass'
end
