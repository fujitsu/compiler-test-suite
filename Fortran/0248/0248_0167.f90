PROGRAM MAIN
IMPLICIT NONE
character(len=4), allocatable   :: ch(:)
character(len=4) :: ch2(2)
integer :: ii
ch2='bold'
allocate(ch,mold=ch2,stat=ii)

if(ii .ne. 0)then
print*,101
else
print*,'pass'
end if
END PROGRAM
