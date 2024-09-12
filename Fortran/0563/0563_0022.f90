implicit none
integer ,allocatable :: ii1,ii2
integer :: jj
integer :: kk
integer :: ll
ll=4
jj=5
kk=6

associate(jj=>kk)
allocate(ii1,ii2,source=jj,stat=ll)
end associate
if(ll.ne.0)print*,101
if(ii1.ne.6)print*,102
if(ii2.ne.6)print*,103

deallocate(ii1,ii2)
ll=4
allocate(ii1,ii2,source=jj,stat=ll)
if(ll.ne.0)print*,104
if(ii1.ne.5)print*,105
if(ii2.ne.5)print*,106

print*,'pass'

end
