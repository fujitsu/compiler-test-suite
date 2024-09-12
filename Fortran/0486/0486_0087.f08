module m1
 type t1(k)
  integer,kind:: k
  integer:: arr(k)
  integer,allocatable:: brr(:)
  integer,allocatable:: crr
 end type
  integer,allocatable:: brr(:)
  integer,allocatable:: crr 
contains
elemental function f(d) result(r)
type(t1(4)),intent(in)::d
type(t1(4))           ::r
r=d
r%arr=r%arr+1
r%brr=r%brr+1
r%crr=r%crr+1
end function
end
subroutine  s1
use m1
  type (t1(4)),allocatable:: obj01,obj02
if (allocated( obj01 )) print *,1001
if (allocated( obj02 )) print *,1002
allocate(obj02,source=t1(4)( [1,2,3,4],brr,crr ) )
if (any(obj02%arr/=[1,2,3,4])) print *,1003
if (any(obj02%brr/=[11,12])) print *,110301
if (   (obj02%crr/=111    )) print *,100311
if (size(obj02%arr)/=4) print *,1004
if (size(obj02%brr)/=2) print *,100401
obj01=obj02
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01%arr/=[1,2,3,4])) print *,1003
if (any(obj01%brr/=[11,12])) print *,120301
if (   (obj01%crr/=111    )) print *,100311
if (size(obj01%arr)/=4) print *,1004
if (size(obj01%brr)/=2) print *,100401
obj01=obj01
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01%arr/=[1,2,3,4])) print *,1003
if (any(obj01%brr/=[11,12])) print *,130301
if (   (obj01%crr/=111    )) print *,100311
if (size(obj01%arr)/=4) print *,1004
if (size(obj01%brr)/=2) print *,100401
obj01=f(obj01)
if (.not.allocated( obj01 )) print *,10111
if (.not.allocated( obj02 )) print *,10121
if (any(obj01%arr/=1+[1,2,3,4])) print *,11003
if (any(obj01%brr/=1+[11,12])) print *,140301
if (   (obj01%crr/=1+111    )) print *,100311
if (size(obj01%brr)/=2) print *,100401
if (size(obj01%arr)/=4) print *,11004
obj02=f(obj01)
if (.not.allocated( obj01 )) print *,20111
if (.not.allocated( obj02 )) print *,20121
if (any(obj02%arr/=2+[1,2,3,4])) print *,21003
if (any(obj02%brr/=2+[11,12])) print *,21003
if (   (obj02%crr/=2+ 111   )) print *,21003
if (size(obj01%arr)/=4) print *,21004
if (size(obj02%arr)/=4) print *,21014
end
use m1
allocate (brr(2),source=[11,12])
allocate (crr   ,source=111)
do k=1,1
call s1
end do
print *,'pass'
end
