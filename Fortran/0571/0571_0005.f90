module m1
 type t1(k)
  integer,kind:: k
  integer:: arr=k
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

type (t1(4)),allocatable:: obj01(:,:),obj02(:,:)
allocate(obj02(2,2))
if (obj02(1,1)%arr/=4) print *,100
obj02%arr=1
if (obj02(1,1)%arr/=1) print *,101
obj01=f(obj02)
if (any(obj01%arr/=2)) print *,102
end subroutine
call s1
print *,'PASS'
end

