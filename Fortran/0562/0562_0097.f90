module m1
type ty1
integer::ii
end type
type ty2
type(ty1)::obj1
end type
end module

program main
use m1
type,extends(ty2):: ty3
real::rr
end type
type ty4
type(ty1)::obj2
end type

type(ty2),target::tar1
class(ty3),allocatable,target::tar2
integer,target::tar3=3
class(ty4),allocatable,target::tar4(:)
type(ty3),target::tar5(4)
type(ty3)::k1
type(ty4)::k2(2:4)
k1%rr=0.0        
k1%obj1%ii=0    
k2%obj2%ii=0
allocate(tar4,source=k2)
allocate(tar2,source=k1)

tar3 = fun1(tar1,tar2,tar3,tar4(2),tar5(3))
if (tar3 /= 5)print*,104
tar3 = fun2(tar4,tar5(3),tar1,tar2)
if (size(k2)==3)print*,"Pass"
contains
integer function fun1(p1,p2,p3,p4,p5)
type(ty2),pointer,intent(in)::p1
class(ty3),pointer,intent(in)::p2
integer,pointer,intent(in)::p3
class(ty4),pointer,intent(in)::p4
type(ty3),pointer,intent(in)::p5
if (.NOT.associated(p1))print*,"error",101
if (.NOT.associated(p2))print*,"error",102
if (.NOT.associated(p4))print*,103
if (.NOT.associated(p5))print*,104
p1%obj1%ii=10
p5%rr=2.50
p5%obj1%ii=15
fun1=p3+2
end function
integer function fun2(ptr1,ptr2,ptr3,ptr4)
class(ty4),pointer,intent(in)::ptr1(:)
type(ty3),pointer,intent(in)::ptr2
type(ty2),pointer,intent(in)::ptr3
class(ty3),pointer,intent(in)::ptr4
if (.NOT.associated(ptr1))print*,105
if (.NOT.associated(ptr4))print*,106
if (ptr3%obj1%ii /=10)print*,107
if (ptr2%obj1%ii /=15)print*,108
if (ptr2%rr /=2.50)print*,109
if (size(ptr1,1)/=3 .or. lbound(ptr1,1)/=2 .or. ubound(ptr1,1)/=4)print*,110
fun2=7
end function
end 
