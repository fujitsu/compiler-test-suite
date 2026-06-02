module m1
type b
  !integer(8)::du
  character(2),allocatable::c1
end type
type,extends(b)::e
  integer(8)::eu
  !character(:),allocatable::e2
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
class(e),allocatable::v(:)
  character(:),allocatable::e2
  character(2),allocatable::tt
!where(mask)
  !u= e( 1, v(1)%c1, 1, v(1)%e2)
  !u= e( 1, v(1)%c1, 1, e2)
  !u= e( 1, tt    , 1, e2)
  !u= e( 1, tt    , 1, tt)
  !u= e( 1, tt    , 1)!, tt)
  u= e(  tt    , 1)!, tt)
!end where
end
print *,'sngg050t : pass'
end
