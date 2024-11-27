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
subroutine s1(n,a01,a02)
use m1
 type (x):: a01(n),a02(n)
a02=a01
end
use m1
 type (x):: a1(2),a2(2)
call s1(2,a1,a2)
print *,'pass'
end
