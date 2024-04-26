PROGRAM MAIN
IMPLICIT NONE
call ss(5)

contains
subroutine ss(i5)
integer :: i5
character(len=i5), allocatable   :: ch(:),tch(:)
character(len=:), allocatable   :: ch2,tch2(:)
character(len=i5)   :: ch3(1)
integer :: ii
ch3='mold'
allocate(ch(2),ch2,tch(2),tch2(4),mold=ch3,stat=ii)
if(ii .eq. 0 )then
 if(len(ch)/=5) print*,301
 if(len(ch2)/=5) print*,302
 if(len(tch)/=5) print*,303
 if(len(tch2)/=5) print*,304
 if(size(ch)/=2) print*,305
 if(size(tch)/=2) print*,307
 if(size(tch2)/=4) print*,308
print*,'pass'
else
print*,101
ch='b'
ch2='b'
end if
end subroutine
END PROGRAM
