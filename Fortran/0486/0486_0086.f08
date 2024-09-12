module m1
 type t1(k)
  integer,kind:: k
  integer:: arr(k)
  integer,allocatable:: brr(:)
  integer,allocatable:: crr
 end type
  integer,allocatable:: brr(:)
  integer,allocatable:: crr
end
subroutine  s1
use m1
  type (t1(4)),allocatable:: obj01,obj02
if (allocated( obj01 )) print *,1001
if (allocated( obj02 )) print *,1002
allocate(obj02,source=t1(4)( [1,2,3,4], brr,crr ) )
if (any(obj02%arr/=[1,2,3,4])) print *,100300
if (any(obj02%brr/=[11,12])) print *,100301
if (   (obj02%crr/=111    )) print *,100311
if (size(obj02%arr)/=4) print *,100400
if (size(obj02%brr)/=2) print *,100401
obj01=obj02
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01%arr/=[1,2,3,4])) print *,100303
if (any(obj01%brr/=[11,12])) print *,100304
if (   (obj01%crr/=111    )) print *,100314
if (size(obj01%arr)/=4) print *,100403
if (size(obj01%brr)/=2) print *,100404
end
use m1
allocate (brr(2),source=[11,12])
allocate (crr   ,source=111)
do k=1,10
call s1
end do
print *,'pass'
end
