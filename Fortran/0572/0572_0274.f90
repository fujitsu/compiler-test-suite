type tt
integer,pointer:: alc(:)
end type

type, EXTENDS(tt)::ty
integer::a
end type
type, EXTENDS(ty)::tz
integer::c
end type

class(tt),pointer :: obj2(:,:)

allocate(tz::obj2(3,4))
allocate(obj2(1,1)%alc(5))

obj2(1,1)%alc = 4

select type (obj2)
    type is (tz)
        obj2(1,1)%a = 6
        print*, "PASS"
    class default
        print*,"ERROR"
end select
call sub(obj2,obj2(1,1)%alc)
contains
subroutine sub(dmy1,dmy2)
integer::dmy2(..)
type(*)::dmy1(..)
if(any(lbound(dmy2).ne.1))print*,"1001"
if(any(ubound(dmy2).ne.5))print*,"1001"
if(any(lbound(dmy1).ne.1))print*,"101"
if(ubound(dmy1,1).ne.3)print*,"102"
if(ubound(dmy1,2).ne.4)print*,"102"
if(rank(dmy1).ne.2)print*,"103"
end subroutine
end
