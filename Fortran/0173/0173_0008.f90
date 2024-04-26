MODULE m1
  TYPE :: x
    integer,allocatable :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d , c , n, w) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
    real   ,intent(in)::c 
    integer,intent(in)::n 
    complex,intent(in)::w 
   r = d
   r%z = d%z + int(c) + n +w
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
v= f(  v ,real(cc+cc), k+K, cc(k)+cc(k))
if (v(1)%z(1)/=1 +2 +6 +6) print *,101
if (v(2)%z(1)/=2 +4 +6 +6) print *,102
if (v(3)%z(1)/=3 +6 +6 +6) print *,103
end
complex :: cc(3)=[(1,0),(2,0),(3,0)]
do k=1,1
call s1(3,cc)
end do
print *,'pass'
end
