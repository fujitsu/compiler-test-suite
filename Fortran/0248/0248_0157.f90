PROGRAM MAIN
IMPLICIT NONE
character(len=5), allocatable   :: ch(:)
character(len=5), allocatable   :: ch2(:)
character(len=5)   :: ch3(1)
integer :: ii
ch3='mold'
allocate(ch(2),ch2,mold=ch3,stat=ii)
if(ii .eq. 0 .AND. size(ch2) .eq. 1)then
print*,'pass'
else
print*,101
ch='b'
ch2='b'
end if
END PROGRAM MAIN
