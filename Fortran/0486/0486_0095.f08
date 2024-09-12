module m1
 type t1(k)
  integer,kind:: k
  integer:: arr(k)
 end type
contains
elemental function f(d) result(r)
type(t1(4)),intent(in)::d
type(t1(4))           ::r 
r=d
r%arr=r%arr+1
end function
end
subroutine  s1
use m1
  type (t1(4)),allocatable:: obj01(:),obj02(:)
allocate(obj02(2))
obj02(1)%arr=1
obj02(2)%arr=1
obj01=obj02
if (any(obj01(1)%arr/=1)) print *,101
if (any(obj01(2)%arr/=1)) print *,102
end
call s1
print *,'pass'
end
