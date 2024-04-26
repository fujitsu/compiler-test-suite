MODULE m1
  TYPE :: x
    integer, ALLOCATABLE :: z(:)
  END TYPE
CONTAINS
  ELEMENTAL FUNCTION f( d ) RESULT( r )
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d
  END FUNCTION 
END MODULE 
subroutine s1(n1,n2,n3)
use  m1
  TYPE(x) :: v(n1+n2),w(n1+n2),g(n1+n2)
allocate(v(n3-n1)% z(n3-n2),source=1)
w=   v 
if (allocated(w(n3-n2)%z)) print *,201
if (w(n3-n1)%z(n3-n2)/=1 ) print *,101
if (allocated(w(n1+n2)%z)) print *,202
w(n2:n3)=   v(:n2) 
if (allocated(w(n3-n2)%z)) print *,1201
if (allocated(w(n3-n1)%z)) print *,1201
if (w(n1+n2)%z(n3-n2)/=1 ) print *,1203
g=   v(n3-n1) 
if (g(n3-n2)%z(1)/=1 ) print *,2101
if (g(n3-n1)%z(n3-n2)/=1 ) print *,2101
if (g(n1+n2)%z(n3-n2)/=1 ) print *,2101
g=   v(n3-n2) 
if (allocated(g(n3-n2)%z)) print *,3201
if (allocated(g(n3-n1)%z)) print *,3202
if (allocated(g(n1+n2)%z)) print *,3203
g(n1:n3:n2)=   v(n3-n1) 
if (g(n3-n2)%z(1)/=1 ) print *,4101
if (allocated(g(n3-n1)%z)) print *,4202
if (g(n1+n2)%z(n3-n2)/=1 ) print *,4103
w=   v(n1+n2) 
if (allocated(w(n3-n2)%z)) print *,3201
if (allocated(w(n3-n1)%z)) print *,3202
if (allocated(w(n1+n2)%z)) print *,3203
w=   f(v) 
if (allocated(w(n3-n2)%z)) print *,201
if (w(n3-n1)%z(n3-n2)/=1 ) print *,101
if (allocated(w(n1+n2)%z)) print *,202
w(n2:n3)=   f(v(:n2)) 
if (allocated(w(n3-n2)%z)) print *,12011
if (allocated(w(n3-n1)%z)) print *,12012
if (w(n1+n2)%z(n3-n2)/=1 ) print *,1203
g=   v(n3-n2) 
if (allocated(g(n3-n2)%z)) print *,3201
if (allocated(g(n3-n1)%z)) print *,3202
if (allocated(g(n1+n2)%z)) print *,3203
g=   f(v(n3-n1)) 
if (g(n3-n2)%z(1)/=1 ) print *,2101
if (g(n3-n1)%z(n3-n2)/=1 ) print *,2101
if (g(n1+n2)%z(n3-n2)/=1 ) print *,2101
g=   v(n3-n2) 
if (allocated(g(n3-n2)%z)) print *,3201
if (allocated(g(n3-n1)%z)) print *,3202
if (allocated(g(n1+n2)%z)) print *,3203
g(n1:n3:n2)=   f(v(n3-n1)) 
if (g(n3-n2)%z(1)/=1 ) print *,4101
if (allocated(g(n3-n1)%z)) print *,3202
if (g(n1+n2)%z(n3-n2)/=1 ) print *,4103
v=   v 
if (allocated(v(n3-n2)%z)) print *,5201
if (v(n3-n1)%z(n3-n2)/=1 ) print *,101
if (allocated(v(n1+n2)%z)) print *,6202
v(n2:n3)=   v(:n2) 
if (allocated(v(n3-n2)%z)) print *,12013
if (allocated(v(n3-n1)%z)) print *,12014
if (v(n1+n2)%z(n3-n2)/=1 ) print *,1203
v(n3-n1)=v(n1+n2)
if (allocated(v(n3-n2)%z)) print *,12015
if (v(n3-n1)%z(n3-n2)/=1 ) print *,1203
if (v(n1+n2)%z(n3-n2)/=1 ) print *,1203
v(n1+n2)=v(n3-n2)
if (allocated(v(n3-n2)%z)) print *,120111
if (v(n3-n1)%z(n3-n2)/=1 ) print *,1203
if (allocated(v(n1+n2)%z)) print *,120112
v=   v(n3-n1) 
if (v(n3-n2)%z(1)/=1 ) print *,2101
if (v(n3-n1)%z(n3-n2)/=1 ) print *,2101
if (v(n1+n2)%z(n3-n2)/=1 ) print *,2101
v(n1:n3:n2)=   g(n3-n1) 
if (allocated(v(n3-n2)%z)) print *,120113
if (v(n3-n1)%z(n3-n2)/=1 ) print *,1203
if (allocated(v(n1+n2)%z)) print *,120114
v=   v(n3-n1) 
if (v(n3-n2)%z(1)/=1 ) print *,2101
if (v(n3-n1)%z(n3-n2)/=1 ) print *,2101
if (v(n1+n2)%z(n3-n2)/=1 ) print *,2101
v(n1:n3:n2)=   g(n3-n1) 
if (allocated(v(n3-n2)%z)) print *,120115
if (v(n3-n1)%z(n3-n2)/=1 ) print *,1203
if (allocated(v(n1+n2)%z)) print *,120116
v=   f(v) 
if (allocated(v(n3-n2)%z)) print *,20117
if (v(n3-n1)%z(n3-n2)/=1 ) print *,101
if (allocated(v(n1+n2)%z)) print *,20218
v(n2:n3)=   f(v(:n2)) 
if (allocated(v(n3-n2)%z)) print *,120119
if (allocated(v(n3-n1)%z)) print *,120120
if (v(n1+n2)%z(n3-n2)/=1 ) print *,1203
v(n3-n1)=f(v(n1+n2))
if (allocated(v(n3-n2)%z)) print *,120121
if (v(n3-n1)%z(n3-n2)/=1 ) print *,1203
if (v(n1+n2)%z(n3-n2)/=1 ) print *,1203
v(n1+n2)=f(v(n3-n2))
if (allocated(v(n3-n2)%z)) print *,120122
if (v(n3-n1)%z(n3-n2)/=1 ) print *,120323
if (allocated(v(n1+n2)%z)) print *,1201241
v=   f(v(n3-n1)) 
if (v(n3-n2)%z(1)/=1 ) print *,2101
if (v(n3-n1)%z(n3-n2)/=1 ) print *,2101
if (v(n1+n2)%z(n3-n2)/=1 ) print *,2101
v(n1:n3:n2)=   f(g(n3-n1)) 
if (allocated(v(n3-n2)%z)) print *,120125
if (v(n3-n1)%z(n3-n2)/=1 ) print *,1203
if (allocated(v(n1+n2)%z)) print *,120126
v=   f(v(n3-n1) )
if (v(n3-n2)%z(1)/=1 ) print *,210127
if (v(n3-n1)%z(n3-n2)/=1 ) print *,210128
if (v(n1+n2)%z(n3-n2)/=1 ) print *,210129
end
do k=1,30
call s1(1,2,3)
end do
print *,'pass'
end
