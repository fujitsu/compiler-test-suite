module mod
 type a
   integer,allocatable::x(:)
 end type
contains
  function f() result(r)
  type(a),allocatable::r(:)
  allocate(r(2))
  allocate(r(1)%x(2))
   r(1)%x=1
  allocate(r(2)%x(2))
   r(2)%x=2
 end function
end
use mod
type(a)::v(2)
v=f()
if (any(v(1)%x/=1))write(6,*) "NG"
if (any(v(2)%x/=2))write(6,*) "NG"
print *,'pass'
end
  
