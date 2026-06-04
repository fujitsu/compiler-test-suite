module m1
type b
  integer(8)::du
  character(:),allocatable::c1
end type
character(*),parameter::a1=repeat('a',1000)
character(*),parameter::b1=repeat('b',1000)
character(*),parameter::cv=repeat('c',1000)
logical,parameter::t=.true.,f=.false.
logical::mask(3)=[t,f,t]
end
subroutine s1
use m1
class(b),allocatable::u(:)
class(b),allocatable::v(:)
allocate(v(3))
select type (v)
 type is(b)
allocate(v(1)%c1,source=a1)
allocate(v(2)%c1,source=a1)
allocate(v(3)%c1,source=a1)
!print "('v(1)%c1:',z16.16)",loc(v(1)%c1)
!print "('v(1)%e2:',z16.16)",loc(v(1)%e2)
end select
allocate(u(3))
select type(u)
class is(b)
allocate(u(1)%c1,source='1')
allocate(u(2)%c1,source='1')
allocate(u(3)%c1,source='1')
if (    len(u(1)%c1)/=1) print *,28280
end select
!!where(mask)
  u= b( 1, v(1)%c1)
!!!end where
k=0
select type (v)
 type is(b)
  v(1)%c1=cv
  v(2)%c1=cv
  v(3)%c1=cv
k=1
end select
if (k/=1) print *,30303
k=0
select type(u)
 type is(b)
if (u(1)%c1/=a1) print *,5020
if (u(2)%c1/=a1 ) print *,5021
if (u(3)%c1/=a1) print *,5022
!print "('u(1)%c1:',z16.16)",loc(u(1)%c1)
!print "('u(1)%e2:',z16.16)",loc(u(1)%e2)
k=1
end select
if (k/=1) print *,3030
end
call s1
print *,'sngg047t : pass'
end
