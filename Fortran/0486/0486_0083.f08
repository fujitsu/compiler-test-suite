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
  type (t1(4)),allocatable:: obj01,obj02
if (allocated( obj01 )) print *,1001
if (allocated( obj02 )) print *,1002
allocate(obj02,source=t1(4)( [1,2,3,4] ) )
if (any(obj02%arr/=[1,2,3,4])) print *,1003
if (size(obj02%arr)/=4) print *,1004
obj01=obj02
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01%arr/=[1,2,3,4])) print *,1003
if (size(obj01%arr)/=4) print *,1004
obj01=obj01
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01%arr/=[1,2,3,4])) print *,1003
if (size(obj01%arr)/=4) print *,1004
obj01=f(obj01)
if (.not.allocated( obj01 )) print *,10111
if (.not.allocated( obj02 )) print *,10121
if (any(obj01%arr/=1+[1,2,3,4])) print *,11003
if (size(obj01%arr)/=4) print *,11004
obj02=f(obj01)
if (.not.allocated( obj01 )) print *,20111
if (.not.allocated( obj02 )) print *,20121
if (any(obj02%arr/=2+[1,2,3,4])) print *,21003
if (size(obj01%arr)/=4) print *,21004
if (size(obj02%arr)/=4) print *,21014
end
do k=1,10
call s1
end do
print *,'pass'
end
