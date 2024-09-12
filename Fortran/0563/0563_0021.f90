PROGRAM MAIN
IMPLICIT NONE
character(len=5), allocatable   :: ch1(:)
character(len=5), allocatable   :: ch2(:)
character(len=5)   :: ch3(2)
integer :: ii
ch3='src'

allocate(ch1(2),ch2,source=ch3,stat=ii)

if(ii.ne.0)print*,101
if(size(ch1).ne.2)print*,102
if(size(ch2).ne.2)print*,103
if(any(ch1.ne."src"))print*,104
if(any(ch2.ne."src"))print*,105
if(lbound(ch1,1).ne.1)print*,106
if(ubound(ch1,1).ne.2)print*,107
if(lbound(ch2,1).ne.1)print*,108
if(ubound(ch2,1).ne.2)print*,109
print*,'pass'
END PROGRAM
