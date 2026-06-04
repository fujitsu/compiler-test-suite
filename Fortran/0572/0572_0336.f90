type xx
character(len=:),allocatable :: obj2(:,:)
character(len=:),allocatable :: obj3
end type xx

type(xx) :: xx_obj
allocate(character(len=4)::xx_obj%obj2(3,4))
allocate(character(len=5)::xx_obj%obj3)
call sub(xx_obj%obj2,xx_obj%obj3, xx_obj%obj2(1,1))
contains
subroutine sub(dmy2,dmy3,dmy4)
character(len=*)::dmy2(..)
character(len=*)::dmy3(..)
character(len=*)::dmy4(..)
if(lbound(dmy2,1).ne.1)print*,"10001"
if(lbound(dmy2,2).ne.1)print*,"10002"
if(ubound(dmy2,1).ne.3)print*,"10003"
if(ubound(dmy2,2).ne.4)print*,"10004"
if(size(dmy2).ne.12)print*,"10006"
if(any(lbound(dmy3).ne.1))print*,"10005"
if(any(ubound(dmy3).ne.1))print*,"10006"
if(size(dmy3).ne.1)print*,"10006"
if(rank(dmy2).ne.2)print*,"103"
if(rank(dmy3).ne.0)print*,"104"
if(len(dmy2).ne.4)print*,"105"
if(len(dmy3).ne.5)print*,"106"
if(rank(dmy4).ne.0)print*,"107"
if(len(dmy4).ne.4)print*,"108"
print*,"Pass"
end subroutine
end
