PROGRAM MAIN
IMPLICIT NONE
character(len=5), pointer   :: c1,c2
character(len=5) :: ch2
integer :: ii
ch2='bold'

allocate(c1,c2,source=ch2,stat=ii)
if(c1.ne.'bold')print*,101
if(c2.ne.'bold')print*,102
if(len(c1).ne.5)print*,103
if(len(c2).ne.5)print*,104
if(ii.ne.0)print*,105
print*,'pass'
END PROGRAM
