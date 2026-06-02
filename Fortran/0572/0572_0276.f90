type tt
integer:: alc(3)
end type
type, EXTENDS(tt)::ty
integer::a
end type
type, EXTENDS(ty)::tz
integer::c
end type
class(tt),allocatable :: obj2(:,:)
allocate(tz::obj2(3,4))
obj2(1,2)%alc = 4
obj2(2,2)%alc = 5
obj2(3,3)%alc = 6
select type (obj2)
    type is (tz)
        obj2(3,3)%a = 6
        print*, "PASS"
    class default
        print*,"ERROR"
end select
call sub(obj2)
contains
subroutine sub(dmy2)
type(*)::dmy2(..)
if(any(lbound(dmy2).ne.1))print*,"101"
if(ubound(dmy2,1).ne.3)print*,"102"
if(ubound(dmy2,2).ne.4)print*,"102"
if(rank(dmy2).ne.2)print*,"103"
end subroutine
end
