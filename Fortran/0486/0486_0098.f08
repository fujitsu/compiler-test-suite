module m1
 type t1
  integer:: arr(2)
 end type
contains
elemental function f(d) result(r)
type(t1),intent(in)::d
type(t1)           ::r 
r=d
r%arr=r%arr+1
end function
function ff(d) result(r)
type(t1),intent(in)::d(:)
type(t1)           ::r (size(d))
r=d
do k=1,size(r)
r(k)%arr=r(k)%arr+1
end do
end function
end
subroutine  s1
use m1
  type (t1),allocatable:: obj01(:),obj02(:)
allocate(obj02(2))
obj02(1)%arr=1
obj02(2)%arr=1
obj01=ff(obj02)
if (any(obj01(1)%arr/=2)) print *,101,obj01(1)%arr
if (any(obj01(2)%arr/=2)) print *,102,obj01(2)%arr
end
call s1
print *,'pass'
end
