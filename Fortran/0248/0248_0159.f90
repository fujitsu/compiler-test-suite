character ,allocatable :: ii(:)
character:: jj
character :: kk(2)
integer :: ll
jj='o'
kk='l'

associate(jj=>kk)
allocate(ii,mold=jj,stat=ll)
end associate
if(ll .eq. 0 .AND. size(ii) .eq. 2 )then
print*,'pass'
else
ii='o'
print*,jj
print*,101
end if
end
