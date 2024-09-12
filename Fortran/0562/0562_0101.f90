subroutine s1
type ty1
complex::cc
end type
type ty2
type(ty1)::obj
end type
type,extends(ty1)::ty3
real::rr
end type
type(ty2)::o1(3)
class(*),allocatable,target::t1(:,:)
class(*),allocatable,target::t2
class(*),allocatable,target::t3(:)
o1%obj%cc=(0,0)
allocate(ty3::t1(2,3))  
allocate(integer::t2)
allocate(t3,source=o1)
call s2(t1,t2,t3)
print*,"Pass"
contains
subroutine s2(p1,p2,p3)
class(*),pointer,intent(in)::p1(:,:)
class(*),pointer,intent(in)::p2
class(*),pointer,intent(in)::p3(:)
if(.NOT.associated(p1))print*,101
if(.NOT.associated(p2))print*,102
if(.NOT.associated(p3))print*,103
if (size(p1)/=6 .or. ubound(p1,1)/=2 .or. ubound(p1,2)/=3)print*,105
if (size(p3)/=3 .or. ubound(p3,1)/=3)print*,106
select type(p1)
        type is (ty1)
        print*,"ty1"
        type is (ty2)
        print*,"ty2"
        type is (ty3)
        print*,"Pass"
        class DEFAULT
        print*,"error",104
end select
end subroutine
end subroutine

call s1
end
