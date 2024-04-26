MODULE m1
  TYPE :: x
    real   ,allocatable :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d , c , n, w,z) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
    real   ,intent(in)::c 
    integer,intent(in)::n 
    complex,intent(in)::w 
    complex,intent(in)::z 
   r = d
   r%z = d%z + int(c) + n +w +z
  END FUNCTION 
END MODULE 
subroutine s1(k,cc,z)
use  m1
  TYPE(x) :: v(k,2),w(k,2)
  complex :: cc(k,2),z(k,2)
call ss(v,w,cc,z)
contains
subroutine  ss(v,w,cc,z)
  TYPE(x) :: v(:,:),w(:,:)
  complex :: cc(:,:),z(:,:)
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
w= f(  v ,real(cc+cc), k+K, cc(k,1)+cc(k,1), cos(z))
if (abs(w(1,1)%z(1)-(1 +2 +6 +6 +real(cos(z(1,1)))))>0.001 ) print *,101
if (abs(w(2,1)%z(1)-(2 +4 +6 +6 +real(cos(z(2,1)))))>0.001 )print *,102
if (abs(w(3,1)%z(1)-(3 +6 +6 +6 +real(cos(z(3,1))) ))>0.001 )print *,103
if (abs(w(1,2)%z(1)-(11 +22 +6 +6 +real(cos(z(1,2))) ))>0.001 )then
 print *,abs(w(1,2)%z(1)-(11 +2 +6 +6 +real(cos(z(1,2))) ))
endif
if (abs(w(1,2)%z(1)-(11 +22 +6 +6 +real(cos(z(1,2))) ))>0.001 )print *,201
if (abs(w(2,2)%z(1)-(12 +24 +6 +6 +real(cos(z(2,2))) ))>0.001 )print *,202
if (abs(w(3,2)%z(1)-(13 +26 +6 +6 +real(cos(z(3,2))) ))>0.001 )print *,203
end subroutine
end
complex :: cc(6)=[(1,0),(2,0),(3,0),(11,0),(12,0),(13,0)]
complex :: z(6)=[(0.1,0.1),(0.2,0.2),(0.3,0.3),(.11,0.11),(0.12,0.12),(0.13,0.13)]
do k=1,100
call s1(3,cc,z)
end do
print *,'pass'
end
