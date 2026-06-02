type tt
character(len=:),pointer:: alc(:)
end type

type, EXTENDS(tt)::ty
character(len=:),pointer:: alc2(:)
end type
type, EXTENDS(ty)::tz
integer::c
end type
class(tt),pointer :: obj2(:,:)
allocate(tz::obj2(3,4))
allocate(character(len=7)::obj2(3,4)%alc(10))
select type (obj2)
    type is (tz)
        print*, "PASS"
    class default
        print*,"ERROR"
end select
call sub(obj2,obj2(3,4)%alc(3:7))
contains
subroutine sub(dmy1,dmy2)
class(tt)::dmy1(..)
character(len=*)::dmy2(..)
if(any(lbound(dmy1).ne.1))print*,"101"
if(ubound(dmy1,1).ne.3)print*,"102"
if(ubound(dmy1,2).ne.4)print*,"102"
if(rank(dmy1).ne.2)print*,"103"
if(any(lbound(dmy2).ne.1))print*,"1011",lbound(dmy2)
if(any(ubound(dmy2).ne.5))print*,"1021",ubound(dmy2)
if(.not.same_type_as(dmy1, obj2))print*,205
end subroutine
end
