MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
integer::n=3,m=6
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r = d
  END FUNCTION 
END MODULE 
subroutine s1(l)
use  m1
type vt
  integer::v1=0
  TYPE(x) :: v(6,1,1,1)
  TYPE(x) :: w(6,1,1,1)
end type
type wt
  TYPE(x) :: v(6,1,1,1)
  TYPE(x) :: w(3,1,1,1)
end type
type(vt):: vv(1)
type(wt):: ww(1)
logical:: mask(3,1,1,1)=.false.
allocate(vv(1)%v(1,l,l,l)% z(1),source=1)
allocate(vv(1)%v(3,l,l,l)% z(1),source=3)
mask(1,1,1,1)=.true.
mask(3,1,1,1)=.true.
where (mask(:,l,l,l))
ww(1)%w(:n,l,l,l)= f(  vv(1)%v(1:n,l,l,l) )
end where
if (ww(1)%w(1,l,l,l)%z(1)/=1 ) print *,101
if (allocated(ww(1)%w(2,l,l,l)%z)) print *,1021
if (ww(1)%w(3,l,l,l)%z(1)/=3 ) print *,103
where (mask(:,l,l,l))
vv(1)%v(2:m-2,l,l,l)= f(  vv(1)%v(1:n,l,l,l) )
end where
if (vv(1)%v(1,l,l,l)%z(1)/=1 ) print *,101
if (vv(1)%v(2,l,l,l)%z(1)/=1 ) print *,101
if (vv(1)%v(3,l,l,l)%z(1)/=3 ) print *,101
if (vv(1)%v(4,l,l,l)%z(1)/=3 ) print *,103
if (allocated(vv(1)%v(5,l,l,l)%z)) print *,1023
if (allocated(vv(1)%v(6,1,1,1)%z)) print *,1024
where (mask(:,l,l,l))
vv(1)%v(4:m,l,l,l)=vv(1)%v(5,l,l,l)
end where
if (vv(1)%v(1,l,l,l)%z(1)/=1 ) print *,101
if (vv(1)%v(2,l,l,l)%z(1)/=1 ) print *,101
if (vv(1)%v(3,l,l,l)%z(1)/=3 ) print *,101
if (allocated(vv(1)%v(4,l,l,l)%z)) print *,1026
if (allocated(vv(1)%v(5,l,l,l)%z)) print *,1027
if (allocated(vv(1)%v(6,1,1,1)%z)) print *,1028
where (mask(:,l,l,l))
vv(1)%v(4:m,l,l,l)=vv(1)%v(2,l,l,l)
end where
if (vv(1)%v(1,l,l,l)%z(1)/=1 ) print *,101
if (vv(1)%v(2,l,l,l)%z(1)/=1 ) print *,101
if (vv(1)%v(3,l,l,l)%z(1)/=3 ) print *,101
if (vv(1)%v(4,l,l,l)%z(1)/=1 ) print *,101
if (allocated(vv(1)%v(5,l,l,l)%z)) print *,10210
if (vv(1)%v(6,1,1,1)%z(1)/=1 ) print *,101
end
do k=1,30
call s1(1)
end do
print *,'pass'
end
