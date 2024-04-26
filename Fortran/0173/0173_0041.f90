MODULE m1
  TYPE :: x
    integer,allocatable :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d , c) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
    complex,intent(in)::c 
   r = d
   r%z = d%z + int(c)
  END FUNCTION 
END MODULE 
subroutine s1(k,cc)
use  m1
  TYPE(x) :: v(k),w(k)
  complex :: cc(k)
allocate(v(1)% z(1),source=1)
allocate(v(2)% z(1),source=1)
allocate(v(3)% z(1),source=1)
v(1)% z(1)=1
v(2)% z(1)=2
v(3)% z(1)=3
w= f(  v ,cc+cc)
if (w(1)%z(1)/=1 +2) print *,101
if (w(2)%z(1)/=2 +4) print *,102
if (w(3)%z(1)/=3 +6) print *,103
end
complex :: cc(3)=[(1,0),(2,0),(3,0)]
do k=1,100
call s1(3,cc)
end do
print *,'pass'
end
