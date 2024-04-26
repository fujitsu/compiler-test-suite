PROGRAM MAIN
IMPLICIT NONE
call ss()

contains
subroutine ss()
character(len=5), allocatable   :: ch(:),tch(:)
character(len=5), allocatable   :: ch2(:)
character(len=:), allocatable   :: tch2(:)
character(len=5)   :: ch3(1)
integer :: ii
ch3='mold'
allocate(ch,ch2,tch,tch2,mold=ch3,stat=ii)
if(ii .eq. 0 )then
 if(len(ch)/=5) print*,301
 if(len(ch2)/=5) print*,302
 if(len(tch)/=5) print*,303
 if(len(tch2)/=5) print*,304
 if(size(ch)/=1) print*,305
 if(size(ch2)/=1) print*,306
 if(size(tch)/=1) print*,307
 if(size(tch2)/=1) print*,308
print*,'pass'
else
print*,101,ii
ch='b'
ch2='b'
end if
end subroutine
END PROGRAM
