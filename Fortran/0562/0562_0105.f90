subroutine s1
type ty
integer::ii
end type

type tt
character(len=:),allocatable::msg
type(ty),allocatable::tar(:)
end type

type(tt),target::objTT
allocate(character(len=10)::objTT%msg)
allocate(ty::objTT%tar(10))
        
objTT%tar(6)%ii=10
objTT%msg = "1234567890"

jj=fun(objTT%msg, objTT%tar(2:10:2))

if(jj /= 10)print*,"108"
if(objTT%msg /= "012345")print*,"109"

contains
integer function fun(dmy, obj)
character(len=:),pointer,intent(in)::dmy
class(ty),pointer,intent(in)::obj(:)

if(.not.associated(obj))print*,"101"
if(size(obj) /= 5)print*,"102"
if(obj(3)%ii /=10)print*,"103"
select type(obj)
    class is (ty)
        print*,"Pass"
    class default
        print*,"104"
end select

if(.not.associated(dmy))print*,"105"
if(len(dmy) /= 10)print*,"106"
if(dmy /= "1234567890")print*, "107"
dmy = "012345"
fun=10
end function
end subroutine

call s1
end    
