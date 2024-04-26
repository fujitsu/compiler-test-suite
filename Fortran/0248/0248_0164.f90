PROGRAM MAIN
IMPLICIT NONE
character , pointer :: obj(:)
character  :: obj2(2)
integer :: ii
obj2='m'
allocate(obj,mold=obj2,stat=ii)
if(ii .eq. 0 .AND. size(obj).eq. 2)then
print*,'pass'
end if
END PROGRAM
