type tt
integer:: alc(3)
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
xx_obj%obj2(1,2)%alc = 4
xx_obj%obj2(2,2)%alc = 5
xx_obj%obj2(3,3)%alc = 6
select type (x => xx_obj%obj2)
    type is (tz)
        x(3,3)%a = 6
    class default
        print*,"ERROR"
end select
call sub(xx_obj%obj2)
contains
subroutine sub(dmy2)
class(*)::dmy2(..)
if(any(lbound(dmy2).ne.1))print*,"101"
if(ubound(dmy2,1).ne.3)print*,"102"
if(ubound(dmy2,2).ne.4)print*,"103"
if(rank(dmy2).ne.2)print*,"104"
if(.not.same_type_as(dmy2,xx_obj%obj2))print*,205
if(same_type_as(dmy2,xx_obj))print*,206
if(same_type_as(dmy2,xx_obj%obj3))print*,207
if(.not.extends_type_of(dmy2,xx_obj%obj3))print*,208
print*,"Pass"
end subroutine
end
