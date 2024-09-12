PROGRAM MAIN
IMPLICIT NONE
character , pointer :: o1(:),o2(:)
character  :: obj2(2)
integer :: ii
obj2='m'
allocate(o1,o2,source=obj2,stat=ii)

if(any(o1.ne.'m'))print*,101
if(any(o2.ne.'m'))print*,102
if(size(o1).ne.2)print*,103
if(size(o2).ne.2)print*,104
if(len(o1).ne.1)print*,105
if(len(o2).ne.1)print*,106
if(lbound(o1,1).ne.1)print*,107
if(ubound(o1,1).ne.2)print*,108
if(lbound(o2,1).ne.1)print*,109
if(ubound(o2,1).ne.2)print*,110
if(ii.ne.0)print*,111
print*,'pass'
END PROGRAM
