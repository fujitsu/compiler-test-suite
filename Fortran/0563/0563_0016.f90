PROGRAM MAIN
IMPLICIT NONE
integer ,allocatable :: ii(:)
integer,allocatable  :: jj
integer  :: kk
integer  :: ll
kk=3
allocate( ii(2),jj,source=kk,stat=ll)

if(ll.ne.0)print*,101
if(size(ii).ne.2)print*,102
if(any(ii.ne.3))print*,103
if(jj.ne.3 )print*,104
if(lbound(ii,1).ne.1)print*,105
if(ubound(ii,1).ne.2)print*,106

print*,'pass'
END PROGRAM
