module m1
 type z
   integer:: z1
 end type
 type,extends(z):: y
   integer:: y1
 end type
 type x
   integer:: x1
   class(z),allocatable::x2(:)
 end type
contains
elemental impure function f(d) result(r)
 type(x)::r
 type(x),intent(in)::d
 r=d
end function
end
subroutine s1
use m1
 type (x):: a01(2),a02(2)
a02=f(a01)
end
call s1
print *,'pass'
end
