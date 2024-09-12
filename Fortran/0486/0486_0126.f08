MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z0
  END TYPE
  type,extends(x):: xx
    integer, ALLOCATABLE :: z1(:)
  END TYPE
CONTAINS
  FUNCTION fx( d ) RESULT( r )
    class(x), INTENT(IN) :: d(:)
    class(x),allocatable :: r(:)
   r=d
   do k=1,size(r)
select type(r)
 class is(xx)
   select type(d)
    class is(xx)
   r(k)%z1=d(k)%z1+3
end select 
end select 
   r(k)%z0=d(k)%z0+3
    end do
  END FUNCTION
elemental   FUNCTION f( d ) RESULT( r )
    type(xx), INTENT(IN) :: d
    TYPE(xx) :: r
   r=d 
   r%z0=d%z0+3
   r%z1=d%z1+3
  END FUNCTION 
END MODULE 

subroutine s1
use  m1
  class(x),allocatable :: v,w
allocate(xx:: w)
allocate(w% z0    ,source=-1)
select type(w)
 class is(xx)
allocate(w% z1(10),source=-1)
end select 
v= w
k=0
select type(v)
 class is(xx)
 k=1
if (size(v%z1)/=10      ) print *,101
if (v%z0    /=-1 ) print *,1021
if (v%z1(10)/=-1 ) print *,1022
end select
if (k/=1) print *,303
end
  do k=1,10
  call s1
  end do
print *,'pass'
end
