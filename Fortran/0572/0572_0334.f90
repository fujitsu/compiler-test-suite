type xx
character(len=:),allocatable :: obj2(:,:)
character(len=:),allocatable :: obj3
end type xx

type(xx) :: xx_obj
allocate(character(len=5)::xx_obj%obj2(3,4))
allocate(character(len=7)::xx_obj%obj3)
call sub(xx_obj%obj2,xx_obj%obj3)
contains
subroutine sub(dmy2,dmy3)
character(len=*)::dmy2(..)
character(len=*)::dmy3(..)

if(rank(dmy2).ne.2)print*,"103"
if(rank(dmy3).ne.0)print*,"104"
if(len(dmy2).ne.5)print*,"105"
if(len(dmy3).ne.7)print*,"106"
print*,"Pass"
end subroutine
end
