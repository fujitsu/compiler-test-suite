type tt
character(len=10):: alc(20)
end type
type, EXTENDS(tt)::ty
integer::a
end type
type, EXTENDS(ty)::tz
integer::c
end type

type xx
class(tt),allocatable :: obj2(:,:)
class(ty),allocatable :: obj3(:,:)
end type xx

type(xx) :: xx_obj
allocate(tz::xx_obj%obj2(3,4))
allocate(ty::xx_obj%obj3(3,4))
select type (x => xx_obj%obj2)
    type is (tz)
    class default
        print*,"ERROR"
end select
call sub(xx_obj%obj2,xx_obj%obj2(1,1)%alc)
contains
subroutine sub(dmy2,dmy3)
class(tt)::dmy2(..)
character(len=*)::dmy3(..)
if(any(lbound(dmy2).ne.1))print*,"101"
if(ubound(dmy2,1).ne.3)print*,"102"
if(ubound(dmy2,2).ne.4)print*,"103"
if(rank(dmy2).ne.2)print*,"104"
if(.not.same_type_as(dmy2,xx_obj%obj2))print*,205
if(same_type_as(dmy2,xx_obj))print*,206
if(same_type_as(dmy2,xx_obj%obj3))print*,207
if(.not.extends_type_of(dmy2,xx_obj%obj3))print*,208
if(any(lbound(dmy3).ne.1))print*,"1011"
if(any(ubound(dmy3).ne.20))print*,"1012"
if(size(dmy3).ne.20)print*,"1013"
if(any(shape(dmy3).ne.20))print*,"1014"
print*,"Pass"
end subroutine
end
