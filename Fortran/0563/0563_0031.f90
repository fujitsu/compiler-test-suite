PROGRAM MAIN
implicit none
integer ,allocatable :: ii(:,:)
integer ,allocatable :: jj
integer ,pointer :: kk
integer  :: s
allocate(ii(1,2),jj,kk,source=1,stat=s)
if( s .ne. 0)print*,101
if(any(ii.ne.1))print*,102
if(jj.ne.1)print*,103
if(kk.ne.1)print*,104
if(lbound(ii,1) .ne. 1)print*,105
if(ubound(ii,1) .ne. 1)print*,106
if(lbound(ii,2) .ne. 1)print*,107
if(ubound(ii,2) .ne. 2)print*,108
print*,'pass'
END PROGRAM
