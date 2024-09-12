module m1
type ty1
real::rr
end type
type ty2
type(ty1)::obj1
end type
type,extends(ty2)::ty3
character(20)::ch
end type
end module


program main
use m1
interface
integer function fun(ptr1,ptr2,ptr3)
import ty1,ty2,ty3
class(*),pointer,intent(in)::ptr1
class(*),pointer,intent(in)::ptr2(:)
class(*),pointer,intent(in)::ptr3(:,:)     
end function
end interface

class(*),allocatable,target::t1
class(*),allocatable,target::t2(:)
class(*),allocatable,target::t3(:,:)
type(ty3)::o1(3,4)
integer::ii
allocate(t3,mold=o1)
allocate(t1,source=t3(2,2))
allocate(complex::t2(4))
call sub(t1,t2,t3)
ii =fun(t1,t2,t3)
if (ii/=10)print*,"error"
contains
subroutine sub(p1,p2,p3)
class(*),pointer,intent(in)::p1
class(*),pointer,intent(in)::p2(:)
class(*),pointer,intent(in)::p3(:,:)
if (.not.associated(p1))print*,"error",101
if (.not.associated(p2))print*,"error",102
if (.NOT.associated(p3))print*,"error",103
if (size(p3) /= 12)print*,104
if (lbound(p3,1)/=1 .or. lbound(p3,2)/=1)print*,105
if (ubound(p3,1)/=3 .or. ubound(p3,2)/=4)print*,106
end subroutine
end
integer function fun(ptr1,ptr2,ptr3)
use m1
class(*),pointer,intent(in)::ptr1
class(*),pointer,intent(in)::ptr2(:)
class(*),pointer,intent(in)::ptr3(:,:)     
if (.NOT.associated(ptr1))print*,107        
if (.NOT.associated(ptr2))print*,108
if (size(ptr2)/=4 .or. ubound(ptr2,1)/=4)print*,109
if (ubound(ptr3,1)/=3 .or. ubound(ptr3,2)/=4)print*,110
select type(ptr2)
        type is (ty1)
        print*,"ty1"
        type is (ty2)
        print*,"ty2"
        type is (ty3)
        print*,"ty3"
        type is (complex)
        print*,"Pass"
        class default
        print*,"error",111
end select
if (size(ptr2) /= 4)print*,112
fun=10
end function
