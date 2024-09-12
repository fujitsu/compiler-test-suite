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
if (allocated( obj01 )) print *,1001
if (allocated( obj02 )) print *,1002
allocate(obj02(3) )
obj02(1)=t1(4)( [1,2,3,4] ) 
obj02(2)=t1(4)( [1,2,3,4] +10) 
obj02(3)=t1(4)( [1,2,3,4] +20) 
if (any(obj02(1)%arr/=[1,2,3,4])) print *,10031
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,10032
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,10032
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
obj01=obj02
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj01(2)%arr/=[1,2,3,4]+10)) print *,10036
if (any(obj01(3)%arr/=[1,2,3,4]+20)) print *,10036
if (any(obj02(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,10036
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,10036
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
obj01=obj01
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj01(2)%arr/=[1,2,3,4]+10)) print *,10036
if (any(obj01(3)%arr/=[1,2,3,4]+20)) print *,10036
if (any(obj02(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,100369
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,10736
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
obj01(2:)=obj01(:2)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj01(2)%arr/=[1,2,3,4])) print *,10036
if (any(obj01(3)%arr/=[1,2,3,4]+10)) print *,100367
if (any(obj02(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,10036
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,100368
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
obj01(2:)=f(obj01(:2))
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj01(2)%arr/=1+[1,2,3,4])) print *,12036
if (any(obj01(3)%arr/=1+[1,2,3,4])) print *,13036
if (any(obj02(1)%arr/=[1,2,3,4])) print *,14035
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,15036
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,16036
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
deallocate(obj01)
obj01=f(obj02)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=1+[1,2,3,4])) print *,10035
deallocate(obj01)
obj01=f(obj02)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=1+[1,2,3,4])) print *,10035
if (any(obj01(2)%arr/=1+[1,2,3,4]+10)) print *,20036
if (any(obj01(3)%arr/=1+[1,2,3,4]+20)) print *,30036
if (any(obj02(1)%arr/=0+[1,2,3,4])) print *,10035
if (any(obj02(2)%arr/=0+[1,2,3,4]+10)) print *,40036
if (any(obj02(3)%arr/=0+[1,2,3,4]+20)) print *,50036
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
obj01=f(obj01)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=2+[1,2,3,4])) print *,10035
if (any(obj01(2)%arr/=2+[1,2,3,4]+10)) print *,10036
if (any(obj01(3)%arr/=2+[1,2,3,4]+20)) print *,10036
if (any(obj02(1)%arr/=0+[1,2,3,4])) print *,10035
if (any(obj02(2)%arr/=0+[1,2,3,4]+10)) print *,10036
if (any(obj02(3)%arr/=0+[1,2,3,4]+20)) print *,10036
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
deallocate(obj01)
end
do k=1,10
call s1
end do
print *,'pass'
end
