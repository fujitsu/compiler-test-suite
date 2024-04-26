MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
   r%z=d%z+1
  END FUNCTION 
END MODULE 
subroutine s1(n)
use  m1
  TYPE(x) :: v(n)
integer::n2=2
do k=1,n
allocate(v(k)% z(3),source=k)
end do
v(n2::n2)= v(:n-1:n2)
if (any(v(1)%z/=1 )) print *,101
if (any(v(2)%z/=1 )) print *,102
if (any(v(3)%z/=3 )) print *,102
if (any(v(4)%z/=3 )) print *,102
if (any(v(5)%z/=5 )) print *,102
if (any(v(6)%z/=5 )) print *,102
if (any(v(7)%z/=7 )) print *,102
if (any(v(8)%z/=7 )) print *,102
if (any(v(9)%z/=9 )) print *,102
if (any(v(10)%z/=9 )) print *,102
if (any(v(11)%z/=11)) print *,102
if (any(v(12)%z/=11)) print *,102
if (any(v(13)%z/=13)) print *,102
if (any(v(14)%z/=13)) print *,102
if (any(v(15)%z/=15)) print *,102
end
integer::n=150
do k=1,n  
call s1(n )
end do
print *,'pass'
end
