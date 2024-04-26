module m1
 type v
  integer::y
 end type
 type t
  type(v),pointer::a1(:)
  type(v),pointer::a2(:)
 end type
  type (t)::var1,var2
contains

subroutine s(x,i)
type (t)::x
call sub(x%a1,x%a2)
end subroutine

subroutine sub(z1,z2)
type(v),dimension(1):: z1,z2
end subroutine
end

use m1
allocate(var1%a1(1), var1%a2(1))
call s(var1,i)
print *,'pass'
end
