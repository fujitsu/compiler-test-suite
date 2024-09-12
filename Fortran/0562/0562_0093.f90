subroutine sub
type ty1
integer::ii
end type
type,extends(ty1)::ty2
real::rr
end type
type(ty2)::obj
class(ty2),target,allocatable::tar1
obj%rr=0.0
obj%ii=0
allocate(tar1,source=obj)
if (fun(obj,tar1) /= 10)print*,"error"
if (obj%ii /= 25 .and. tar1%ii /=3.50)print*,102
contains
integer function fun(dmy1,dmy2)
class(ty1)::dmy1
class(ty2),pointer,intent(in)::dmy2
if (.NOT.associated(dmy2))print*,101
dmy1%ii=25
dmy2%rr=3.50
select type(dmy2)
class is(ty2)
        print*,"Pass"
class default
        print*,"Error"
end select
fun=10
end function
end subroutine

call sub
end
