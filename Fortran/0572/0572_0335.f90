type xx
character(len=:),allocatable :: obj2(:,:)
character(len=:),allocatable :: obj3
end type xx
type xx2
type(xx)::objxx
end type xx2
type(xx) :: xx_obj
type(xx2) :: xx_obj2
allocate(character(len=5)::xx_obj%obj2(3,4))
allocate(character(len=7)::xx_obj%obj3)
allocate(character(len=7)::xx_obj2%objxx%obj3)
allocate(character(len=7)::xx_obj2%objxx%obj2(5,9))
call sub(xx_obj%obj2,xx_obj%obj3,xx_obj2%objxx%obj3, xx_obj2%objxx%obj2 )
contains
subroutine sub(dmy2,dmy3, dmy4, dmy5)
character(len=*)::dmy2(..)
character(len=*)::dmy3(..)
character(len=*)::dmy4(..)
character(len=1)::dmy5(..)

if(rank(dmy2).ne.2)print*,"103"
if(rank(dmy3).ne.0)print*,"104"
if(len(dmy2).ne.5)print*,"105"
if(len(dmy3).ne.7)print*,"106"
if(rank(dmy4).ne.0)print*,"104"
if(len(dmy4).ne.7)print*,"106"
if(rank(dmy5).ne.2)print*,"104"
if(len(dmy5).ne.1)print*,"108"
print*,"Pass"
end subroutine
end
