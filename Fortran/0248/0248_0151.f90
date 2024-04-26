PROGRAM MAIN
IMPLICIT NONE
integer :: ii
integer :: kk
type ty
 integer :: jj
end type 

type(ty) :: obj(2,3)
class(*), pointer   :: ch(:,:)
ii=2
kk=4
obj%jj=4
allocate(ch,mold=obj,stat=ii)
select type(ch)
type is(ty)
  ch(1,1)%jj=0
  kk=ch(1,1)%jj
end select
if( ii .eq. 0 .AND. kk .eq. 0 ) then
print*,'pass'
else
print*,101
end if
END PROGRAM
