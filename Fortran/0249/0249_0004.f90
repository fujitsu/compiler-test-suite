PROGRAM MAIN
IMPLICIT NONE
call ss(5)

contains
subroutine ss(i5)
integer :: i5
character(len=i5), allocatable   :: ch(:)
character(len=i5), allocatable   :: ch2(:)
character(len=i5)   :: ch3(1)
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
end subroutine
END PROGRAM
