integer ,allocatable :: ii
integer :: jj
integer :: kk
integer :: ll
ll=4
jj=5
kk=6

associate(jj=>kk)
allocate(ii,mold=kk,stat=ll)
end associate
if(ll .eq. 0 )then
print*,'pass'
else
ii=2
print*,101
print*,jj
end if
end
