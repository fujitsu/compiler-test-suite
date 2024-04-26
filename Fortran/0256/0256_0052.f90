type xx
character(len=:),allocatable :: obj2(:,:)
character(len=:),allocatable :: obj3(:)
end type xx
type xx2
type(xx)::objxx
end type xx2
type(xx) :: xx_obj
type(xx2) :: xx_obj2
allocate(character(len=5)::xx_obj%obj2(3,4))
allocate(character(len=7)::xx_obj%obj3(5))
allocate(character(len=7)::xx_obj2%objxx%obj3(5))
allocate(character(len=7)::xx_obj2%objxx%obj2(5,9))
xx_obj%obj3 = "sushil"
xx_obj2%objxx%obj3 = "sushil"

call sub(xx_obj%obj2,xx_obj%obj3(1:5:2),xx_obj2%objxx%obj3(1:5:1), xx_obj2%objxx%obj2 )
if(xx_obj%obj3(1).eq.'s')print*,101
if(xx_obj2%objxx%obj3(3).eq.'s')print*,101

contains
subroutine sub(dmy2,dmy3, dmy4, dmy5)
character(len=*),contiguous::dmy2(:,:)
character(len=*),contiguous::dmy3(:)
character(len=*),contiguous::dmy4(:)
character(len=1),contiguous::dmy5(:,:)
dmy3(1) = 'a'
dmy4(3) = 'a'
if(len(dmy2).ne.5)print*,"105"
if(len(dmy3).ne.7)print*,"106"
if(len(dmy4).ne.7)print*,"106"
if(len(dmy5).ne.1)print*,"108"
print*,"Pass"
end subroutine
end
