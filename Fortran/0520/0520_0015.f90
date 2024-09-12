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
elemental impure function f(d)
 type(x),intent(in)::d
 type(x)::f
 f=d 
end function
end
subroutine s1
use m1
 type (x),allocatable:: a01(:)

a01=f(a01)

end

print *,'pass'
end
