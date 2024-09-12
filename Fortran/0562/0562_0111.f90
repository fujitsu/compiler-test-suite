type ty
integer::ii
end type

type,EXTENDS(ty)::tt
integer::jj
end type

type(tt)::obj
obj%ii = 10
obj%jj = 20
call sub(obj)
contains
subroutine sub(tar)
class(ty),target::tar
integer::jj
jj=fun(tar)
if (jj /= 10)print*,103
if(tar%ii /=31)print*,"141"
print*,"Pass"
end subroutine
       
integer function fun(dmy)
class(ty),pointer,intent(in)::dmy
if(.not.associated(dmy))print*,"Error",101
fun=10
select type(dmy)
type is(ty)
        print*,"121"
type is(tt)
        if(dmy%ii /= 10)print*,"131"
        if(dmy%jj /= 20)print*,"132"
        dmy%ii=31
class default
        print*,"122"
end select
end function
end
