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
type vt
  TYPE(x) :: v(3)
end type
type wt
  TYPE(x) :: w(3)
end type
type gt
  TYPE(x) :: g(3)
end type
type (vt)::vv(n3)
type (wt)::ww(n3)
type (gt)::gg(n3)
type(x):: w(n3),g(n3)
allocate(vv(n3)%v(n2)% z(1),source=1)
ww(n3)%w=   vv(n3)%v 
if (allocated(ww(n3)%w(1)%z)) print *,201
if (ww(n3)%w(n2)%z(1)/=1 ) print *,101
if (allocated(ww(n3)%w(n3)%z)) print *,202
ww(n3)%w(n2:n3)=   vv(n3)%v(:n2) 
if (allocated(ww(n3)%w(1)%z)) print *,1201
if (allocated(ww(n3)%w(n2)%z)) print *,1201
if (ww(n3)%w(n3)%z(1)/=1 ) print *,1203
gg(n3)%g=   vv(n3)%v(n2) 
if (gg(n3)%g(1)%z(1)/=1 ) print *,2101
if (gg(n3)%g(n2)%z(1)/=1 ) print *,2101
if (gg(n3)%g(n3)%z(1)/=1 ) print *,2101
gg(n3)%g=   vv(n3)%v(1) 
if (allocated(gg(n3)%g(1)%z)) print *,3201
if (allocated(gg(n3)%g(n2)%z)) print *,3202
if (allocated(gg(n3)%g(n3)%z)) print *,3203
gg(n3)%g(n1:n3:n2)=   vv(n3)%v(n2) 
if (gg(n3)%g(1)%z(1)/=1 ) print *,4101
if (allocated(gg(n3)%g(n2)%z)) print *,4202
if (gg(n3)%g(n3)%z(1)/=1 ) print *,4103
ww(n3)%w=   vv(n3)%v(n3) 
if (allocated(ww(n3)%w(1)%z)) print *,3201
if (allocated(ww(n3)%w(n2)%z)) print *,3202
if (allocated(ww(n3)%w(n3)%z)) print *,3203
ww(n3)%w=   f(f(f(vv(n3)%v))) 
if (allocated(ww(n3)%w(1)%z)) print *,201
if (ww(n3)%w(n2)%z(1)/=1 ) print *,101
if (allocated(ww(n3)%w(n3)%z)) print *,202
ww(n3)%w(n2:n3)=   f(f(f(vv(n3)%v(:n2)) ))
if (allocated(ww(n3)%w(1)%z)) print *,12011
if (allocated(ww(n3)%w(n2)%z)) print *,12012
if (ww(n3)%w(n3)%z(1)/=1 ) print *,1203
gg(n3)%g=   vv(n3)%v(1) 
if (allocated(gg(n3)%g(1)%z)) print *,3201
if (allocated(gg(n3)%g(n2)%z)) print *,3202
if (allocated(gg(n3)%g(n3)%z)) print *,3203
gg(n3)%g=   f(f(f(vv(n3)%v(n2)) ))
if (gg(n3)%g(1)%z(1)/=1 ) print *,2101
if (gg(n3)%g(n2)%z(1)/=1 ) print *,2101
if (gg(n3)%g(n3)%z(1)/=1 ) print *,2101
gg(n3)%g=   vv(n3)%v(1) 
if (allocated(gg(n3)%g(1)%z)) print *,3201
if (allocated(gg(n3)%g(n2)%z)) print *,3202
if (allocated(gg(n3)%g(n3)%z)) print *,3203
gg(n3)%g(n1:n3:n2)=   f(vv(n3)%v(n2)) 
if (gg(n3)%g(1)%z(1)/=1 ) print *,4101
if (allocated(gg(n3)%g(n2)%z)) print *,3202
if (gg(n3)%g(n3)%z(1)/=1 ) print *,4103
vv(n3)%v=   vv(n3)%v 
if (allocated(vv(n3)%v(1)%z)) print *,5201
if (vv(n3)%v(n2)%z(1)/=1 ) print *,101
if (allocated(vv(n3)%v(n3)%z)) print *,6202
vv(n3)%v(n2:n3)=   vv(n3)%v(:n2) 
if (allocated(vv(n3)%v(1)%z)) print *,12013
if (allocated(vv(n3)%v(n2)%z)) print *,12014
if (vv(n3)%v(n3)%z(1)/=1 ) print *,1203
vv(n3)%v(n2)=vv(n3)%v(n3)
if (allocated(vv(n3)%v(1)%z)) print *,12015
if (vv(n3)%v(n2)%z(1)/=1 ) print *,1203
if (vv(n3)%v(n3)%z(1)/=1 ) print *,1203
vv(n3)%v(n3)=vv(n3)%v(1)
if (allocated(vv(n3)%v(1)%z)) print *,120111
if (vv(n3)%v(n2)%z(1)/=1 ) print *,1203
if (allocated(vv(n3)%v(n3)%z)) print *,120112
vv(n3)%v=   vv(n3)%v(n2) 
if (vv(n3)%v(1)%z(1)/=1 ) print *,2101
if (vv(n3)%v(n2)%z(1)/=1 ) print *,2101
if (vv(n3)%v(n3)%z(1)/=1 ) print *,2101
vv(n3)%v(n1:n3:n2)=   gg(n3)%g(n2) 
if (allocated(vv(n3)%v(1)%z)) print *,120113
if (vv(n3)%v(n2)%z(1)/=1 ) print *,1203
if (allocated(vv(n3)%v(n3)%z)) print *,120114
vv(n3)%v=   vv(n3)%v(n2) 
if (vv(n3)%v(1)%z(1)/=1 ) print *,2101
if (vv(n3)%v(n2)%z(1)/=1 ) print *,2101
if (vv(n3)%v(n3)%z(1)/=1 ) print *,2101
vv(n3)%v(n1:n3:n2)=   gg(n3)%g(n2) 
if (allocated(vv(n3)%v(1)%z)) print *,120115
if (vv(n3)%v(n2)%z(1)/=1 ) print *,1203
if (allocated(vv(n3)%v(n3)%z)) print *,120116
vv(n3)%v=   f(f(f(vv(n3)%v))) 
if (allocated(vv(n3)%v(1)%z)) print *,20117
if (vv(n3)%v(n2)%z(1)/=1 ) print *,101
if (allocated(vv(n3)%v(n3)%z)) print *,20218
vv(n3)%v(n2:n3)=   f(f(f(vv(n3)%v(:n2)))) 
if (allocated(vv(n3)%v(1)%z)) print *,120119
if (allocated(vv(n3)%v(n2)%z)) print *,120120
if (vv(n3)%v(n3)%z(1)/=1 ) print *,1203
vv(n3)%v(n2)=f(f(f(vv(n3)%v(n3))))
if (allocated(vv(n3)%v(1)%z)) print *,120121
if (vv(n3)%v(n2)%z(1)/=1 ) print *,1203
if (vv(n3)%v(n3)%z(1)/=1 ) print *,1203
vv(n3)%v(n3)=f(f(f(vv(n3)%v(1))))
if (allocated(vv(n3)%v(1)%z)) print *,120122
if (vv(n3)%v(n2)%z(1)/=1 ) print *,120323
if (allocated(vv(n3)%v(n3)%z)) print *,1201241
vv(n3)%v=   f(f(f(vv(n3)%v(n2)) ))
if (vv(n3)%v(1)%z(1)/=1 ) print *,2101
if (vv(n3)%v(n2)%z(1)/=1 ) print *,2101
if (vv(n3)%v(n3)%z(1)/=1 ) print *,2101
vv(n3)%v(n1:n3:n2)=   f(f(f(gg(n3)%g(n2)) ))
if (allocated(vv(n3)%v(1)%z)) print *,120125
if (vv(n3)%v(n2)%z(1)/=1 ) print *,1203
if (allocated(vv(n3)%v(n3)%z)) print *,120126
vv(n3)%v=   f(f(f(vv(n3)%v(n2) )))
if (vv(n3)%v(1)%z(1)/=1 ) print *,210127
if (vv(n3)%v(n2)%z(1)/=1 ) print *,210128
if (vv(n3)%v(n3)%z(1)/=1 ) print *,210129
end
do k=1,30
call s1(1,2,3)
end do
print *,'pass'
end
