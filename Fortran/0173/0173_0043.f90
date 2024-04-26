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
  TYPE(x) :: v(k,2),w(k,2)
  complex :: cc(k,2)
do n1=1,k
do n2=1,2
allocate(v(n1,n2)%z(1))
end do
end do
v(1,1)% z(1)=1
v(2,1)% z(1)=2
v(3,1)% z(1)=3
v(1,2)% z(1)=11
v(2,2)% z(1)=12
v(3,2)% z(1)=13
w= f(  v ,real(cc+cc), k+K, cc(k,1)+cc(k,1))
if (w(1,1)%z(1)/=1 +2 +6 +6) print *,101,w(1,1)%z(1)
if (w(2,1)%z(1)/=2 +4 +6 +6) print *,102
if (w(3,1)%z(1)/=3 +6 +6 +6) print *,103
if (w(1,2)%z(1)/=11 +2 +6 +6) print *,201,w(1,2)%z(1)
if (w(2,2)%z(1)/=12 +4 +6 +6) print *,202
if (w(3,2)%z(1)/=13 +6 +6 +6) print *,203
end
complex :: cc(3,2)
cc(:,1)=[(1,0),(2,0),(3,0)]
cc(:,2)=[(1,0),(2,0),(3,0)]
do k=1,100
call s1(3,cc)
end do
print *,'pass'
end
