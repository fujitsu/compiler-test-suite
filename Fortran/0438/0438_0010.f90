module m1
 type z
   integer:: z1
 end type
 type,extends(z):: y
   integer:: y1
 end type
 type x
   integer:: x1
   type(z),allocatable::x2(:)
 end type
integer::flag=0
contains
elemental impure function f(d)
 type(x),intent(in)::d
 type(x)::f
flag=1
 f=d 
end function
end
subroutine s1
use m1
 type (x),allocatable:: a01(:)
allocate ( x::a01(5))

a01=f(a01)

if (flag/=1) print *,8888
end
do k=1,1
call s1
end do
print *,'pass'
end
