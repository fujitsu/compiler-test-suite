module m1
character(*),parameter::a1=repeat('a',1000)
character(*),parameter::b1=repeat('b',1000)
character(*),parameter::cv=repeat('c',1000)
type b
  integer(8)::du
  character(len(a1))::c1
end type
type,extends(b)::e
  integer(8)::eu
  character(:),allocatable::e2
end type
logical,parameter::t=.true.,f=.false.
logical::mask(3)=[t,t,t]
end
subroutine s1
use m1
type(e),allocatable::v(:),u(:)
allocate(e::v(3))
!select type (v)
! type is(e)
v(1)%c1=a1
v(2)%c1=a1
v(3)%c1=a1
allocate(v(1)%e2,source=a1)
allocate(v(2)%e2,source=a1)
allocate(v(3)%e2,source=a1)
!print "('v(1)%c1:',z16.16)",loc(v(1)%c1)
!print "('v(1)%e2:',z16.16)",loc(v(1)%e2)
!end select
allocate(e::u(3))
!select type(u)
!class is(e)
u(1)%c1=b1
u(2)%c1=b1
u(3)%c1=b1
allocate(u(1)%e2,source=b1)
allocate(u(2)%e2,source=b1)
allocate(u(3)%e2,source=b1)
!end select
where(mask)
  u=v
end where
k=0
!select type (v)
! type is(e)
  v(1)%c1=cv
  v(2)%c1=cv
  v(3)%c1=cv
  v(1)%e2=cv
  v(2)%e2=cv
  v(3)%e2=cv
k=1
!end select
if (k/=1) print *,30303
k=0
!select type(u)
! type is(e)
if (u(1)%c1/=a1) print *,5020
if (u(2)%c1/=a1) print *,5021
if (u(3)%c1/=a1) print *,5022
if (u(1)%e2/=a1) print *,5120
if (u(2)%e2/=a1) print *,5121
if (u(3)%e2/=a1) print *,5122
!print "('u(1)%c1:',z16.16)",loc(u(1)%c1)
!print "('u(1)%e2:',z16.16)",loc(u(1)%e2)
k=1
!end select
if (k/=1) print *,3030
end
call s1
print *,'sngg966s : pass'
end
