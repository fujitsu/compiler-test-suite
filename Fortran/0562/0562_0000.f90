module m1
character(LEN=:),allocatable,target::var1(:)
type ty1
real::var2
end type
type,extends(ty1)::ty2
integer,pointer::ptr1
end type
end module

program main
use m1

type(ty2),target::obj1(3:5)
type(ty1),allocatable::obj2(:)
integer,target::tar1=7
allocate(obj2(2:6))
allocate(character(LEN=8)::var1(2:6))        
var1="compiler"
obj2= ty1(0.0)
obj1=ty2(1.0,tar1)   
call sub(obj1(3),obj2,var1(3:5),tar1,obj1(4)%ptr1)
print*,"Pass"
contains
subroutine sub(d1,d2,d3,d4,d5)
type(ty2),pointer,intent(in)::d1
type(ty1),target::d2(:)
character(LEN=:),pointer,intent(in)::d3(:)
integer,pointer,intent(in)::d4
integer,pointer,intent(in)::d5
if (.not.associated(d1))print*,101
if (.not.associated(d3))print*,102
if (.not.associated(d4))print*,103
if (.not.associated(d5))print*,104
if (d1%var2/=1.0)print*,105
if (LEN(d3)/=8)print*,106
if (lbound(d3,1)/=1 .or.ubound(d3,1)/=3)print*,107
if (lbound(d2,1)/=1 .or. ubound(d2,1)/=5)print*,108,lbound(d2,1),ubound(d2,1)
if (.not.associated(d5))print*,109
if (size(d3)/=3)print*,110
end subroutine
end
