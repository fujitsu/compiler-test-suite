PROGRAM MAIN
IMPLICIT NONE
character(len=5), allocatable   :: ch1(:,:),ch2(:,:)
character(len=5) :: ch3(2,3)
integer :: ii
ch3='bold'
allocate(ch1,ch2,source=ch3,stat=ii)

if(ii.ne.0)print*,101
if(any(ch1.ne.'bold'))print*,102
if(any(ch2.ne.'bold'))print*,103
if(len(ch1).ne.5)print*,104
if(len(ch2).ne.5)print*,105
if(size(ch1).ne.6)print*,106
if(size(ch2).ne.6)print*,107
if(lbound(ch1,1).ne.1)print*,108
if(ubound(ch1,1).ne.2)print*,109
if(lbound(ch2,1).ne.1)print*,110
if(ubound(ch2,1).ne.2)print*,111
if(lbound(ch1,2).ne.1)print*,112
if(ubound(ch1,2).ne.3)print*,113
if(lbound(ch2,2).ne.1)print*,114
if(ubound(ch2,2).ne.3)print*,115

print*,'pass'
END PROGRAM
