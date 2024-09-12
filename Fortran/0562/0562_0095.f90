subroutine sub
type ty1
real::rr
end type

type ty2
complex::cc
end type

type,extends(ty2)::ty3
character(LEN=20)::ch
end type

class(ty1),allocatable,target::tar1(:)
class(ty3),allocatable,target::tar2(:)
type(ty1)::obj1(2:4)       
type(ty3)::obj2(3:4)      
integer::ii
obj1%rr =0.0
obj2%ch = "xxxx"
obj2%cc = (0,0)
allocate(tar1,source=obj1)
allocate(tar2,source=obj2)
ii=fun(tar1,tar2)
if (size(obj1) /= size(obj2)+1)print*,"err"
if (ii==10)print*,"Pass"
contains
integer function fun(p1,p2)
class(ty1),pointer,intent(in)::p1(:)
class(ty3),pointer,intent(in)::p2(:)
if(.NOT.associated(p1))print*,"error",101
if(.NOT.associated(p2))print*,"error",102
if (size(p1) /=3)print*,103
if (size(p2) /=2)print*,104
if (ubound(p1,1)/=4 .or. ubound(p2,1)/=4)print*,105
fun=10
end function
end subroutine

call sub
end
