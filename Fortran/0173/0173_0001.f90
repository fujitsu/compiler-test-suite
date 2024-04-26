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
  TYPE(x) :: v(6,l,l,l),w(3,l,l,l)
logical:: mask(3,1,1,1)=.false.
allocate(v(1,l,l,l)% z(1),source=1)
allocate(v(3,l,l,l)% z(1),source=3)
mask(1,1,1,1)=.true.
mask(3,1,1,1)=.true.
where (mask(:,l,l,l))
w(:n,l,l,l)= f(  v(1:n,l,l,l) )
end where
if (w(1,l,l,l)%z(1)/=1 ) print *,101
if (allocated(w(2,l,l,l)%z)) print *,1021
if (w(3,l,l,l)%z(1)/=3 ) print *,103
where (mask(:,l,l,l))
v(2:m-2,l,l,l)= f(  v(1:n,l,l,l) )
end where
if (v(1,l,l,l)%z(1)/=1 ) print *,101
if (v(2,l,l,l)%z(1)/=1 ) print *,101
if (v(3,l,l,l)%z(1)/=3 ) print *,101
if (v(4,l,l,l)%z(1)/=3 ) print *,103
if (allocated(v(5,l,l,l)%z)) print *,1023
if (allocated(v(6,1,1,1)%z)) print *,1024
where (mask(:,l,l,l))
v(4:m,l,l,l)=v(5,l,l,l)
end where
if (v(1,l,l,l)%z(1)/=1 ) print *,101
if (v(2,l,l,l)%z(1)/=1 ) print *,101
if (v(3,l,l,l)%z(1)/=3 ) print *,101
if (allocated(v(4,l,l,l)%z)) print *,1026
if (allocated(v(5,l,l,l)%z)) print *,1027
if (allocated(v(6,1,1,1)%z)) print *,1028
where (mask(:,l,l,l))
v(4:m,l,l,l)=v(2,l,l,l)
end where
if (v(1,l,l,l)%z(1)/=1 ) print *,101
if (v(2,l,l,l)%z(1)/=1 ) print *,101
if (v(3,l,l,l)%z(1)/=3 ) print *,101
if (v(4,l,l,l)%z(1)/=1 ) print *,101
if (allocated(v(5,l,l,l)%z)) print *,10210
if (v(6,1,1,1)%z(1)/=1 ) print *,101
end
do k=1,30
call s1(1)
end do
print *,'pass'
end
