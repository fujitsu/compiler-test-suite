implicit none
character ,allocatable :: ii1(:),ii2(:)
character:: jj
character :: kk(2)
integer :: ll
jj='o'
kk='l'

associate(jj=>kk)
allocate(ii1,ii2,source=jj,stat=ll)
end associate

if(ll.ne.0)print*,101
if(size(ii1).ne.2)print*,102
if(size(ii2).ne.2)print*,103
if(any(ii1.ne.'l'))print*,104
if(any(ii2.ne.'l'))print*,105
if(lbound(ii1,1).ne.1)print*,106
if(ubound(ii1,1).ne.2)print*,107
if(lbound(ii2,1).ne.1)print*,108
if(ubound(ii2,1).ne.2)print*,109

deallocate(ii1,ii2)
ll=4
allocate(ii1(2),ii2(1:2),source=jj,stat=ll)
if(ll.ne.0)print*,201
if(size(ii1).ne.2)print*,202
if(size(ii2).ne.2)print*,203
if(any(ii1.ne.'o'))print*,204
if(any(ii2.ne.'o'))print*,205
if(lbound(ii1,1).ne.1)print*,206
if(ubound(ii1,1).ne.2)print*,207
if(lbound(ii2,1).ne.1)print*,208
if(ubound(ii2,1).ne.2)print*,209

print*,'pass'
end
