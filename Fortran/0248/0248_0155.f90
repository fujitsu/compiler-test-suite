PROGRAM MAIN
IMPLICIT NONE
character(len=5), allocatable   :: ch(:,:)
character(len=5) :: ch2(2,3)
integer :: ii
ch2='bold'
allocate(ch,mold=ch2,stat=ii)
if(ii .eq. 0 .AND. size(ch) .eq. 6)then
print*,'pass'
else
print*,101
ch='b'
end if
END PROGRAM MAIN
