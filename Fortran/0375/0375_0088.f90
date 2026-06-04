module m1
contains
subroutine s(y)
type a
 integer x
end type
type(a),volatile::v
integer,volatile::y
integer,pointer,volatile::z
v%x=1
y=1
allocate(z)
z=1
end subroutine
end
use m1
integer,volatile::y
call s(y)
print *,'pass'
end
