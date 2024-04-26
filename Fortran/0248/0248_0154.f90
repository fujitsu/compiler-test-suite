integer,pointer :: int01(:)
integer :: int03(1:3,1) = 1
integer :: ii
allocate(int01(1:3),mold=int03(1:3,1),stat=ii)
if(ii .eq. 0 )then
print*,'pass'
else
print*,'101'
end if
end
