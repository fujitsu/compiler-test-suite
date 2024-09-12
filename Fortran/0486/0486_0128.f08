MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z0
  END TYPE
  type,extends(x):: xx
    integer, ALLOCATABLE :: z1(:)
  END TYPE
  type,extends(xx):: xxx
    integer, ALLOCATABLE :: z2(:)
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
select type(r)
 class is(xxx)
   select type(d)
    class is(xxx)
   r(k)%z2=d(k)%z2+3
end select 
end select 
    end do
  END FUNCTION
elemental   FUNCTION f( d ) RESULT( r )
    type(xxx), INTENT(IN) :: d
    TYPE(xxx) :: r
   r=d 
   r%z0=d%z0+3
   r%z1=d%z1+3
   r%z2=d%z2+3
  END FUNCTION 
END MODULE 

subroutine s1
use  m1
  class(x),allocatable :: v,w
allocate(xxx:: w)
allocate(x:: v)
allocate(w% z0    ,source=-1)
select type(w)
 class is(xxx)
allocate(w% z1(10),source=-1)
allocate(w% z2(10),source=-1)
end select 
v= w
k=0
select type(v)
 class is(xxx)
 k=1
if (size(v%z1)/=10      ) print *,101
if (size(v%z2)/=10      ) print *,101
if (v%z0    /=-1 ) print *,1021
if (v%z1(10)/=-1 ) print *,1022
if (v%z2(10)/=-1 ) print *,1022
end select
if (k/=1) print *,303
end
subroutine s3
use  m1
  class(x),allocatable :: v,w
allocate(xxx:: w)
allocate(x:: v)
allocate(w% z0    ,source=-1)
select type(w)
 class is(xxx)
allocate(w% z1(10),source=-1)
allocate(w% z2(10),source=-1)
end select 
select type(w)
 class is(xxx)
v= f(w)
end select
k=0
select type(v)
 class is(xxx)
 k=1
if (size(v%z1)/=10      ) print *,101
if (size(v%z2)/=10      ) print *,101
if (v%z0    /=2 ) print *,10211
end select
if (k/=1) print *,303
end
  do k=1,1
  end do
print *,'pass'
end
