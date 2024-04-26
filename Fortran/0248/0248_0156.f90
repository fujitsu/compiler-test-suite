PROGRAM MAIN
IMPLICIT NONE
character(len=5), pointer   :: ch
character(len=5) :: ch2
integer :: ii
allocate(ch,mold=ch2,stat=ii)
ch2='bold'
if(ii .eq. 0 )then
print*,'pass'
else
print*,101
end if
END PROGRAM MAIN
