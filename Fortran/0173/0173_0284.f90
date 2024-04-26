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
subroutine s1
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
type (vt)::vv(3)
type (wt)::ww(3)
type (gt)::gg(3)
type(x):: w(3),g(3)
allocate(vv(3)%v(2)% z(1),source=1)
ww(3)%w=   vv(3)%v 
if (allocated(ww(3)%w(1)%z)) print *,201
if (ww(3)%w(2)%z(1)/=1 ) print *,101
if (allocated(ww(3)%w(3)%z)) print *,202
ww(3)%w(2:3)=   vv(3)%v(:2) 
if (allocated(ww(3)%w(1)%z)) print *,1201
if (allocated(ww(3)%w(2)%z)) print *,1201
if (ww(3)%w(3)%z(1)/=1 ) print *,1203
gg(3)%g=   vv(3)%v(2) 
if (gg(3)%g(1)%z(1)/=1 ) print *,2101
if (gg(3)%g(2)%z(1)/=1 ) print *,2101
if (gg(3)%g(3)%z(1)/=1 ) print *,2101
gg(3)%g=   vv(3)%v(1) 
if (allocated(gg(3)%g(1)%z)) print *,3201
if (allocated(gg(3)%g(2)%z)) print *,3202
if (allocated(gg(3)%g(3)%z)) print *,3203
gg(3)%g(1:3:2)=   vv(3)%v(2) 
if (gg(3)%g(1)%z(1)/=1 ) print *,4101
if (allocated(gg(3)%g(2)%z)) print *,4202
if (gg(3)%g(3)%z(1)/=1 ) print *,4103
ww(3)%w=   vv(3)%v(3) 
if (allocated(ww(3)%w(1)%z)) print *,3201
if (allocated(ww(3)%w(2)%z)) print *,3202
if (allocated(ww(3)%w(3)%z)) print *,3203
ww(3)%w=   f(vv(3)%v) 
if (allocated(ww(3)%w(1)%z)) print *,201
if (ww(3)%w(2)%z(1)/=1 ) print *,101
if (allocated(ww(3)%w(3)%z)) print *,202
ww(3)%w(2:3)=   f(vv(3)%v(:2)) 
if (allocated(ww(3)%w(1)%z)) print *,12011
if (allocated(ww(3)%w(2)%z)) print *,12012
if (ww(3)%w(3)%z(1)/=1 ) print *,1203
gg(3)%g=   vv(3)%v(1) 
if (allocated(gg(3)%g(1)%z)) print *,3201
if (allocated(gg(3)%g(2)%z)) print *,3202
if (allocated(gg(3)%g(3)%z)) print *,3203
gg(3)%g=   f(vv(3)%v(2)) 
if (gg(3)%g(1)%z(1)/=1 ) print *,2101
if (gg(3)%g(2)%z(1)/=1 ) print *,2101
if (gg(3)%g(3)%z(1)/=1 ) print *,2101
gg(3)%g=   vv(3)%v(1) 
if (allocated(gg(3)%g(1)%z)) print *,3201
if (allocated(gg(3)%g(2)%z)) print *,3202
if (allocated(gg(3)%g(3)%z)) print *,3203
gg(3)%g(1:3:2)=   f(vv(3)%v(2)) 
if (gg(3)%g(1)%z(1)/=1 ) print *,4101
if (allocated(gg(3)%g(2)%z)) print *,3202
if (gg(3)%g(3)%z(1)/=1 ) print *,4103
vv(3)%v=   vv(3)%v 
if (allocated(vv(3)%v(1)%z)) print *,5201
if (vv(3)%v(2)%z(1)/=1 ) print *,101
if (allocated(vv(3)%v(3)%z)) print *,6202
vv(3)%v(2:3)=   vv(3)%v(:2) 
if (allocated(vv(3)%v(1)%z)) print *,12013
if (allocated(vv(3)%v(2)%z)) print *,12014
if (vv(3)%v(3)%z(1)/=1 ) print *,1203
vv(3)%v(2)=vv(3)%v(3)
if (allocated(vv(3)%v(1)%z)) print *,12015
if (vv(3)%v(2)%z(1)/=1 ) print *,1203
if (vv(3)%v(3)%z(1)/=1 ) print *,1203
vv(3)%v(3)=vv(3)%v(1)
if (allocated(vv(3)%v(1)%z)) print *,120111
if (vv(3)%v(2)%z(1)/=1 ) print *,1203
if (allocated(vv(3)%v(3)%z)) print *,120112
vv(3)%v=   vv(3)%v(2) 
if (vv(3)%v(1)%z(1)/=1 ) print *,2101
if (vv(3)%v(2)%z(1)/=1 ) print *,2101
if (vv(3)%v(3)%z(1)/=1 ) print *,2101
vv(3)%v(1:3:2)=   gg(3)%g(2) 
if (allocated(vv(3)%v(1)%z)) print *,120113
if (vv(3)%v(2)%z(1)/=1 ) print *,1203
if (allocated(vv(3)%v(3)%z)) print *,120114
vv(3)%v=   vv(3)%v(2) 
if (vv(3)%v(1)%z(1)/=1 ) print *,2101
if (vv(3)%v(2)%z(1)/=1 ) print *,2101
if (vv(3)%v(3)%z(1)/=1 ) print *,2101
vv(3)%v(1:3:2)=   gg(3)%g(2) 
if (allocated(vv(3)%v(1)%z)) print *,120115
if (vv(3)%v(2)%z(1)/=1 ) print *,1203
if (allocated(vv(3)%v(3)%z)) print *,120116
vv(3)%v=   f(vv(3)%v) 
if (allocated(vv(3)%v(1)%z)) print *,20117
if (vv(3)%v(2)%z(1)/=1 ) print *,101
if (allocated(vv(3)%v(3)%z)) print *,20218
vv(3)%v(2:3)=   f(vv(3)%v(:2)) 
if (allocated(vv(3)%v(1)%z)) print *,120119
if (allocated(vv(3)%v(2)%z)) print *,120120
if (vv(3)%v(3)%z(1)/=1 ) print *,1203
vv(3)%v(2)=f(vv(3)%v(3))
if (allocated(vv(3)%v(1)%z)) print *,120121
if (vv(3)%v(2)%z(1)/=1 ) print *,1203
if (vv(3)%v(3)%z(1)/=1 ) print *,1203
vv(3)%v(3)=f(vv(3)%v(1))
if (allocated(vv(3)%v(1)%z)) print *,120122
if (vv(3)%v(2)%z(1)/=1 ) print *,120323
if (allocated(vv(3)%v(3)%z)) print *,1201241
vv(3)%v=   f(vv(3)%v(2)) 
if (vv(3)%v(1)%z(1)/=1 ) print *,2101
if (vv(3)%v(2)%z(1)/=1 ) print *,2101
if (vv(3)%v(3)%z(1)/=1 ) print *,2101
vv(3)%v(1:3:2)=   f(gg(3)%g(2)) 
if (allocated(vv(3)%v(1)%z)) print *,120125
if (vv(3)%v(2)%z(1)/=1 ) print *,1203
if (allocated(vv(3)%v(3)%z)) print *,120126
vv(3)%v=   f(vv(3)%v(2) )
if (vv(3)%v(1)%z(1)/=1 ) print *,210127
if (vv(3)%v(2)%z(1)/=1 ) print *,210128
if (vv(3)%v(3)%z(1)/=1 ) print *,210129
end
do k=1,30
call s1
end do
print *,'pass'
end
