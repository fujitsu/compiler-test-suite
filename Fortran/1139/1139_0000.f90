MODULE m1
  TYPE :: x
    integer :: z0
  END TYPE
  type,extends(x):: xxx
    integer, ALLOCATABLE :: z1(:)
  END TYPE
CONTAINS
impure elemental   FUNCTION f( d ) RESULT( r )
    type(xxx), INTENT(IN) :: d
    TYPE(xxx) :: r
   r%z1=d%z1
 !print *,30221,loc(r%z1)
 !print *,30222,r%z1
  END FUNCTION 
END MODULE 

subroutine s3
use  m1
  class(x),allocatable :: v(:)
  class(xxx),allocatable :: w(:)
allocate(xxx:: w(3))
allocate(xxx:: v(3))
w%z0=1
allocate(w(1)% z1(10),source=-1)
allocate(w(2)% z1(10),source=-1)
allocate(w(3)% z1(10),source=-1)
v= f(w)
select type(v)
 class is(xxx)
!print *,901,size(v%z1)
 !print *,902,loc(v%z1)
if (v(1)%z1(10)/=-1) print *,30222,v(1)%z1
if (v(2)%z1(10)/=-1) print *,40222,v(2)%z1
if (v(3)%z1(10)/=-1) print *,50222,v(3)%z1
end select
end
  call s3
print *,'sngg111h : pass'
end

