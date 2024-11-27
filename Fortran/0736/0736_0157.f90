module m1
 type x
   integer ::x1
   integer,pointer::x2(:)
   integer ::x3
 end type
 type y
   integer ::y1
   integer,allocatable::y2(:)
   integer ::y3
 end type
end
use m1
integer,pointer,dimension(:)::v1
type (x) :: v2
integer,allocatable,dimension(:)::v3
type (y) :: v4
type (x) :: v5(2)
type (y) :: v6(2)
integer,target::t1(6),t2(5),t3(4),t4(3),t5(2),t6(1)
t1=(/1,2,3,4,5,6/)
t2=(/11,12,13,14,15/)
t3=(/21,22,23,24/)
t4=(/31,32,33/)
t5=(/41,42/)
t6=(/51/)
allocate(v1(-8:-3),v2%x2(-7:-3),v3(-6:-3),v4%y2(-5:-3),v5(2)%x2(-4:-3),v6(2)%y2(-3:-3))
v1= t1
v2%x2=t2
v3=t3
v4%y2=t4
v5(2)%x2=t5
v6(2)%y2=t6
if (any(t1/=(/1,2,3,4,5,6/)))write(6,*) "NG"
if (any(t2/=(/11,12,13,14,15/)))write(6,*) "NG"
if (any(t3/=(/21,22,23,24/)))write(6,*) "NG"
if (any(t4/=(/31,32,33/)))write(6,*) "NG"
if (any(t5/=(/41,42/)))write(6,*) "NG"
if (any(t6/=(/51/)))write(6,*) "NG"
if (any(v1/=(/1,2,3,4,5,6/)))write(6,*) "NG"
if (any(v2%x2/=(/11,12,13,14,15/)))write(6,*) "NG"
if (any(v3/=(/21,22,23,24/)))write(6,*) "NG"
if (any(v4%y2/=(/31,32,33/)))write(6,*) "NG"
if (any(v5(2)%x2/=(/41,42/)))write(6,*) "NG"
if (any(v6(2)%y2/=(/51/)))write(6,*) "NG"
print *,'pass'
end
