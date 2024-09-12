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
  type (t1(4)),allocatable:: obj01(:),obj02(:)
if (allocated( obj01 )) print *,1001
if (allocated( obj02 )) print *,1002
allocate(obj02(3) )
obj02(1)=t1(4)( [1,2,3,4] ,brr,crr) 
obj02(2)=t1(4)( [1,2,3,4] +10,brr,crr) 
obj02(3)=t1(4)( [1,2,3,4] +20,brr,crr) 
if (any(obj02(1)%arr/=[1,2,3,4])) print *,10031
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,10032
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,10032
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (size(obj02(1)%brr)/=2) print *,10042
if (size(obj02(2)%brr)/=2) print *,10042
if (size(obj02(3)%brr)/=2) print *,10042
obj01=obj02
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,10035, obj01(1)%arr
if (any(obj01(2)%arr/=[1,2,3,4]+10)) print *,100361
if (any(obj01(3)%arr/=[1,2,3,4]+20)) print *,100362
if (any(obj02(1)%arr/=[1,2,3,4])) print *,100351,obj02(1)%arr
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,100363
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,100364
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (any(obj01(1)%brr/=[11,12])) print *,10031
if (any(obj01(2)%brr/=[11,12])) print *,10031
if (any(obj01(3)%brr/=[11,12])) print *,10031
if (   (obj01(1)%crr/=111    )) print *,10031
if (   (obj01(2)%crr/=111    )) print *,10031
if (   (obj01(3)%crr/=111    )) print *,10031
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
obj01=obj01
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,100353,obj01(1)%arr
if (any(obj01(2)%arr/=[1,2,3,4]+10)) print *,100365
if (any(obj01(3)%arr/=[1,2,3,4]+20)) print *,100366
if (any(obj02(1)%arr/=[1,2,3,4])) print *,100354,obj02(1)%arr
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,100367
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,100368
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (any(obj01(1)%brr/=[11,12])) print *,10031
if (any(obj01(2)%brr/=[11,12])) print *,10031
if (any(obj01(3)%brr/=[11,12])) print *,10031
if (   (obj01(1)%crr/=111    )) print *,10031
if (   (obj01(2)%crr/=111    )) print *,10031
if (   (obj01(3)%crr/=111    )) print *,10031
obj01(2:)=obj01(:2)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=[1,2,3,4])) print *,100355,obj01(1)%arr
if (any(obj01(2)%arr/=[1,2,3,4])) print *,100369
if (any(obj01(3)%arr/=[1,2,3,4]+10)) print *,1003610
if (any(obj02(1)%arr/=[1,2,3,4])) print *,10035
if (any(obj02(2)%arr/=[1,2,3,4]+10)) print *,10036111
if (any(obj02(3)%arr/=[1,2,3,4]+20)) print *,1003611
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (any(obj01(1)%brr/=[11,12])) print *,10031
if (any(obj01(2)%brr/=[11,12])) print *,10031
if (any(obj01(3)%brr/=[11,12])) print *,10031
if (   (obj01(1)%crr/=111    )) print *,10031
if (   (obj01(2)%crr/=111    )) print *,10031
if (   (obj01(3)%crr/=111    )) print *,10031
obj01=f(obj02)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=1+[1,2,3,4])) print *,10035,obj01(1)%arr
if (any(obj01(2)%arr/=1+[1,2,3,4]+10)) print *,1003612
if (any(obj01(3)%arr/=1+[1,2,3,4]+20)) print *,1003613
if (any(obj02(1)%arr/=0+[1,2,3,4])) print *,100356,obj02(1)%arr
if (any(obj02(2)%arr/=0+[1,2,3,4]+10)) print *,1003614
if (any(obj02(3)%arr/=0+[1,2,3,4]+20)) print *,1003615
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (any(obj01(1)%brr/=1+[11,12])) print *,10031
if (any(obj01(2)%brr/=1+[11,12])) print *,10031
if (any(obj01(3)%brr/=1+[11,12])) print *,10031
if (   (obj01(1)%crr/=1+111    )) print *,10031
if (   (obj01(2)%crr/=1+111    )) print *,10031
if (   (obj01(3)%crr/=1+111    )) print *,10031
obj01=f(obj01)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=2+[1,2,3,4])) print *,100357,obj01(1)%arr
if (any(obj01(2)%arr/=2+[1,2,3,4]+10)) print *,1003616
if (any(obj01(3)%arr/=2+[1,2,3,4]+20)) print *,1003617
if (any(obj02(1)%arr/=0+[1,2,3,4])) print *,100358,obj02(1)%arr
if (any(obj02(2)%arr/=0+[1,2,3,4]+10)) print *,1003618
if (any(obj02(3)%arr/=0+[1,2,3,4]+20)) print *,1003619
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (any(obj01(1)%brr/=2+[11,12])) print *,10031
if (any(obj01(2)%brr/=2+[11,12])) print *,10031
if (any(obj01(3)%brr/=2+[11,12])) print *,10031
if (   (obj01(1)%crr/=2+111    )) print *,10031
if (   (obj01(2)%crr/=2+111    )) print *,10031
if (   (obj01(3)%crr/=2+111    )) print *,10031
obj01=obj02(2)
if (.not.allocated( obj01 )) print *,1011
if (.not.allocated( obj02 )) print *,1012
if (any(obj01(1)%arr/=10+[1,2,3,4])) print *,100359,obj01(1)%arr
if (any(obj01(2)%arr/=0+[1,2,3,4]+10)) print *,1003620
if (any(obj01(3)%arr/=0+[1,2,3,4]+10)) print *,1003621,obj01(3)%arr
if (any(obj02(1)%arr/=0+[1,2,3,4])) print *,1003591,obj02(1)%arr
if (any(obj02(2)%arr/=0+[1,2,3,4]+10)) print *,1003622
if (any(obj02(3)%arr/=0+[1,2,3,4]+20)) print *,1003623
if (size(obj01(1)%arr)/=4) print *,10041
if (size(obj01(2)%arr)/=4) print *,10042
if (size(obj01(3)%arr)/=4) print *,10042
if (size(obj02(1)%arr)/=4) print *,10041
if (size(obj02(2)%arr)/=4) print *,10042
if (size(obj02(3)%arr)/=4) print *,10042
if (any(obj02(1)%brr/=[11,12])) print *,10031
if (any(obj02(2)%brr/=[11,12])) print *,10031
if (any(obj02(3)%brr/=[11,12])) print *,10031
if (   (obj02(1)%crr/=111    )) print *,10031
if (   (obj02(2)%crr/=111    )) print *,10031
if (   (obj02(3)%crr/=111    )) print *,10031
if (any(obj01(1)%brr/=[11,12])) print *,10031
if (any(obj01(2)%brr/=[11,12])) print *,10031
if (any(obj01(3)%brr/=[11,12])) print *,10031
if (   (obj01(1)%crr/=111    )) print *,10031
if (   (obj01(2)%crr/=111    )) print *,10031
if (   (obj01(3)%crr/=111    )) print *,10031
end
use m1
allocate (brr(2),source=[11,12])
allocate (crr   ,source=111)
do k=1,1
call s1
end do
print *,'pass'
end
