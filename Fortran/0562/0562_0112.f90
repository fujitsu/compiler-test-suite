type ty
integer::ii
end type

type,EXTENDS(ty)::tt
integer::jj
end type

type(tt),allocatable::obj(:)
allocate(obj(10))
obj(2)%ii = 10
obj(4)%jj = 20
call sub(obj(2:8:2))
if(obj(6)%ii /=31)print*,"151"
contains
subroutine sub(tar)
class(ty),target::tar(:)
integer::jj
if(size(tar) /= 4)print*,"142"
if(tar(1)%ii /=10)print*,"143"
jj=fun(tar)
if (jj /= 10)print*,103
if(tar(3)%ii /=31)print*,"141"
print*,"Pass"
end subroutine
       
integer function fun(dmy)
class(ty),pointer,intent(in)::dmy(:)
if(.not.associated(dmy))print*,"Error",101
fun=10
select type(dmy)
type is(ty)
        print*,"121"
type is(tt)
        if(dmy(1)%ii /= 10)print*,"131"
        if(dmy(2)%jj /= 20)print*,"132"
        if(size(dmy) /= 4)print*,"133"
        dmy(3)%ii=31
class default
        print*,"122"
end select
end function
end
