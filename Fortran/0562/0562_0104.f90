subroutine s1
type ty
integer::ii
end type

integer::jj
type(ty),target,allocatable::tar

allocate(ty::tar)
tar%ii=10
jj=fun(tar)
if(jj /= 10)print*,"104"

contains
integer function fun(dmy)
class(ty),pointer,intent(in)::dmy
if(.not.associated(dmy))print*,101
if(dmy%ii /=10)print*,102

select type(dmy)
    class is (ty)
        print*,"Pass"
    class default
        print*,"103"
end select

fun=10
end function
end subroutine

call s1
end
                
